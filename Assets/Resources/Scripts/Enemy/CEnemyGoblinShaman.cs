using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyGoblinShaman : CEnemy
{
    /// <summary>
    /// ��� �ּ��� �ɷ�ġ �ʱ�ȭ
    /// </summary>
    public override void Init()
    {
        fMoveSpeed = 3.5f;
        fGravityPower = 9.8f;
        fHp = 1000.0f;
        fAttack = 20.0f;
        nEnemyNumber = 1;
    }

    void OnEnable()
    {
        CPathRequestManager.RequestPath(transform.position, tfTarget.position, OnPathFound);
    }

    void OnDisable()
    {
        enemyPool.BackEliteEnemyPool(gameObject);
    }
}
