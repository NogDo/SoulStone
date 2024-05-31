using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// �� ã�⸦ ���� ���
/// </summary>
public class Node : IHeapItem<Node>
{
    #region public ����
    public Node parent;

    public Vector3 v3Position;

    public bool isWalkable;

    public int gridX;
    public int gridY;
    public int gCost;
    public int hCost;
    #endregion

    #region private ����
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
    /// ���� ������ �Ÿ� + Ÿ�ٰ��� �Ÿ��� ��ģ ���
    /// </summary>
    public int fCost
    {
        get
        {
            return gCost + hCost;
        }
    }

    /// <summary>
    /// �� �ε��� ��
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
    /// ��� ��� ��, ����� �������� ��Ʈ ���� ����� (�ּ� ��)
    /// </summary>
    /// <param name="node">�� ��� ���</param>
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
    #region public ����
    public LayerMask lmStaticMesh;
    public Vector2 v2GridSize;
    public EEnemy eEnemy;

    public float fNodeRadius;
    public float[] fEnemyRadius;
    public int nShowGridNumber;
    public int nMaxSize;
    #endregion

    #region private ����
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
    /// �� ������ ���� �׸��带 �׸���.
    /// </summary>
    /// <param name="enemy">�� ����</param>
    void DrawGrid(EEnemy enemy)
    {
        Node[,] grid = new Node[nGridSizeX, nGridSizeY];

        Vector3 v3BottomLeft = transform.position - new Vector3(v2GridSize.x / 2, 0.0f, v2GridSize.y / 2);

        for (int x = 0; x < nGridSizeX; x++)
        {
            for (int y = 0; y < nGridSizeY; y++)
            {
                Vector3 v3DrawPosition = v3BottomLeft + new Vector3(x * fNodeDiameter + fNodeRadius, 0.0f, y * fNodeDiameter + fNodeRadius);

                // ���� ũ�⿡ ���� �� �� �ִ��� ������ �Ǵ�
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
    /// ���� ��ǥ�� �ش��ϴ� ��带 ��ȯ�Ѵ�.
    /// </summary>
    /// <param name="worldPosition">���� ��ǥ</param>
    /// <returns></returns>
    public Node NodeFromWorldPoint(Vector3 worldPosition)
    {
        // �׸��忡 ��ġ�ϴ� ������� ���Ѵ�.
        float percentX = (worldPosition.x + v2GridSize.x / 2) / v2GridSize.x;
        float percentY = (worldPosition.z + v2GridSize.y / 2) / v2GridSize.y;

        percentX = Mathf.Clamp01(percentX);
        percentY = Mathf.Clamp01(percentY);

        int x = Mathf.RoundToInt((nGridSizeX - 1) * percentX);
        int y = Mathf.RoundToInt((nGridSizeY - 1) * percentY);

        return enemyGridDictionary[eEnemy][x, y];
    }

    /// <summary>
    /// ���� ������ ��ȯ�Ѵ�.
    /// </summary>
    /// <param name="node">���� ���</param>
    /// <returns></returns>
    public List<Node> GetNeighbours(Node node)
    {
        List<Node> neighbours = new List<Node>();

        // �� �� �� �� �밢�� ��� ���캻��.
        for (int x = -1; x <= 1; x++)
        {
            for (int y = -1; y <= 1; y++)
            {
                // ���� ����
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
