using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class CCharacter : MonoBehaviour
{
    #region protected ����
    protected CharacterController characterController;
    protected Animator animator;

    protected Vector3 v3MoveDirection;
    protected Vector3 v3RotateDirection;
    protected Vector3 v3MousePointerToWorldPosition;

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

        private set
        {
            nMaxDashCount = value;
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

        private set
        {
            nNowDashCount = value;
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
}
