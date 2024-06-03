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
        State = EState.CHASE;

        fMoveSpeed = 3.5f;
        fRotateSpeed = 3.0f;
        fMaxHp = 1000.0f;
        fHp = fMaxHp;
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
        //enemyPool.BackEliteEnemyPool(transform.parent.gameObject);
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
