using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyGoblinShaman : CEnemy
{
    /// <summary>
    /// 고블린 주술사 능력치 초기화
    /// </summary>
    public override void Init()
    {
        State = EState.CHASE;

        fMoveSpeed = 3.5f;
        fRotateSpeed = 3.0f;
        fHp = 1000.0f;
        fAttack = 20.0f;

        isInAttackBoundary = false;
        isAttack = false;
    }

    void OnEnable()
    {
        Init();
    }

    void OnDisable()
    {
        enemyPool.BackEliteEnemyPool(gameObject);
    }

    public override void Attack()
    {
        if (!isAttack)
        {
            animator.SetTrigger("Attack");
        }
    }

    public override float GetDamage()
    {
        return fAttack;
    }

    public void StartAttack()
    {
        isAttack = true;
    }

    public void EndAttack()
    {
        isAttack = false;
    }

    
}
