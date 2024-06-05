using System.Collections.Generic;
using UnityEngine;

public class CEnemyXpGemPool : MonoBehaviour
{
    #region private 변수
    [SerializeField]
    List<GameObject> oXpGemPrefabList;
    Queue<GameObject> oXpGemPool;
    #endregion

    void Start()
    {
        oXpGemPool = new Queue<GameObject>();

        for (int i = 0; i < 100; i++)
        {
            int randNum = Random.Range(0, oXpGemPrefabList.Count);
            GameObject oGem = Instantiate(oXpGemPrefabList[randNum], transform);
            oGem.SetActive(false);
        }
    }

    /// <summary>
    /// XpGem을 소환한다.
    /// </summary>
    /// <param name="xp">적 경험치</param>
    public void SpawnXpGem(float xp, Vector3 spawnPosition)
    {
        GameObject oGem;

        if (oXpGemPool.Count != 0)
        {
            oGem = oXpGemPool.Dequeue();
            oGem.SetActive(true);
        }

        else
        {
            int randNum = Random.Range(0, oXpGemPrefabList.Count);
            oGem = Instantiate(oXpGemPrefabList[randNum], transform);
        }

        oGem.GetComponent<CEnemyXpGem>().Spawn(xp, spawnPosition);
    }

    /// <summary>
    /// 사용한 젬을 다시 풀로 반환
    /// </summary>
    /// <param name="oGem">젬</param>
    public void BackToPool(GameObject oGem)
    {
        oXpGemPool.Enqueue(oGem);
    }
}
