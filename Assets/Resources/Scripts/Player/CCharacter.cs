using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacter : MonoBehaviour
{
    #region public ����
    public static CCharacter character;
    #endregion

    #region private ����
    CharacterController characterController;
    Animator animator;

    Vector3 v3MoveDirection;
    Vector3 v3RotateDirection;
    Vector3 v3MousePointerToWorldPosition;

    [SerializeField]
    float fMoveSpeed;
    [SerializeField]
    float fGravityPower;
    [SerializeField]
    float fDashPower;

    int nMaxDashCount;
    int nNowDashCount;
    #endregion

    void Awake()
    {
        CharacterController = GetComponent<CharacterController>();
        Animator = GetComponent<Animator>();

        nMaxDashCount = 2;
        nNowDashCount = nMaxDashCount;
    }

    /// <summary>
    /// ĳ���� �ν��Ͻ�
    /// </summary>
    public static CCharacter Instance
    {
        get
        {
            if (character == null)
            {
                character = new CCharacter();
            }

            return character;
        }
    }

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

        set
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

        set
        {
            nNowDashCount = value;
        }
    }
}
