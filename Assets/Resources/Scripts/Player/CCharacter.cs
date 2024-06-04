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
    protected CharacterController characterController;
    protected Animator animator;
    protected AnimatorOverrideController animatorOverrideController;
    protected AnimationClipOverrides animationClipOverride;

    protected Vector3 v3MoveDirection;
    protected Vector3 v3RotateDirection;
    protected Vector3 v3MousePointerToWorldPosition;
    [SerializeField]
    protected STSkillData[] characterSKills;

    protected float fMoveSpeed;
    protected float fGravityPower;
    protected float fDashPower;
    protected float fHp;
    protected float fAttack;
    protected float fDeffence;
    protected int nMaxDashCount;
    protected int nNowDashCount;
    protected int nLevel;
    #endregion

    void Awake()
    {
        characterController = this.GetComponent<CharacterController>();
        animator = this.GetComponent<Animator>();

        animatorOverrideController = new AnimatorOverrideController(animator.runtimeAnimatorController);
        animator.runtimeAnimatorController = animatorOverrideController;

        animationClipOverride = new AnimationClipOverrides(animatorOverrideController.overridesCount);
        animatorOverrideController.GetOverrides(animationClipOverride);
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

    public STSkillData[] Skill
    {
        get
        {
            return characterSKills;
        }
    }

    /// <summary>
    /// �÷��̾� �̵��ӵ�
    /// </summary>
    public float MoveSpeed
    {
        get
        {
            return fMoveSpeed;
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
    /// �÷��̾� ���ݷ�
    /// </summary>
    public float Attack
    {
        get
        {
            return fAttack;
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
    }

    /// <summary>
    /// �÷��̾� ��ų �߰�
    /// </summary>
    /// <param name="skillData">��ų ������ ��� ����ü</param>
    /// <param name="index">��ų ��ȣ</param>
    public void AddSkill(STSkillData skillData, int index)
    {
        // �ִϸ��̼� Ŭ�� ��ü
        animationClipOverride[characterSKills[index].animationClip.name] = skillData.animationClip;
        animatorOverrideController.ApplyOverrides(animationClipOverride);

        characterSKills[index] = skillData;

        // ��ƼŬ ���� �� ĳ���� ��ų�� �ִ´�.
        characterSKills[index].oParticle = Instantiate(skillData.oParticle, transform.GetChild(6).transform);
        characterSKills[index].oParticle.SetActive(false);
    }

    /// <summary>
    /// �÷��̾� �ǰ�
    /// </summary>
    /// <param name="damage">�� ������</param>
    public void Hit(float damage)
    {
        fHp -= damage;
    }
}
