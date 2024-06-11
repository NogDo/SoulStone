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
    #region protected ����

    #region Ŭ���� �� ������Ʈ
    protected CharacterController characterController;
    protected Animator animator;
    protected AnimatorOverrideController animatorOverrideController;
    protected AnimationClipOverrides animationClipOverride;
    protected CPlayerHpUIConrtol playerHpUIConrtol;
    protected CLevelUIControl levelUIControl;
    protected CPlayerHitCanvasManager playerHitCanvasManager;
    protected GameObject oSelectSkillPanel;
    protected GameObject oBarbarianDie;
    #endregion

    #region �̵� ����
    protected Vector3 v3MoveDirection;
    protected Vector3 v3RotateDirection;
    protected Vector3 v3MousePointerToWorldPosition;

    protected float fGravityPower;
    protected float fDashPower;
    protected int nNowDashCount;
    #endregion

    #region ��Ƽ�� ��ų
    [SerializeField]
    protected STActiveSkillData[] characterActiveSkills;

    protected int nSkillIndex;
    #endregion

    #region ĳ���� ���ϴ� ����
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

        oBarbarianDie = transform.GetChild(8).gameObject;
    }

    /// <summary>
    /// ������ ĳ���� �ɷ�ġ �ʱ�ȭ
    /// </summary>
    public abstract void Init();

    /// <summary>
    /// �÷��̾� CharacterController
    /// </summary>
    public CharacterController CharacterController
    {
        get
        {
            return characterController;
        }
    }

    /// <summary>
    /// �÷��̾� Animator
    /// </summary>
    public Animator Animator
    {

        get
        {
            return animator;
        }
    }

    /// <summary>
    /// �÷��̾� �̵� ���� ����
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
    /// �÷��̾� ȸ�� ���� ����
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
    /// ���콺 ��ġ�� ���� ���� ��ǥ�� ��ȯ�� ��
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
    /// �÷��̾� �̵��ӵ�
    /// </summary>
    public float MoveSpeed
    {
        get
        {
            return fDefaultMoveSpeed * (1 + fMoveSpeedAddPercent / 100);
        }
    }

    /// <summary>
    /// �÷��̾� �̵��ӵ� ���
    /// </summary>
    public float MoveSpeedPercent
    {
        get
        {
            return fMoveSpeedAddPercent;
        }
    }

    /// <summary>
    /// �߷°�
    /// </summary>
    public float GravityPower
    {
        get
        {
            return fGravityPower;
        }
    }

    /// <summary>
    /// �÷��̾� ��� ��
    /// </summary>
    public float DashPower
    {
        get
        {
            return fDashPower;
        }
    }

    /// <summary>
    /// �÷��̾� ü��
    /// </summary>
    public float HP
    {
        get
        {
            return fHp;
        }
    }

    /// <summary>
    /// �÷��̾� �ִ� ü��
    /// </summary>
    public float MaxHP
    {
        get
        {
            return fMaxHp;
        }
    }

    /// <summary>
    /// �÷��̾� ���ط�
    /// </summary>
    public float Attack
    {
        get
        {
            return fAttack;
        }
    }

    /// <summary>
    /// �÷��̾� ġ��Ÿ Ȯ��
    /// </summary>
    public float Critical
    {
        get
        {
            return fCritical;
        }
    }

    /// <summary>
    /// �÷��̾� ġ��Ÿ ������
    /// </summary>
    public float CriticalDamage
    {
        get
        {
            return fCriticalDamage;
        }
    }

    /// <summary>
    /// �÷��̾� ����
    /// </summary>
    public float Deffence
    {
        get
        {
            return fDeffence;
        }
    }

    /// <summary>
    /// �÷��̾� ���� Ȯ��
    /// </summary>
    public float BlockChance
    {
        get
        {
            return fBlockChance;
        }
    }

    /// <summary>
    /// �÷��̾� ��ų ��Ÿ�� ���� �ۼ�Ʈ
    /// </summary>
    public float CastFrequency
    {
        get
        {
            return fCastFrequency;
        }
    }

    /// <summary>
    /// �÷��̾� ��ų ���� �ۼ�Ʈ
    /// </summary>
    public float Area
    {
        get
        {
            return fArea;
        }
    }

    /// <summary>
    /// �÷��̾� ��ų ��Ƽ ĳ��Ʈ Ȯ��
    /// </summary>
    public float MultiCast
    {
        get
        {
            return fMultiCast;
        }
    }

    /// <summary>
    /// �÷��̾� ����ġ ���
    /// </summary>
    public float EXP
    {
        get
        {
            return fExp;
        }
    }

    /// <summary>
    /// �÷��̾� �Ⱦ� �ݰ�
    /// </summary>
    public float PickUpArea
    {
        get
        {
            return fPickUpArea;
        }
    }

    /// <summary>
    /// �÷��̾� ������ ����
    /// </summary>
    public int ReduceDamage
    {
        get
        {
            return nReduceDamage;
        }
    }

    /// <summary>
    /// �÷��̾� �� ��� Ƚ��
    /// </summary>
    public int MaxDashCount
    {
        get
        {
            return nMaxDashCount;
        }
    }

    /// <summary>
    /// �÷��̾� ���� ��� Ƚ��
    /// </summary>
    public int NowDashCount
    {
        get
        {
            return nNowDashCount;
        }
    }

    /// <summary>
    /// �� ü�� 100%�� �� ũ��Ƽ�� ����
    /// </summary>
    public bool IsCriticalChance
    {
        get
        {
            return isCriticalChance;
        }
    }

    /// <summary>
    /// ��� ī��Ʈ 1 ����
    /// </summary>
    public void DecreaseNowDashCount()
    {
        nNowDashCount--;
    }

    /// <summary>
    /// ���� ��� ī��Ʈ�� ��� ä���
    /// </summary>
    public void FillNowDashCount()
    {
        nNowDashCount = nMaxDashCount;
    }

    /// <summary>
    /// �ִ� ��� ī��Ʈ 1 ����
    /// </summary>
    public void IncreaseMaxDashCount()
    {
        nMaxDashCount++;

        FillNowDashCount();
        FindObjectOfType<CDashCanvasManager>().AddDash(1);
    }

    /// <summary>
    /// �÷��̾� ��ų �߰�
    /// </summary>
    /// <param name="skillData">��ų ������ ��� ����ü</param>
    /// <param name="index">��ų ��ȣ</param>
    public void AddSkill(STActiveSkillData skillData, int index)
    {
        // �ִϸ��̼� Ŭ�� ��ü
        animationClipOverride[characterActiveSkills[index].animationClip.name] = skillData.animationClip;
        animatorOverrideController.ApplyOverrides(animationClipOverride);

        // ĳ���Ϳ� ��ų�� �ִ´�.
        characterActiveSkills[index] = skillData;

        // ��ƼŬ ���� �� ĳ���� ��ų�� �ִ´�.
        characterActiveSkills[index].oParticle = Instantiate(skillData.oParticle, transform.GetChild(6).transform);
        characterActiveSkills[index].oParticle.SetActive(false);

        // ��ų ���
        GetComponent<CCharacterAttack>().UseAddSkill(index);

        nSkillIndex++;
    }

    /// <summary>
    /// �÷��̾� �ǰ�
    /// </summary>
    /// <param name="damage">�� ������</param>
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

        playerHitCanvasManager.DisplayDamage(Mathf.RoundToInt(damage));

        fHp = (fHp - damage) > 0 ? fHp - damage : 0;

        float percent = fHp / fMaxHp;
        playerHpUIConrtol.ChangeValue(Mathf.RoundToInt(fHp), percent);

        if (fHp <= 0)
        {
            StartCoroutine(GameOver());
        }
    }

    /// <summary>
    /// ����ġ ȹ��
    /// </summary>
    /// <param name="xp">ȹ���� ����ġ</param>
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
    /// �÷��̾� ������
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
    /// �÷��̾��� �ɷ�ġ�� �ø���.
    /// </summary>
    /// <param name="effectType">�ö󰡴� �ɷ�ġ Ÿ��</param>
    /// <param name="effect">�ɷ�ġ ��</param>
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

    /// <summary>
    /// �÷��̾ �װ� ���ξ����� ���ư���.
    /// </summary>
    /// <returns></returns>
    IEnumerator GameOver()
    {
        oBarbarianDie.SetActive(true);
        oBarbarianDie.transform.SetParent(null);
        oBarbarianDie.transform.localPosition = transform.localPosition;
        oBarbarianDie.transform.localRotation = transform.localRotation;
        oBarbarianDie.GetComponentInChildren<Rigidbody>().AddForce(-oBarbarianDie.transform.forward * 1000);

        GetComponent<CCharacterController>().enabled = false;
        GetComponent<CCharacterDash>().enabled = false;
        GetComponent<CharacterController>().enabled = false;
        for (int i = 0; i < transform.childCount; i++)
        {
            transform.GetChild(i).gameObject.SetActive(false);
        }

        yield return new WaitForSeconds(2.0f);

        CSceneManager.Instace.PlayMainScene();
    }
}
