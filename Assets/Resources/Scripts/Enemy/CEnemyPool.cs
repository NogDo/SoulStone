using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyPool : MonoBehaviour
{
    #region private ����
    CEnemyFactory enemyFactory;

    Queue<GameObject> oBasicEnemyPool;
    Queue<GameObject> oEliteEnemyPool;

    int nBasicEnemyCount;
    int nEliteEnemyCount;
    #endregion

    void Start()
    {
        enemyFactory = GetComponent<CEnemyFactory>();

        nBasicEnemyCount = 3;
        nEliteEnemyCount = 5;

        oBasicEnemyPool = new Queue<GameObject>();
        oEliteEnemyPool = new Queue<GameObject>();

        for (int i = 0; i < nBasicEnemyCount; i++)
        {
            oBasicEnemyPool.Enqueue(enemyFactory.CreateEnemy(EEnemy.GOBLIN));
        }

        for (int i = 0; i < nEliteEnemyCount; i++)
        {
            oEliteEnemyPool.Enqueue(enemyFactory.CreateEnemy(EEnemy.GOBLIN_SHAMAN));
        }
    }

    /// <summary>
    /// ����� �⺻ ���� �ٽ� �⺻ �� Ǯ�� ��ȯ
    /// </summary>
    /// <param name="oEnemy">����� ��</param>
    public void BackBasicEnemyPool(GameObject oEnemy)
    {
        oBasicEnemyPool.Enqueue(oEnemy);
    }

    /// <summary>
    /// ����� ����Ʈ ���� �ٽ� ����Ʈ �� Ǯ�� ��ȯ
    /// </summary>
    /// <param name="oEnemy">����Ʈ ��</param>
    public void BackEliteEnemyPool(GameObject oEnemy)
    {
        oEliteEnemyPool.Enqueue(oEnemy);
    }

    /// <summary>
    /// �⺻ �� ��ȯ
    /// </summary>
    public void SpawnBasicEnemy()
    {
        if (oBasicEnemyPool.Count != 0)
        {
            oBasicEnemyPool.Dequeue().SetActive(true);
        }

        else
        {
            enemyFactory.CreateEnemy(EEnemy.GOBLIN);
            oBasicEnemyPool.Dequeue().SetActive(true);
        }
    }

    /// <summary>
    /// ����Ʈ �� ��ȯ
    /// </summary>
    public void SpawnEliteEnemy()
    {
        if (oEliteEnemyPool.Count != 0)
        {
            oEliteEnemyPool.Dequeue().SetActive(true);
        }

        else
        {
            enemyFactory.CreateEnemy(EEnemy.GOBLIN_SHAMAN);
            oEliteEnemyPool.Dequeue().SetActive(true);
        }
    }
}
