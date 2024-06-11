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

    #region Ŭ���� �� ������Ʈ
    protected CEnemyPool enemyPool;
    protected CEnemyXpGemPool enemyXpGemPool;
    protected Animator animator;
    protected CHpCanvasManager hpCanvasManager;
    protected CDamageCanvasManager damageCanvasManager;
    [SerializeField]
    protected Material[] materials;
    [SerializeField]
    protected SkinnedMeshRenderer skinnedMeshRenderer;
    #endregion

    #region �̵� ����
    protected Transform tfTarget;
    protected NavMeshAgent agent;

    protected float fMoveSpeed;
    protected float fRotateSpeed;
    #endregion

    #region ����
    protected float fMaxHp;
    protected float fHp;
    protected float fAttack;
    protected float fXp;
    #endregion

    #region �� ����
    protected EState State;

    protected bool isInAttackBoundary;
    protected bool isAttack;
    #endregion

    #endregion

    void Awake()
    {
        enemyPool = FindObjectOfType<CEnemyPool>();
        enemyXpGemPool = FindObjectOfType<CEnemyXpGemPool>();
        animator = GetComponent<Animator>();
        tfTarget = FindObjectOfType<CCharacter>().GetComponent<Transform>();
        agent = GetComponent<NavMeshAgent>();
        hpCanvasManager = transform.parent.GetChild(1).GetComponent<CHpCanvasManager>();
        damageCanvasManager = transform.parent.GetChild(2).GetComponent<CDamageCanvasManager>();
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
                Die();
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
            int randNum = Random.Range(1, 101);
            float damage;
            bool isCritical = false;

            if (tfTarget.GetComponent<CCharacter>().IsCriticalChance && fHp == fMaxHp)
            {
                isCritical = true;
            }

            else if (tfTarget.GetComponent<CCharacter>().Critical >= randNum)
            {
                isCritical = true;
            }


            if (isCritical)
            {
                damage = other.GetComponent<CParticlePlay>().Attack * tfTarget.GetComponent<CCharacter>().CriticalDamage / 100;
            }

            else
            {
                damage = other.GetComponent<CParticlePlay>().Attack * (1 + tfTarget.GetComponent<CCharacter>().Attack / 100);
            }

            float percent = damage / 10;

            damage = Random.Range(damage - percent, damage + percent);
            Hit(damage, isCritical);
        }
    }

    /// <summary>
    /// ���� ��ȯ�� ��ġ�� �������� ���Ѵ�.
    /// </summary>
    /// <returns>Vector3</returns>
    public Vector3 RandomSpawnPosition()
    {
        float X, Z, randRotation;
        Vector3 spawnPosition;

        // ��ȯ�� ��ġ�� �� ���� ��� ��ġ�� �ٽ� ����
        do
        {
            randRotation = Random.Range(0.0f, 360.0f);
            X = Mathf.Cos(randRotation * Mathf.Deg2Rad) * 30.0f;
            Z = Mathf.Sin(randRotation * Mathf.Deg2Rad) * 30.0f;

            spawnPosition = new Vector3(X, 0.0f, Z);
            spawnPosition += tfTarget.position;
        } while (spawnPosition.x < -60.0f || spawnPosition.x > 60.0f || spawnPosition.z < -60.0f || spawnPosition.z > 60.0f);

        return spawnPosition;
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
    public void Hit(float damage, bool isCritical)
    {
        damage = Mathf.Round(damage);
        fHp -= damage;

        float percent = fHp / fMaxHp;

        hpCanvasManager.ActiveHpImage();
        hpCanvasManager.DecreaseHpAmount(percent);
        damageCanvasManager.DisplayDamage(damage, isCritical);

        skinnedMeshRenderer.material = materials[1];
        Invoke("ChangeMaterial", 0.3f);

        StopCoroutine("Knockback");
        StartCoroutine("Knockback");
    }

    /// <summary>
    /// �ǰݵ��� �� ��ü�� Material�� ������� �ǵ�����.
    /// </summary>
    public void ChangeMaterial()
    {
        skinnedMeshRenderer.material = materials[0];
    }

    /// <summary>
    /// �ǰݵ��� �� �ڷ� �˹�ȴ�.
    /// </summary>
    /// <returns></returns>
    IEnumerator Knockback()
    {
        float fNowTime = 0.0f;
        Vector3 direction = tfTarget.transform.position - agent.transform.position;
        direction = direction.normalized;

        while (fNowTime <= 0.2f)
        {
            agent.transform.Translate(-direction * 5.0f * Time.deltaTime, Space.World);
            fNowTime += Time.deltaTime;

            yield return null;
        }
    }

    /// <summary>
    /// ���� �׾��� �� ����Ǵ� �޼��� (Ragdoll�� ����ġ ���� Ȱ��ȭ��Ű�� hpĵ������ ��������Ʈ�� ��Ȱ��ȭ ��Ų��.)
    /// </summary>
    public void Die()
    {
        transform.parent.GetChild(3).transform.position = transform.position;
        transform.parent.GetChild(3).transform.rotation = transform.rotation;

        // ���� �ִ� ��ü�� ������ Ȱ��ȭ �Ǿ��ִٸ� ���ְ� �ٽ� ���ش�.
        if (transform.parent.GetChild(3).gameObject.activeSelf)
        {
            transform.parent.GetChild(3).gameObject.SetActive(false);
        }
        transform.parent.GetChild(3).gameObject.SetActive(true);

        enemyXpGemPool.SpawnXpGem(fXp, transform.position);

        hpCanvasManager.InActiveHpImage();
        gameObject.SetActive(false);
    }
}