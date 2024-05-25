using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterController : MonoBehaviour
{
    #region private ����
    CharacterController characterController;
    Animator animator;
    LayerMask lmGround;
    LayerMask lmPlayer;

    [SerializeField]
    float fSpeedMove;
    [SerializeField]
    float fGravityPower;

    Vector3 v3Move;
    #endregion

    void Awake()
    {
        characterController = GetComponent<CharacterController>();
        animator = GetComponent<Animator>();
        lmGround = LayerMask.GetMask("Ground");
        lmPlayer = LayerMask.GetMask("Player");
    }

    void Update()
    {
        CharacterMove();
        CharacterRotate();
    }

    /// <summary>
    /// ĳ���� �̵�
    /// </summary>
    void CharacterMove()
    {
        Vector3 v3Direction = new Vector3
            (
                Input.GetAxis("Horizontal"),
                0.0f,
                Input.GetAxis("Vertical")
            );


        // �̵� �ִϸ��̼� �Ǻ�
        if (v3Direction != Vector3.zero)
        {
            animator.SetBool("IsMove", true);
        }

        else
        {
            animator.SetBool("IsMove", false);
        }


        // ����ȭ
        float fMagnitude = v3Direction.sqrMagnitude;

        if (fMagnitude <= 1)
        {
            v3Direction *= fSpeedMove;
        }

        else
        {
            v3Direction = v3Direction.normalized * fSpeedMove;
        }


        // �߷�
        if (!characterController.isGrounded)
        {
            v3Direction.y -= fGravityPower;
        }


        // ĳ���� �̵�
        characterController.Move(v3Direction * Time.deltaTime);


        // ĳ���� ���⿡ ���� �ִϸ��̼� ���
        float velocityX = Vector3.Dot(v3Direction, transform.right);
        float velocityZ = Vector3.Dot(v3Direction, transform.forward);

        animator.SetFloat("Horizontal", velocityX);
        animator.SetFloat("Vertical", velocityZ);
    }

    /// <summary>
    /// ĳ���� ���콺 �������� ȸ��
    /// </summary>
    void CharacterRotate()
    {
        Ray rayCamera = Camera.main.ScreenPointToRay(Input.mousePosition);

        if (Physics.Raycast(rayCamera, out RaycastHit hit, float.MaxValue, lmGround))
        {
            Vector3 v3Target = hit.point;
            Vector3 v3Direction = v3Target - transform.position;

            Quaternion qtRotation = Quaternion.LookRotation(v3Direction);
            
            transform.rotation = qtRotation;
        }
    }
}
