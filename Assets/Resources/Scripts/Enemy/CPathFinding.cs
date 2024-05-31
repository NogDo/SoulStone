using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;

public class CPathFinding : MonoBehaviour
{
    #region public 변수
    #endregion

    #region private 변수
    public CDrawGrid grid;
    CPathRequestManager requestManager;
    #endregion

    void Awake()
    {
        //grid = GetComponent<CDrawGrid>();
        requestManager = GetComponent<CPathRequestManager>();
    }

    /// <summary>
    /// 노드와 노드의 사이의 경로를 지정
    /// </summary>
    /// <param name="startPosition">시작 지점</param>
    /// <param name="targetPosition">목표 지점</param>
    IEnumerator PathFinding(Vector3 startPosition, Vector3 targetPosition)
    {
        Stopwatch sw = new Stopwatch();
        sw.Start();

        Vector3[] wayPoint = new Vector3[0];
        bool pathSuccess = false;

        // 시작 노드와 목표 노드의 위치를 구함
        Node startNode = grid.NodeFromWorldPoint(startPosition);
        Node targetNode = grid.NodeFromWorldPoint(targetPosition);

        if (startNode.isWalkable && targetNode.isWalkable)
        {
            // 최소힙 생성
            CHeap<Node> openSet = new CHeap<Node>(grid.nMaxSize);
            // 이미 검사를 마친 노드를 모으는 해시셋
            HashSet<Node> closeSet = new HashSet<Node>();

            openSet.Add(startNode);

            while (openSet.Count > 0)
            {
                Node currentNode = openSet.RemoveFirst();
                closeSet.Add(currentNode);

                // 목표 지점 도착
                if (currentNode == targetNode)
                {
                    sw.Stop();
                    print("PathFinding : " + sw.ElapsedMilliseconds);

                    pathSuccess = true;
                    break;
                }

                // 현재 노드와 인접한 노드를 검사
                foreach (Node neighbour in grid.GetNeighbours(currentNode))
                {
                    // 갈수 없는 노드거나 이미 검사한 노드라면 건너뛴다
                    if (!neighbour.isWalkable || closeSet.Contains(neighbour))
                    {
                        continue;
                    }

                    // 이웃 노드로 이동하는 비용 (현재 노드의 gCost + 이웃 노드로 이동할 때 필요한 비용 10 또는 14)
                    int nMovementCostToNeighbour = currentNode.gCost + GetDistance(currentNode, neighbour);

                    if (nMovementCostToNeighbour < neighbour.gCost || !openSet.Contains(neighbour))
                    {
                        // 이웃 노드의 비용을 갱신한다.
                        neighbour.gCost = nMovementCostToNeighbour;
                        neighbour.hCost = GetDistance(neighbour, targetNode);
                        neighbour.parent = currentNode;

                        // 최소힙에 이웃노드가 없다면 추가
                        if (!openSet.Contains(neighbour))
                        {
                            openSet.Add(neighbour);
                        }
                    }
                }
            }
        }

        yield return null;

        if (pathSuccess)
        {
            wayPoint = RetracePath(startNode, targetNode);
        }

        requestManager.FinishedProcessingPath(wayPoint, pathSuccess);
    }

    /// <summary>
    /// 노드와 노드 사이의 비용(이동 거리)을 구한다.
    /// </summary>
    /// <param name="startNode">시작 노드</param>
    /// <param name="endNode">끝 노드</param>
    /// <returns></returns>
    int GetDistance(Node startNode, Node endNode)
    {
        int distanceX = Mathf.Abs(startNode.gridX - endNode.gridX);
        int distanceY = Mathf.Abs(startNode.gridY - endNode.gridY);

        // 노드와 노드 사이의 직선 거리를 10이라 했을 때 대각선 거리는 약 14(10 x 루트2)
        if (distanceX > distanceY)
        {
            return 14 * distanceY + 10 * (distanceX - distanceY);
        }

        else
        {
            return 14 * distanceX + 10 * (distanceY - distanceX);
        }
    }

    /// <summary>
    /// 끝 노드부터 시작 노드까지의 길을 설정
    /// </summary>
    /// <param name="startNode">시작 노드</param>
    /// <param name="endNode">끝 노드</param>
    Vector3[] RetracePath(Node startNode, Node endNode)
    {
        List<Node> path = new List<Node>();

        Node currentNode = endNode;

        while (currentNode != startNode)
        {
            path.Add(currentNode);
            currentNode = currentNode.parent;
        }

        Vector3[] wayPoint = SimplifyPath(path);
        Array.Reverse(wayPoint);

        return wayPoint;
    }

    Vector3[] SimplifyPath(List<Node> path)
    {
        List<Vector3> wayPointList = new List<Vector3>();

        Vector2 directionOld = Vector2.zero;

        for (int i = 1; i < path.Count; i++)
        {
            Vector2 directionNew = new Vector2(path[i - 1].gridX - path[i].gridX, path[i - 1].gridY - path[i].gridY);

            if (directionNew != directionOld)
            {
                wayPointList.Add(path[i].v3Position);
            }

            directionOld = directionNew;
        }

        return wayPointList.ToArray();
    }


    public void StartFindPath(Vector3 startPosition, Vector3 targetPosition)
    {
        StartCoroutine(PathFinding(startPosition, targetPosition));
    }
}
