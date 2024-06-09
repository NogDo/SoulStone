using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationClipOverrides : List<KeyValuePair<AnimationClip, AnimationClip>>
{
    public AnimationClipOverrides(int capacity) : base(capacity) { }

    public AnimationClip this[string name]
    {
        get { return this.Find(x => x.Key.name.Equals(name)).Value; }

        set
        {
            int index = this.FindIndex(x => x.Key.name.Equals(name));

            if (index != -1)
            {
                this[index] = new KeyValuePair<AnimationClip, AnimationClip>(this[index].Key, value);
            }
        }
    }
}

public abstract class CCharacter : MonoBehaviour
{
    #region protected 변수

    #region 클래스 및 컴포넌트
    protected CharacterController characterController;
    protected Animator animator;
    protected AnimatorOverrideController animatorOverrideController;
    protected AnimationClipOverrides animationClipOverride;
    protected CPlayerHpUIConrtol playerHpUIConrtol;
    protected CLevelUIControl levelUIControl;
    protected CPlayerHitCanvasManager playerHitCanvasManager;
    protected GameObject oSelectSkillPanel;
    #endregion

    #region 이동 관련
    protected Vector3 v3MoveDirection;
    protected Vector3 v3RotateDirection;
    protected Vector3 v3MousePointerToWorldPosition;

    protected float fGravityPower;
    protected float fDashPower;
    protected int nNowDashCount;
    #endregion

    #region 액티브 스킬
    [SerializeField]
    protected STActiveSkillData[] characterActiveSkills;

    protected int nSkillIndex;
    #endregion

    #region 캐릭터 변하는 스텟
    protected float fDefaultMoveSpeed;
    protected float fMoveSpeedAddPercent;
    protected float fAttack;
    protected float fMaxHp;
    protected float fHp;
    protected float fDeffence;
    protected float fMaxXp;
    protected float fNowXp;
    protected float fCastFrequency;
    protected float fArea;
    protected float fMultiCast;
    protected float fCritical;
    protected float fCriticalDamage;
    protected float fExp;
    protected float fDefaultPickUpArea;
    protected float fPickUpArea;
    protected float fBlockChance;
    protected int nReduceDamage;
    protected int nMaxDashCount;
    protected int nLevel;
    protected bool isCriticalChance;
    #endregion

    #endregion

    void Awake()
    {
        characterController = this.GetComponent<CharacterController>();
        animator = this.GetComponent<Animator>();

        animatorOverrideController = new AnimatorOverrideController(animator.runtimeAnimatorController);
        animator.runtimeAnimatorController = animatorOverrideController;

        animationClipOverride = new AnimationClipOverrides(animatorOverrideController.overridesCount);
        animatorOverrideController.GetOverrides(animationClipOverride);

        playerHpUIConrtol = FindObjectOfType<CPlayerHpUIConrtol>();
        playerHpUIConrtol.Init(Mathf.RoundToInt(fHp));

        levelUIControl = FindObjectOfType<CLevelUIControl>();
        playerHitCanvasManager = FindObjectOfType<CPlayerHitCanvasManager>();
        oSelectSkillPanel = GameObject.Find("UI").transform.GetChild(5).gameObject;
    }

    /// <summary>
    /// 각각의 캐릭터 능력치 초기화
    /// </summary>
    public abstract void Init();

    /// <summary>
    /// 플레이어 CharacterController
    /// </summary>
    public CharacterController CharacterController
    {
        get
        {
            return characterController;
        }
    }

    /// <summary>
    /// 플레이어 Animator
    /// </summary>
    public Animator Animator
    {

        get
        {
            return animator;
        }
    }

    /// <summary>
    /// 플레이어 이동 방향 벡터
    /// </summary>
    public Vector3 MoveDirection
    {
        get
        {
            return v3MoveDirection;
        }

        set
        {
            v3MoveDirection = value;
        }
    }

    /// <summary>
    /// 플레이어 회전 방향 벡터
    /// </summary>
    public Vector3 RotateDirection
    {
        get
        {
            return v3RotateDirection;
        }

        set
        {
            v3RotateDirection = value;
        }
    }

    /// <summary>
    /// 마우스 위치를 게임 월드 좌표로 변환한 값
    /// </summary>
    public Vector3 MousePointerToWorldPosition
    {
        get
        {
            return v3MousePointerToWorldPosition;
        }

        set
        {
            v3MousePointerToWorldPosition = value;
        }
    }

    public STActiveSkillData[] Skill
    {
        get
        {
            return characterActiveSkills;
        }
    }

