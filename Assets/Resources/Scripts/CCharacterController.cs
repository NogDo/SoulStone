using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterController : MonoBehaviour
{
    #region private 변수
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
    /// 캐릭터 이동
    /// </summary>
    void CharacterMove()
    {
        Vector3 v3Direction = new Vector3
            (
                Input.GetAxis("Horizontal"),
                0.0f,
                Input.GetAxis("Vertical")
            );


        // 이동 애니메이션 판별
        if (v3Direction != Vector3.zero)
        {
            animator.SetBool("IsMove", true);
        }

        else
        {
            animator.SetBool("IsMove", false);
        }


        // 정규화
        float fMagnitude = v3Direction.sqrMagnitude;

        if (fMagnitude <= 1)
        {
            v3Direction *= fSpeedMove;
        }

        else
        {
            v3Direction = v3Direction.normalized * fSpeedMove;
        }


        // 중력
        if (!characterController.isGrounded)
        {
            v3Direction.y -= fGravityPower;
        }


        // 캐릭터 이동
        characterController.Move(v3Direction * Time.deltaTime);


        // 캐릭터 방향에 따른 애니메이션 재생
        float velocityX = Vector3.Dot(v3Direction, transform.right);
        float velocityZ = Vector3.Dot(v3Direction, transform.forward);

        animator.SetFloat("Horizontal", velocityX);
        animator.SetFloat("Vertical", velocityZ);
    }

    /// <summary>
    /// 캐릭터 마우스 방향으로 회전
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
