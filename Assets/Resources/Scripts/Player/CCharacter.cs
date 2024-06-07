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
    #endregion

    #region 캐릭터 변하는 스텟
    protected float fMoveSpeed;
    protected float fAttack;
    protected float fMaxHp;
    protected float fHp;
    protected float fDeffence;
    protected float fMaxXp;
    protected float fNowXp;
    protected int nMaxDashCount;
    protected int nLevel;
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
        oSelectSkillPanel = GameObject.Find("UI").transform.GetChild(4).gameObject;
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

    /// <summary>
    /// 플레이어 이동속도
    /// </summary>
    public float MoveSpeed
    {
        get
        {
            return fMoveSpeed;
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
    /// 플레이어 공격력
    /// </summary>
    public float Attack
    {
        get
        {
            return fAttack;
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

        characterActiveSkills[index] = skillData;

        // 파티클 생성 후 캐릭터 스킬에 넣는다.
        characterActiveSkills[index].oParticle = Instantiate(skillData.oParticle, transform.GetChild(6).transform);
        characterActiveSkills[index].oParticle.SetActive(false);
    }

    /// <summary>
    /// 플레이어 피격
    /// </summary>
    /// <param name="damage">적 데미지</param>
    public void Hit(float damage)
    {
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
            Time.timeScale = 0.0f;
        } while (fNowXp >= fMaxXp);

        levelUIControl.SetXpBarLength(fNowXp / fMaxXp);
    }
}
