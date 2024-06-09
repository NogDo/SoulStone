using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyPoolManager : MonoBehaviour
{
    #region private ����
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
    /// �� ��ȯ
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
