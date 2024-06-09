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

    #region 클래스 및 컴포넌트
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

    #region 이동 관련
    protected Transform tfTarget;
    protected NavMeshAgent agent;

    protected float fMoveSpeed;
    protected float fRotateSpeed;
    #endregion

    #region 스텟
    protected float fMaxHp;
    protected float fHp;
    protected float fAttack;
    protected float fXp;
    #endregion

    #region 적 상태
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
                Die();
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
    /// 적이 소환될 위치를 랜덤으로 정한다.
    /// </summary>
    /// <returns>Vector3</returns>
    public Vector3 RandomSpawnPosition()
    {
        float X, Z, randRotation;
        Vector3 spawnPosition;

        // 소환된 위치가 맵 밖일 경우 위치를 다시 지정
        do
        {
            randRotation = Random.Range(0.0f, 360.0f);
            X = Mathf.Cos(randRotation * Mathf.Deg2Rad) * 20.0f;
            Z = Mathf.Sin(randRotation * Mathf.Deg2Rad) * 20.0f;

            spawnPosition = new Vector3(X, 0.0f, Z);
            spawnPosition += tfTarget.position;
        } while (spawnPosition.x < -60.0f || spawnPosition.x > 60.0f || spawnPosition.z < -60.0f || spawnPosition.z > 60.0f);

        return spawnPosition;
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
    /// 피격됐을 때 교체된 Material을 원래대로 되돌린다.
    /// </summary>
    public void ChangeMaterial()
    {
        skinnedMeshRenderer.material = materials[0];
    }

    /// <summary>
    /// 피격됐을 때 뒤로 넉백된다.
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
    /// 적이 죽었을 때 실행되는 메서드 (Ragdoll과 경험치 돌을 활성화시키고 hp캔버스와 적오브젝트를 비활성화 시킨다.)
    /// </summary>
    public void Die()
    {
        transform.parent.GetChild(3).transform.position = transform.position;
        transform.parent.GetChild(3).transform.rotation = transform.rotation;

        // 전에 있던 시체가 아직도 활성화 되어있다면 꺼주고 다시 켜준다.
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