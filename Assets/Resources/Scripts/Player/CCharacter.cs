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
    protected int nMaxDashCount;
    protected int nNowDashCount;
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

        private set
        {
            characterController = value;
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

        private set
        {
            animator = value;
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

    public STSkillData[] SKill
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

        set
        {
            fMoveSpeed = value;
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

        set
        {
            fGravityPower = value;
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

        set
        {
            fDashPower = value;
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

    public void DecreaseNowDashCount()
    {
        nNowDashCount--;
    }

    public void FillNowDashCount()
    {
        nNowDashCount = nMaxDashCount;
    }

    public void IncreaseMaxDashCount()
    {
        nMaxDashCount++;
    }

    public void AddSkill(STSkillData skillData, int index)
    {
        animationClipOverride[characterSKills[index].animationClip.name] = skillData.animationClip;
        animatorOverrideController.ApplyOverrides(animationClipOverride);

        characterSKills[index] = skillData;
    }
}
