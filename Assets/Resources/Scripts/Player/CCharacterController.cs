using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterController : MonoBehaviour
{
    #region private ����
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
    /// ĳ���� �̵�
    /// </summary>
    void CharacterMove()
    {
        character.MoveDirection = new Vector3
            (
                Input.GetAxis("Horizontal"),
                0.0f,
                Input.GetAxis("Vertical")
            );


        // �̵� �ִϸ��̼� �Ǻ�
        if (character.MoveDirection != Vector3.zero)
        {
            character.Animator.SetBool("IsMove", true);
        }

        else
        {
            character.Animator.SetBool("IsMove", false);
        }


        // ����ȭ
        float fMagnitude = character.MoveDirection.sqrMagnitude;

        if (fMagnitude > 1)
        {
            character.MoveDirection = character.MoveDirection.normalized;
        }


        // ĳ���� ���⿡ ���� �ִϸ��̼� ���
        if (character.Animator.GetBool("IsMove"))
        {
            float velocityX = Vector3.Dot(character.MoveDirection, transform.right);
            float velocityZ = Vector3.Dot(character.MoveDirection, transform.forward);

            character.Animator.SetFloat("Horizontal", velocityX);
            character.Animator.SetFloat("Vertical", velocityZ);
        }

        character.MoveDirection *= character.MoveSpeed;

        // �߷�
        if (!character.CharacterController.isGrounded)
        {
            Vector3 v3GravityVector = character.MoveDirection;
            v3GravityVector.y -= character.GravityPower;

            character.MoveDirection = v3GravityVector;
        }


        // ĳ���� �̵�
        character.CharacterController.Move(character.MoveDirection * Time.deltaTime);
    }

    /// <summary>
    /// ĳ���� ���콺 �������� ȸ��
    /// </summary>
    void CharacterRotate()
    {
        Ray rayCamera = Camera.main.ScreenPointToRay(Input.mousePosition);

        if (Physics.Raycast(rayCamera, out RaycastHit hit, float.MaxValue, lmGround))
        {
            character.MousePointerToWorldPosition = hit.point;
            character.RotateDirection = character.MousePointerToWorldPosition - transform.position;

            // ĳ���Ϳ� ���콺 �����Ͱ� �ʹ� �����ٸ� ȸ���� ��Ű�� ����
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

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("EnemyWeapon"))
        {
            character.Hit(other.transform.GetComponentInParent<CEnemy>().GetDamage());
        }

        else if (other.CompareTag("EnemyXpGem"))
        {
            print("Ȯ��");
            character.GainXp(other.GetComponent<CEnemyXpGem>().XP);
            other.gameObject.SetActive(false);
        }
    }
}