using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterController : MonoBehaviour
{
    #region private 변수
    CCharacter character;

    LayerMask lmGround;
    #endregion

    void Start()
    {
        character = FindObjectOfType<CCharacter>();

        lmGround = LayerMask.GetMask("Ground");
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
        character.MoveDirection = new Vector3
            (
                Input.GetAxis("Horizontal"),
                0.0f,
                Input.GetAxis("Vertical")
            );


        // 이동 애니메이션 판별
        if (character.MoveDirection != Vector3.zero)
        {
            character.Animator.SetBool("IsMove", true);
        }

        else
        {
            character.Animator.SetBool("IsMove", false);
        }


        // 정규화
        float fMagnitude = character.MoveDirection.sqrMagnitude;

        if (fMagnitude > 1)
        {
            character.MoveDirection = character.MoveDirection.normalized;
        }


        // 캐릭터 방향에 따른 애니메이션 재생
        if (character.Animator.GetBool("IsMove"))
        {
            float velocityX = Vector3.Dot(character.MoveDirection, transform.right);
            float velocityZ = Vector3.Dot(character.MoveDirection, transform.forward);

            character.Animator.SetFloat("Horizontal", velocityX);
            character.Animator.SetFloat("Vertical", velocityZ);
        }

        character.MoveDirection *= character.MoveSpeed;

        // 중력
        if (!character.CharacterController.isGrounded)
        {
            Vector3 v3GravityVector = character.MoveDirection;
            v3GravityVector.y -= character.GravityPower;

            character.MoveDirection = v3GravityVector;
        }


        // 캐릭터 이동
        character.CharacterController.Move(character.MoveDirection * Time.deltaTime);
    }

    /// <summary>
    /// 캐릭터 마우스 방향으로 회전
    /// </summary>
    void CharacterRotate()
    {
        Ray rayCamera = Camera.main.ScreenPointToRay(Input.mousePosition);

        if (Physics.Raycast(rayCamera, out RaycastHit hit, float.MaxValue, lmGround))
        {
            character.MousePointerToWorldPosition = hit.point;
            character.RotateDirection = character.MousePointerToWorldPosition - transform.position;

            // 캐릭터와 마우스 포인터가 너무 가깝다면 회전을 시키지 않음
            if (character.RotateDirection.sqrMagnitude <= 0.5f)
            {
                return;
            }

            else if (character.RotateDirection.sqrMagnitude <= 1.0f)
            {
                character.RotateDirection *= 100.0f;
            }

            Quaternion qtRotation = Quaternion.LookRotation(character.RotateDirection);
            
            transform.rotation = qtRotation;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("EnemyWeapon"))
        {
            character.Hit(other.transform.GetComponentInParent<CEnemy>().GetDamage());
        }
    }
}