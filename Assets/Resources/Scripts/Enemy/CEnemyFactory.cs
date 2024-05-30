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
    public GameObject CreateEnemy(EEnemy enemy)
    {
        GameObject oEnemy = null;

        switch (enemy)
        {
            case EEnemy.GOBLIN:
                oEnemy = Instantiate(oEnemyPrefabList[0], transform);
                oEnemy.SetActive(false);
                break;

            case EEnemy.GOBLIN_SHAMAN:
                oEnemy = Instantiate(oEnemyPrefabList[1], transform);
                oEnemy.SetActive(false);
                break;

            default:
                print("Enemy 积己 坷幅");
                break;
        }

        return oEnemy;
    }
}