    public int SkillIndex
    {
        get
        {
            return nSkillIndex;
        }
    }

    /// <summary>
    /// 플레이어 이동속도
    /// </summary>
    public float MoveSpeed
    {
        get
        {
            return fDefaultMoveSpeed * (1 + fMoveSpeedAddPercent / 100);
        }
    }

    /// <summary>
    /// 플레이어 이동속도 계수
    /// </summary>
    public float MoveSpeedPercent
    {
        get
        {
            return fMoveSpeedAddPercent;
        }
    }

    /// <summary>
    /// 중력값
    /// </summary>
    public float GravityPower
    {
        get
        {
            return fGravityPower;
        }
    }

    /// <summary>
    /// 플레이어 대시 값
    /// </summary>
    public float DashPower
    {
        get
        {
            return fDashPower;
        }
    }

    /// <summary>
    /// 플레이어 체력
    /// </summary>
    public float HP
    {
        get
        {
            return fHp;
        }
    }

    /// <summary>
    /// 플레이어 최대 체력
    /// </summary>
    public float MaxHP
    {
        get
        {
            return fMaxHp;
        }
    }

    /// <summary>
    /// 플레이어 피해량
    /// </summary>
    public float Attack
    {
        get
        {
            return fAttack;
        }
    }

    /// <summary>
    /// 플레이어 치명타 확률
    /// </summary>
    public float Critical
    {
        get
        {
            return fCritical;
        }
    }

    /// <summary>
    /// 플레이어 치명타 데미지
    /// </summary>
    public float CriticalDamage
    {
        get
        {
            return fCriticalDamage;
        }
    }

    /// <summary>
    /// 플레이어 방어력
    /// </summary>
    public float Deffence
    {
        get
        {
            return fDeffence;
        }
    }

    /// <summary>
    /// 플레이어 막기 확률
    /// </summary>
    public float BlockChance
    {
        get
        {
            return fBlockChance;
        }
    }

    /// <summary>
    /// 플레이어 스킬 쿨타임 감소 퍼센트
    /// </summary>
    public float CastFrequency
    {
        get
        {
            return fCastFrequency;
        }
    }

    /// <summary>
    /// 플레이어 스킬 범위 퍼센트
    /// </summary>
    public float Area
    {
        get
        {
            return fArea;
        }
    }

    /// <summary>
    /// 플레이어 스킬 멀티 캐스트 확률
    /// </summary>
    public float MultiCast
    {
        get
        {
            return fMultiCast;
        }
    }

    /// <summary>
    /// 플레이어 경험치 계수
    /// </summary>
    public float EXP
    {
        get
        {
            return fExp;
        }
    }

    /// <summary>
    /// 플레이어 픽업 반경
    /// </summary>
    public float PickUpArea
    {
        get
        {
            return fPickUpArea;
        }
    }

    /// <summary>
    /// 플레이어 데미지 감소
    /// </summary>
    public int ReduceDamage
    {
        get
        {
            return nReduceDamage;
        }
    }

    /// <summary>
    /// 플레이어 총 대시 횟수
    /// </summary>
    public int MaxDashCount
    {
        get
        {
            return nMaxDashCount;
        }
    }

    /// <summary>
    /// 플레이어 현재 대시 횟수
    /// </summary>
    public int NowDashCount
    {
        get
        {
            return nNowDashCount;
        }
    }

    /// <summary>
    /// 적 체력 100%일 때 크리티컬 여부
    /// </summary>
    public bool IsCriticalChance
    {
        get
        {
            return isCriticalChance;
        }
    }

    /// <summary>
    /// 대시 카운트 1 감소
    /// </summary>
    public void DecreaseNowDashCount()
    {
        nNowDashCount--;
    }

    /// <summary>
    /// 현재 대시 카운트를 모두 채운다
    /// </summary>
    public void FillNowDashCount()
    {
        nNowDashCount = nMaxDashCount;
    }

    /// <summary>
    /// 최대 대시 카운트 1 증가
    /// </summary>
    public void IncreaseMaxDashCount()
    {
        nMaxDashCount++;

        FillNowDashCount();
        FindObjectOfType<CDashCanvasManager>().AddDash(1);
    }

