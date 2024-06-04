using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyGoblin : CEnemy
{
    #region private ����
    BoxCollider weaponCollider;
    #endregion

    /// <summary>
    /// ��� �ɷ�ġ �ʱ�ȭ
    /// </summary>
    public override void Init()
    {
        State = EState.CHASE;

        fMoveSpeed = 3.0f;
        fRotateSpeed = 3.0f;
        fMaxHp = 100.0f;
        fHp = fMaxHp;
        fAttack = 10.0f;

        isInAttackBoundary = false;
        isAttack = false;

        if (weaponCollider == null)
        {
            weaponCollider = transform.GetComponentInChildren<BoxCollider>();
        }
        weaponCollider.enabled = false;

        transform.position = RandomSpawnPosition();
    }

    void OnEnable()
    {
        Init();
    }

    void OnDisable()
    {
        //enemyPool.BackBasicEnemyPool(gameObject);
        enemyPool.BackBasicEnemyPool(transform.parent.gameObject);
    }

    /// <summary>
    /// ��� �⺻ ����
    /// </summary>
    public override void Attack()
    {
        if (!isAttack)
        {
            animator.SetTrigger("Attack");
        }
    }

    /// <summary>
    /// ����� ������ �ִ� attack�� ��ȯ
    /// </summary>
    /// <returns></returns>
    public override float GetDamage()
    {
        return fAttack;
    }

    /// <summary>
    /// ���� ����
    /// </summary>
    public void StartAttack()
    {
        isAttack = true;
    }

    /// <summary>
    /// ���� ����
    /// </summary>
    public void EndAttack()
    {
        isAttack = false;
    }

    /// <summary>
    /// �ִϸ��̼� �߰��� WeaponCollider�� Ȱ��ȭ ��Ų��. (��� Ȱ��ȭ �Ǿ����� ��� ������ ���� �ʾƵ� �÷��̾��� HP�� ���� �� �ֱ� ����)
    /// </summary>
    public void ActiveWeaponCollider()
    {
        weaponCollider.enabled = true;
    }

    /// <summary>
    /// ������ ������ �� WeaponCollider�� ��Ȱ��ȭ ��Ų��.
    /// </summary>
    public void InActiveWeaponCollider()
    {
        weaponCollider.enabled = false;
    }
}
