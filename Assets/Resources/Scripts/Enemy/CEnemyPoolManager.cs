using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyPoolManager : MonoBehaviour
{
    #region private 변수
    CEnemyPool enemyPool;

    IEnumerator spawnEnemy;

    float fSpawnTime;
    #endregion

    void Start()
    {
        enemyPool = FindObjectOfType<CEnemyPool>();

        spawnEnemy = SpawnEnemy();
        StartCoroutine(spawnEnemy);

        fSpawnTime = 1.0f;
    }

    /// <summary>
    /// 적 소환
    /// </summary>
    /// <returns></returns>
    IEnumerator SpawnEnemy()
    {
        while (true)
        {
            if (Time.timeSinceLevelLoad >= 30.0f)
            {
                fSpawnTime = 0.5f;
            }

            yield return new WaitForSeconds(fSpawnTime);

            enemyPool.SpawnBasicEnemy();
        }
    }
}
