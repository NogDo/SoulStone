using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyGoblin : CEnemy
{
    /// <summary>
    /// 고블린 능력치 초기화
    /// </summary>
    public override void Init()
    {
        fMoveSpeed = 3.0f;
        fRotateSpeed = 3.0f;
        fGravityPower = 9.8f;
        fHp = 100.0f;
        fAttack = 10.0f;
        nEnemyNumber = 0;
    }

    void OnEnable()
    {
        
    }

    void OnDisable()
    {
        enemyPool.BackBasicEnemyPool(gameObject);
    }
}
