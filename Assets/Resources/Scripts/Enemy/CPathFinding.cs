using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using UnityEngine;

public class CPathFinding : MonoBehaviour
{
    #region public ����
    #endregion

    #region private ����
    public CDrawGrid grid;
    CPathRequestManager requestManager;
    #endregion

    void Awake()
    {
        //grid = GetComponent<CDrawGrid>();
        requestManager = GetComponent<CPathRequestManager>();
    }

    /// <summary>
    /// ���� ����� ������ ��θ� ����
    /// </summary>
    /// <param name="startPosition">���� ����</param>
    /// <param name="targetPosition">��ǥ ����</param>
    IEnumerator PathFinding(Vector3 startPosition, Vector3 targetPosition)
    {
        Stopwatch sw = new Stopwatch();
        sw.Start();

        Vector3[] wayPoint = new Vector3[0];
        bool pathSuccess = false;

        // ���� ���� ��ǥ ����� ��ġ�� ����
        Node startNode = grid.NodeFromWorldPoint(startPosition);
        Node targetNode = grid.NodeFromWorldPoint(targetPosition);

        if (startNode.isWalkable && targetNode.isWalkable)
        {
            // �ּ��� ����
            CHeap<Node> openSet = new CHeap<Node>(grid.nMaxSize);
            // �̹� �˻縦 ��ģ ��带 ������ �ؽü�
            HashSet<Node> closeSet = new HashSet<Node>();

            openSet.Add(startNode);

            while (openSet.Count > 0)
            {
                Node currentNode = openSet.RemoveFirst();
                closeSet.Add(currentNode);

                // ��ǥ ���� ����
                if (currentNode == targetNode)
                {
                    sw.Stop();
                    print("PathFinding : " + sw.ElapsedMilliseconds);

                    pathSuccess = true;
                    break;
                }

                // ���� ���� ������ ��带 �˻�
                foreach (Node neighbour in grid.GetNeighbours(currentNode))
                {
                    // ���� ���� ���ų� �̹� �˻��� ����� �ǳʶڴ�
                    if (!neighbour.isWalkable || closeSet.Contains(neighbour))
                    {
                        continue;
                    }

                    // �̿� ���� �̵��ϴ� ��� (���� ����� gCost + �̿� ���� �̵��� �� �ʿ��� ��� 10 �Ǵ� 14)
                    int nMovementCostToNeighbour = currentNode.gCost + GetDistance(currentNode, neighbour);

                    if (nMovementCostToNeighbour < neighbour.gCost || !openSet.Contains(neighbour))
                    {
                        // �̿� ����� ����� �����Ѵ�.
                        neighbour.gCost = nMovementCostToNeighbour;
                        neighbour.hCost = GetDistance(neighbour, targetNode);
                        neighbour.parent = currentNode;

                        // �ּ����� �̿���尡 ���ٸ� �߰�
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
    /// ���� ��� ������ ���(�̵� �Ÿ�)�� ���Ѵ�.
    /// </summary>
    /// <param name="startNode">���� ���</param>
    /// <param name="endNode">�� ���</param>
    /// <returns></returns>
    int GetDistance(Node startNode, Node endNode)
    {
        int distanceX = Mathf.Abs(startNode.gridX - endNode.gridX);
        int distanceY = Mathf.Abs(startNode.gridY - endNode.gridY);

        // ���� ��� ������ ���� �Ÿ��� 10�̶� ���� �� �밢�� �Ÿ��� �� 14(10 x ��Ʈ2)
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
    /// �� ������ ���� �������� ���� ����
    /// </summary>
    /// <param name="startNode">���� ���</param>
    /// <param name="endNode">�� ���</param>
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
