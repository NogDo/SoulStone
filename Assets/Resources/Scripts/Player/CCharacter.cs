using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class CCharacter : MonoBehaviour
{
    #region protected 변수
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
    /// 플레이어 CharacterController
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
    /// 플레이어 Animator
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

    /// <summary>
    /// 플레이어 이동속도
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
    /// 중력값
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
    /// 플레이어 대시 값
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
    /// 플레이어 총 대시 횟수
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
    /// 플레이어 현재 대시 횟수
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
