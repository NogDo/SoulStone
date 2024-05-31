using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 길 찾기를 위한 노드
/// </summary>
public class Node : IHeapItem<Node>
{
    #region public 변수
    public Node parent;

    public Vector3 v3Position;

    public bool isWalkable;

    public int gridX;
    public int gridY;
    public int gCost;
    public int hCost;
    #endregion

    #region private 변수
    int nHeapIndex;
    #endregion

    public Node(Vector3 position, bool isWalkable, int gridX, int gridY)
    {
        this.v3Position = position;
        this.isWalkable = isWalkable;
        this.gridX = gridX;
        this.gridY = gridY;
    }

    /// <summary>
    /// 인접 노드와의 거리 + 타겟과의 거리를 합친 비용
    /// </summary>
    public int fCost
    {
        get
        {
            return gCost + hCost;
        }
    }

    /// <summary>
    /// 힙 인덱스 값
    /// </summary>
    public int HeapIndex 
    { 
        get
        {
            return nHeapIndex;
        }

        set
        {
            nHeapIndex = value;
        }
    }

    /// <summary>
    /// 노드 비용 비교, 비용이 낮을수록 루트 노드와 가까움 (최소 힙)
    /// </summary>
    /// <param name="node">비교 대상 노드</param>
    /// <returns></returns>
    public int CompareTo(Node node)
    {
        int compare = fCost.CompareTo(node.fCost);

        if (compare == 0)
        {
            compare = hCost.CompareTo(node.hCost);
        }

        return -compare;
    }
}

public class CDrawGrid : MonoBehaviour
{
    #region public 변수
    public LayerMask lmStaticMesh;
    public Vector2 v2GridSize;
    public EEnemy eEnemy;

    public float fNodeRadius;
    public float[] fEnemyRadius;
    public int nShowGridNumber;
    public int nMaxSize;
    #endregion

    #region private 변수
    Dictionary<EEnemy, Node[,]> enemyGridDictionary;

    float fNodeDiameter;
    int nGridSizeX;
    int nGridSizeY;
    #endregion

    void Awake()
    {
        enemyGridDictionary = new Dictionary<EEnemy, Node[,]>();

        fNodeDiameter = fNodeRadius * 2;

        nGridSizeX = Mathf.RoundToInt(v2GridSize.x / fNodeDiameter);
        nGridSizeY = Mathf.RoundToInt(v2GridSize.y / fNodeDiameter);
        nMaxSize = nGridSizeX * nGridSizeY;

        for (int i = 0; i < fEnemyRadius.Length; i++)
        {
            DrawGrid((EEnemy)i);
        }
    }

    void OnDrawGizmos()
    {
        Gizmos.DrawWireCube(transform.position, new Vector3(v2GridSize.x, 1.0f, v2GridSize.y));

        if (enemyGridDictionary != null)
        {

            foreach (Node node in enemyGridDictionary[eEnemy])
            {
                if (node.isWalkable)
                {
                    Gizmos.color = Color.white;
                }

                else
                {
                    Gizmos.color = Color.red;
                }

                Gizmos.DrawCube(node.v3Position, Vector3.one * (fNodeDiameter - 0.1f));
            }
        }
    }

    /// <summary>
    /// 적 종류에 따른 그리드를 그린다.
    /// </summary>
    /// <param name="enemy">적 종류</param>
    void DrawGrid(EEnemy enemy)
    {
        Node[,] grid = new Node[nGridSizeX, nGridSizeY];

        Vector3 v3BottomLeft = transform.position - new Vector3(v2GridSize.x / 2, 0.0f, v2GridSize.y / 2);

        for (int x = 0; x < nGridSizeX; x++)
        {
            for (int y = 0; y < nGridSizeY; y++)
            {
                Vector3 v3DrawPosition = v3BottomLeft + new Vector3(x * fNodeDiameter + fNodeRadius, 0.0f, y * fNodeDiameter + fNodeRadius);

                // 적의 크기에 따라 갈 수 있는지 없는지 판단
                if (Physics.CheckCapsule(v3DrawPosition, v3DrawPosition + Vector3.up * 3.0f, fEnemyRadius[(int)enemy], lmStaticMesh))
                {
                    grid[x, y] = new Node(v3DrawPosition, false, x, y);
                }

                else
                {
                    grid[x, y] = new Node(v3DrawPosition, true, x, y);
                }
            }
        }

        enemyGridDictionary.Add(enemy, grid);
    }

    /// <summary>
    /// 월드 좌표에 해당하는 노드를 반환한다.
    /// </summary>
    /// <param name="worldPosition">월드 좌표</param>
    /// <returns></returns>
    public Node NodeFromWorldPoint(Vector3 worldPosition)
    {
        // 그리드에 위치하는 백분율을 구한다.
        float percentX = (worldPosition.x + v2GridSize.x / 2) / v2GridSize.x;
        float percentY = (worldPosition.z + v2GridSize.y / 2) / v2GridSize.y;

        percentX = Mathf.Clamp01(percentX);
        percentY = Mathf.Clamp01(percentY);

        int x = Mathf.RoundToInt((nGridSizeX - 1) * percentX);
        int y = Mathf.RoundToInt((nGridSizeY - 1) * percentY);

        return enemyGridDictionary[eEnemy][x, y];
    }

    /// <summary>
    /// 인접 노드들을 반환한다.
    /// </summary>
    /// <param name="node">기준 노드</param>
    /// <returns></returns>
    public List<Node> GetNeighbours(Node node)
    {
        List<Node> neighbours = new List<Node>();

        // 상 하 좌 우 대각선 모두 살펴본다.
        for (int x = -1; x <= 1; x++)
        {
            for (int y = -1; y <= 1; y++)
            {
                // 본인 제외
                if (x == 0 && y == 0)
                {
                    continue;
                }

                int checkX = node.gridX + x;
                int checkY = node.gridY + y;

                if (checkX >= 0 && checkX < nGridSizeX && checkY >= 0 && checkY < nGridSizeY)
                {
                    neighbours.Add(enemyGridDictionary[eEnemy][checkX, checkY]);
                }
            }
        }

        return neighbours;
    }
}
