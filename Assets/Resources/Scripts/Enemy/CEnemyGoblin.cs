using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyGoblin : CEnemy
{
    #region private 변수
    BoxCollider weaponCollider;
    #endregion

    /// <summary>
    /// 고블린 능력치 초기화
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
    /// 고블린 기본 공격
    /// </summary>
    public override void Attack()
    {
        if (!isAttack)
        {
            animator.SetTrigger("Attack");
        }
    }

    /// <summary>
    /// 고블린이 가지고 있는 attack값 반환
    /// </summary>
    /// <returns></returns>
    public override float GetDamage()
    {
        return fAttack;
    }

    /// <summary>
    /// 공격 시작
    /// </summary>
    public void StartAttack()
    {
        isAttack = true;
    }

    /// <summary>
    /// 공격 종료
    /// </summary>
    public void EndAttack()
    {
        isAttack = false;
    }

    /// <summary>
    /// 애니메이션 중간에 WeaponCollider를 활성화 시킨다. (계속 활성화 되어있을 경우 공격을 하지 않아도 플레이어의 HP가 깎일 수 있기 때문)
    /// </summary>
    public void ActiveWeaponCollider()
    {
        weaponCollider.enabled = true;
    }

    /// <summary>
    /// 공격이 끝났을 때 WeaponCollider를 비활성화 시킨다.
    /// </summary>
    public void InActiveWeaponCollider()
    {
        weaponCollider.enabled = false;
    }
}
