using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyPoolManager : MonoBehaviour
{
    #region private ����
    CEnemyPool enemyPool;

    IEnumerator spawnEnemy;

    int nCount;
    #endregion

    void Start()
    {
        enemyPool = FindObjectOfType<CEnemyPool>();

        nCount = 1;

        spawnEnemy = SpawnEnemy();
        StartCoroutine(spawnEnemy);
    }

    /// <summary>
    /// �� ��ȯ
    /// </summary>
    /// <returns></returns>
    IEnumerator SpawnEnemy()
    {
        while (true)
        {
            yield return new WaitForSeconds(0.5f);

            if (nCount % 5 == 0)
            {
                enemyPool.SpawnEliteEnemy();
                nCount = 1;
            }

            else
            {
                enemyPool.SpawnBasicEnemy();
                nCount++;
            }
        }
    }
}