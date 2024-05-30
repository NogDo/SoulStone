using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyGoblin : CEnemy
{
    public CEnemyGoblin()
    {
        Init();
    }

    /// <summary>
    /// 고블린 능력치 초기화
    /// </summary>
    public override void Init()
    {
        fMoveSpeed = 3.0f;
        fGravityPower = 9.8f;
        fHp = 100.0f;
        fAttack = 10.0f;
    }

    void OnEnable()
    {
        
    }

    void OnDisable()
    {
        enemyPool.BackBasicEnemyPool(gameObject);
    }
}
