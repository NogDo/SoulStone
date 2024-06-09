using System.Collections.Generic;
using UnityEngine;

public class CEnemyXpGemPool : MonoBehaviour
{
    #region private ����
    [SerializeField]
    List<GameObject> oXpGemPrefabList;
    Queue<GameObject> oXpGemPool;
    #endregion

    void Start()
    {
        oXpGemPool = new Queue<GameObject>();

        for (int i = 0; i < 10; i++)
        {
            int randNum = Random.Range(0, oXpGemPrefabList.Count);
            GameObject oGem = Instantiate(oXpGemPrefabList[randNum], transform);
            oGem.SetActive(false);
        }
    }

    /// <summary>
    /// XpGem�� ��ȯ�Ѵ�.
    /// </summary>
    /// <param name="xp">�� ����ġ</param>
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
    /// ����� ���� �ٽ� Ǯ�� ��ȯ
    /// </summary>
    /// <param name="oGem">��</param>
    public void BackToPool(GameObject oGem)
    {
        oXpGemPool.Enqueue(oGem);
    }
}
