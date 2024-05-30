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
    /// ��� �ɷ�ġ �ʱ�ȭ
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
