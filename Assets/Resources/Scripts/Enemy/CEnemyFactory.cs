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
        GameObject oEnemy = null;

        switch (enemy)
        {
            case EEnemy.GOBLIN:
                oEnemy = Instantiate(oEnemyPrefabList[0], transform);
                oEnemy.GetComponent<CEnemy>().Init();
                oEnemy.SetActive(false);
                break;

            case EEnemy.GOBLIN_SHAMAN:
                oEnemy = Instantiate(oEnemyPrefabList[1], transform);
                oEnemy.GetComponent<CEnemy>().Init();
                oEnemy.SetActive(false);
                break;

            default:
                print("Enemy ���� ����");
                break;
        }
    }
}