    /// <summary>
    /// 플레이어 스킬 추가
    /// </summary>
    /// <param name="skillData">스킬 정보가 담긴 구조체</param>
    /// <param name="index">스킬 번호</param>
    public void AddSkill(STActiveSkillData skillData, int index)
    {
        // 애니메이션 클립 교체
        animationClipOverride[characterActiveSkills[index].animationClip.name] = skillData.animationClip;
        animatorOverrideController.ApplyOverrides(animationClipOverride);

        // 캐릭터에 스킬을 넣는다.
        characterActiveSkills[index] = skillData;

        // 파티클 생성 후 캐릭터 스킬에 넣는다.
        characterActiveSkills[index].oParticle = Instantiate(skillData.oParticle, transform.GetChild(6).transform);
        characterActiveSkills[index].oParticle.SetActive(false);

        // 스킬 사용
        GetComponent<CCharacterAttack>().UseAddSkill(index);

        nSkillIndex++;
    }

    /// <summary>
    /// 플레이어 피격
    /// </summary>
    /// <param name="damage">적 데미지</param>
    public void Hit(float damage)
    {
        float randNum = Random.Range(1, 100);

        if ((1 - 100 / BlockChance) * 100 >= randNum)
        {
            damage = 0.0f;
        }

        else
        {
            damage /= (0.5f + fDeffence / 200);

            if (damage - nReduceDamage > 1)
            {
                damage -= nReduceDamage;
            }

            else
            {
                damage = 1;
            }
        }

        playerHitCanvasManager.DisplayDamage(damage);

        fHp = (fHp - damage) > 0 ? fHp - damage : 0;

        float percent = fHp / fMaxHp;
        playerHpUIConrtol.ChangeValue(Mathf.RoundToInt(fHp), percent);
    }

    /// <summary>
    /// 경험치 획득
    /// </summary>
    /// <param name="xp">획득한 경험치</param>
    public void GainXp(float xp)
    {
        xp *= 1 + fExp / 100;
        fNowXp += xp;

        levelUIControl.SetXpBarLength(fNowXp / fMaxXp);

        if (fNowXp >= fMaxXp)
        {
            LevelUp();
        }
    }

    /// <summary>
    /// 플레이어 레벨업
    /// </summary>
    public void LevelUp()
    {
        do
        {
            if (Time.timeScale == 0.0f)
            {
                continue;
            }

            nLevel++;
            levelUIControl.SetText(nLevel);

            fNowXp -= fMaxXp;
            fMaxXp *= 1.06f;

            oSelectSkillPanel.SetActive(true);
        } while (fNowXp >= fMaxXp);

        levelUIControl.SetXpBarLength(fNowXp / fMaxXp);
    }

    /// <summary>
    /// 플레이어의 능력치를 올린다.
    /// </summary>
    /// <param name="effectType">올라가는 능력치 타입</param>
    /// <param name="effect">능력치 값</param>
    public void AddAbility(ESkillEffectType[] effectType, float[] effect)
    {
        for (int i = 0; i < effectType.Length; i++)
        {
            switch (effectType[i])
            {
                case ESkillEffectType.DAMAGE:
                    fAttack += effect[i];
                    break;

                case ESkillEffectType.COOLTIME:
                    fCastFrequency += effect[i];
                    break;

                case ESkillEffectType.AREA:
                    fArea += effect[i];
                    transform.GetChild(6).localScale = Vector3.one * (1 + fArea / 100);
                    break;

                case ESkillEffectType.MULTICAST:
                    fMultiCast += effect[i];
                    break;

                case ESkillEffectType.CRITICAL:
                    fCritical += effect[i];
                    break;

                case ESkillEffectType.CRITICALDAMAGE:
                    fCriticalDamage += effect[i];
                    break;

                case ESkillEffectType.SPEED:
                    fMoveSpeedAddPercent += effect[i];
                    break;

                case ESkillEffectType.EXP:
                    fExp += effect[i];
                    break;

                case ESkillEffectType.PICKUPAREA:
                    fPickUpArea += effect[i];

                    transform.GetChild(7).GetComponent<SphereCollider>().radius = fDefaultPickUpArea * (1 + fPickUpArea / 100);
                    break;

                case ESkillEffectType.HP:
                    fMaxHp += effect[i];
                    fHp += effect[i];

                    float percent = fHp / fMaxHp;
                    playerHpUIConrtol.ChangeValue(Mathf.RoundToInt(fHp), percent);
                    break;

                case ESkillEffectType.ARMOR:
                    fDeffence += effect[i];
                    break;

                case ESkillEffectType.BLOCK:
                    fBlockChance += effect[i];
                    break;

                case ESkillEffectType.REDUCEDAMAGE:
                    nReduceDamage += (int)effect[i];
                    break;

                case ESkillEffectType.CRITICALCHANCE:
                    isCriticalChance = true;
                    break;

                case ESkillEffectType.DASH:
                    IncreaseMaxDashCount();
                    break;
            }
        }
    }
}
