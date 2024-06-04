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
    #region public 函荐
    public List<GameObject> oEnemyPrefabList;
    #endregion

    /// <summary>
    /// 利 积己
    /// </summary>
    /// <param name="enemy">利 辆幅</param>
    public void CreateEnemy(EEnemy enemy)
    {
        GameObject oEnemy = Instantiate(oEnemyPrefabList[(int)enemy], transform);
        oEnemy.transform.GetChild(0).gameObject.SetActive(false);
    }
}