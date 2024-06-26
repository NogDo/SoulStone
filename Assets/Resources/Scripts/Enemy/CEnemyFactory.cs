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
    #region public 변수
    public List<GameObject> oEnemyPrefabList;
    #endregion

    /// <summary>
    /// 적 생성
    /// </summary>
    /// <param name="enemy">적 종류</param>
    public void CreateEnemy(EEnemy enemy)
    {
        GameObject oEnemy = Instantiate(oEnemyPrefabList[(int)enemy], transform);
        oEnemy.transform.GetChild(0).gameObject.SetActive(false);
    }
}