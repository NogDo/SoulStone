using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum EEnemy
{
    GOBLIN,
    GOBLIN_SHAMAN
}

public class CEnemyFactory : MonoBehaviour
{
    #region public ����
    public List<GameObject> oEnemyPrefabList;
    #endregion

    /// <summary>
    /// �� ����
    /// </summary>
    /// <param name="enemy">�� ����</param>
    public void CreateEnemy(EEnemy enemy)
    {
        GameObject oEnemy = Instantiate(oEnemyPrefabList[(int)enemy], transform);
        oEnemy.transform.GetChild(0).gameObject.SetActive(false);
    }
}