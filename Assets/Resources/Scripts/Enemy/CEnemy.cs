using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

/// <summary>
/// 적 상태
/// </summary>
public enum EState
{
    CHASE,
    ATTACK,
    DIE
}

public abstract class CEnemy : MonoBehaviour
{
    #region protected 변수
    protected CEnemyPool enemyPool;
    protected Animator animator;
    protected Transform tfTarget;
    protected NavMeshAgent agent;
    protected CHpCanvasManager hpCanvasManager;

    protected Vector3 v3SpawnPoint;
    protected EState State;
    protected Coroutine attackCoroutine;

    protected float fMoveSpeed;
    protected float fRotateSpeed;
    protected float fMaxHp;
    protected float fHp;
    protected float fAttack;

    protected bool isInAttackBoundary;
    protected bool isAttack;
    #endregion

    void Awake()
    {
        enemyPool = FindObjectOfType<CEnemyPool>();
        animator = GetComponent<Animator>();
        tfTarget = FindObjectOfType<CCharacter>().GetComponent<Transform>();
        agent = GetComponent<NavMeshAgent>();
        hpCanvasManager = transform.parent.GetChild(1).GetComponent<CHpCanvasManager>();
    }

    public abstract void Init();
    public abstract void Attack();
    public abstract float GetDamage();

    /// <summary>
    /// 적 Navigation 개체
    /// </summary>
    public NavMeshAgent Agent
    {
        get
        {
            return agent;
        }
    }

    /// <summary>
    /// 타겟 대상 (플레이어)
    /// </summary>
    public Transform Target
    {
        get
        {
            return tfTarget;
        }
    }

    /// <summary>
    /// 적 애니메이터
    /// </summary>
    public Animator Animator
    {
        get
        {
            return animator;
        }
    }

    /// <summary>
    /// 공격 범위안에 들어왔는지 판단할 변수
    /// </summary>
    public bool IsInAttackBoundary
    {
        get
        {
            return isInAttackBoundary;
        }

        set
        {
            isInAttackBoundary = value;
        }
    }

    void Update()
    {
        // 상태에 따라 적의 행동이 달라진다.
        switch (State)
        {
            case EState.CHASE:
                // 공격 범위 내에 플레이어가 있다면
                if (isInAttackBoundary)
                {
                    ChageState(EState.ATTACK);
                }

                else
                {
                    // 공격중이라면 이동하지 못한다.
                    if (!isAttack)
                    {
                        agent.SetDestination(tfTarget.position);
                    }
                }
                break;

            case EState.ATTACK:
                // 공격 범위 내에 플레이어가 있다면 공격한다.
                if (isInAttackBoundary)
                {
                    Attack();
                }

                else
                {
                    ChageState(EState.CHASE);
                }
                break;

            case EState.DIE:

                break;
        }

        // 적의 체력이 0이하로 떨어지게 되면 상태가 DIE로 바뀐다.
        if (fHp <= 0.0f)
        {
            fHp = 0.0f;
            ChageState(EState.DIE);
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("PlayerSkill"))
        {
            Hit(tfTarget.GetComponent<CCharacter>().Attack);
        }
    }

    /// <summary>
    /// 적 상태값을 바꾼다.
    /// </summary>
    /// <param name="state">바꿀 상태값</param>
    public void ChageState(EState state)
    {
        State = state;
    }

    /// <summary>
    /// 적 피격
    /// </summary>
    /// <param name="damage">데미지</param>
    public void Hit(float damage)
    {
        fHp -= damage;

        float percent = fHp / fMaxHp;

        hpCanvasManager.ActiveHpImage();
        hpCanvasManager.DecreaseHpAmount(percent);
    }
}