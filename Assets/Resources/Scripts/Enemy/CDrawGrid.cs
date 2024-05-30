using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class Node
{
    #region public 변수
    public Vector3 v3Position;

    public bool isWalkable;
    #endregion

    public Node(Vector3 position, bool isWalkable)
    {
        this.v3Position = position;
        this.isWalkable = isWalkable;
    }
}

public class CDrawGrid : MonoBehaviour
{
    #region public 변수
    public Transform tfPlayer;
    public LayerMask lmStaticMesh;
    public Vector2 v2GridSize;

    public float fNodeRadius;
    public float[] fEnemyRadius;
    public int nShowGridNumber;
    #endregion

    #region private 변수
    [SerializeField]
    List<Node[,]> gridList;

    float fNodeDiameter;
    int nGridSizeX;
    int nGridSizeY;
    #endregion

    void Start()
    {
        tfPlayer = FindObjectOfType<CCharacter>().GetComponent<Transform>();
        gridList = new List<Node[,]>();

        fNodeDiameter = fNodeRadius * 2;

        nGridSizeX = Mathf.RoundToInt(v2GridSize.x / fNodeDiameter);
        nGridSizeY = Mathf.RoundToInt(v2GridSize.y / fNodeDiameter);

        for (int i = 0; i < fEnemyRadius.Length; i++)
        {
            DrawGrid(i);
        }
    }

    void OnDrawGizmos()
    {
        Gizmos.DrawWireCube(transform.position, new Vector3(v2GridSize.x, 1.0f, v2GridSize.y));

        if (gridList != null)
        {
            Node playerNode = NodeFromWorldPoint(tfPlayer.position);

            foreach (Node node in gridList[nShowGridNumber])
            {
                if (node.isWalkable)
                {
                    Gizmos.color = Color.white;
                }

                else
                {
                    Gizmos.color = Color.red;
                }

                if (playerNode == node)
                {
                    Gizmos.color = Color.cyan;
                }

                Gizmos.DrawCube(node.v3Position, Vector3.one * (fNodeDiameter - 0.1f));
            }
        }
    }

    void DrawGrid(int nEnemyIndex)
    {
        Node[,] grid = new Node[nGridSizeX, nGridSizeY];

        Vector3 v3BottomLeft = transform.position - new Vector3(v2GridSize.x / 2, 0.0f, v2GridSize.y / 2);

        for (int x = 0; x < nGridSizeX; x++)
        {
            for (int y = 0; y < nGridSizeY; y++)
            {
                Vector3 v3DrawPosition = v3BottomLeft + new Vector3(x * fNodeDiameter + fNodeRadius, 0.0f, y * fNodeDiameter + fNodeRadius);

                if (Physics.CheckCapsule(v3DrawPosition, v3DrawPosition + Vector3.up * 3.0f, fEnemyRadius[nEnemyIndex], lmStaticMesh))
                {
                    grid[x, y] = new Node(v3DrawPosition, false);
                }

                else
                {
                    grid[x, y] = new Node(v3DrawPosition, true);
                }
            }
        }

        gridList.Add(grid);
    }

    public Node NodeFromWorldPoint(Vector3 worldPosition)
    {
        float percentX = (worldPosition.x + v2GridSize.x / 2) / v2GridSize.x;
        float percentY = (worldPosition.z + v2GridSize.y / 2) / v2GridSize.y;

        percentX = Mathf.Clamp01(percentX);
        percentY = Mathf.Clamp01(percentY);

        int x = Mathf.RoundToInt((nGridSizeX - 1) * percentX);
        int y = Mathf.RoundToInt((nGridSizeY - 1) * percentY);

        return gridList[0][x, y];
    }
}
