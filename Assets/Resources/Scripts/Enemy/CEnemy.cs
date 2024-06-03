using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

/// <summary>
/// �� ����
/// </summary>
public enum EState
{
    CHASE,
    ATTACK,
    DIE
}

public abstract class CEnemy : MonoBehaviour
{
    #region protected ����
    protected CEnemyPool enemyPool;
    protected Animator animator;
    protected Transform tfTarget;
    protected NavMeshAgent agent;

    protected Vector3 v3SpawnPoint;
    protected EState State;
    protected Coroutine attackCoroutine;

    protected float fMoveSpeed;
    protected float fRotateSpeed;
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
    }

    public abstract void Init();
    public abstract void Attack();
    public abstract float GetDamage();

    /// <summary>
    /// �� Navigation ��ü
    /// </summary>
    public NavMeshAgent Agent
    {
        get
        {
            return agent;
        }
    }

    /// <summary>
    /// Ÿ�� ��� (�÷��̾�)
    /// </summary>
    public Transform Target
    {
        get
        {
            return tfTarget;
        }
    }

    /// <summary>
    /// �� �ִϸ�����
    /// </summary>
    public Animator Animator
    {
        get
        {
            return animator;
        }
    }

    /// <summary>
    /// ���� �����ȿ� ���Դ��� �Ǵ��� ����
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
        // ���¿� ���� ���� �ൿ�� �޶�����.
        switch (State)
        {
            case EState.CHASE:
                // ���� ���� ���� �÷��̾ �ִٸ�
                if (isInAttackBoundary)
                {
                    ChageState(EState.ATTACK);
                }

                else
                {
                    // �������̶�� �̵����� ���Ѵ�.
                    if (!isAttack)
                    {
                        agent.SetDestination(tfTarget.position);
                    }
                }
                break;

            case EState.ATTACK:
                // ���� ���� ���� �÷��̾ �ִٸ� �����Ѵ�.
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

        // ���� ü���� 0���Ϸ� �������� �Ǹ� ���°� DIE�� �ٲ��.
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
    /// �� ���°��� �ٲ۴�.
    /// </summary>
    /// <param name="state">�ٲ� ���°�</param>
    public void ChageState(EState state)
    {
        State = state;
    }

    /// <summary>
    /// �� �ǰ�
    /// </summary>
    /// <param name="damage">������</param>
    public void Hit(float damage)
    {
        fHp -= damage;
        print(gameObject.name + " : " + fHp);
    }
}