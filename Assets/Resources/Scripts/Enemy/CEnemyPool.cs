using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyPool : MonoBehaviour
{
    #region private 변수
    CEnemyFactory enemyFactory;

    Queue<GameObject> oBasicEnemyPool;
    Queue<GameObject> oEliteEnemyPool;

    int nBasicEnemyCount;
    int nEliteEnemyCount;
    #endregion

    void Start()
    {
        enemyFactory = GetComponent<CEnemyFactory>();

        nBasicEnemyCount = 5;
        nEliteEnemyCount = 0;

        oBasicEnemyPool = new Queue<GameObject>();
        oEliteEnemyPool = new Queue<GameObject>();

        for (int i = 0; i < nBasicEnemyCount; i++)
        {
            enemyFactory.CreateEnemy(EEnemy.GOBLIN);
        }

        for (int i = 0; i < nEliteEnemyCount; i++)
        {
            enemyFactory.CreateEnemy(EEnemy.GOBLIN_SHAMAN);
        }
    }

    /// <summary>
    /// 사용한 기본 적을 다시 기본 적 풀에 반환
    /// </summary>
    /// <param name="oEnemy">사용한 기본 적</param>
    public void BackBasicEnemyPool(GameObject oEnemy)
    {
        oBasicEnemyPool.Enqueue(oEnemy);
    }

    /// <summary>
    /// 사용한 엘리트 적을 다시 엘리트 적 풀에 반환
    /// </summary>
    /// <param name="oEnemy">사용한 엘리트 적</param>
    public void BackEliteEnemyPool(GameObject oEnemy)
    {
        oEliteEnemyPool.Enqueue(oEnemy);
    }

    /// <summary>
    /// 기본 적 소환
    /// </summary>
    public void SpawnBasicEnemy()
    {
        if (oBasicEnemyPool.Count != 0)
        {
            oBasicEnemyPool.Dequeue().transform.GetChild(0).gameObject.SetActive(true);
        }

        else
        {
            enemyFactory.CreateEnemy(EEnemy.GOBLIN);
            oBasicEnemyPool.Dequeue().transform.GetChild(0).gameObject.SetActive(true);
        }
    }

    /// <summary>
    /// 엘리트 적 소환
    /// </summary>
    public void SpawnEliteEnemy()
    {
        if (oEliteEnemyPool.Count != 0)
        {
            oEliteEnemyPool.Dequeue().transform.GetChild(0).gameObject.SetActive(true);
        }

        else
        {
            enemyFactory.CreateEnemy(EEnemy.GOBLIN_SHAMAN);
            oEliteEnemyPool.Dequeue().transform.GetChild(0).gameObject.SetActive(true);
        }
    }
}
