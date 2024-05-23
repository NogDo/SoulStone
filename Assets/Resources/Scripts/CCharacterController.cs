using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterController : MonoBehaviour
{
    #region private º¯¼ö
    CharacterController characterController;
    LayerMask lmGround;
    LayerMask lmPlayer;

    [SerializeField]
    float fSpeedMove;
    [SerializeField]
    float fGravityPower;
    #endregion

    void Awake()
    {
        characterController = GetComponent<CharacterController>();
        lmGround = LayerMask.GetMask("Ground");
        lmPlayer = LayerMask.GetMask("Player");
    }

    void Update()
    {
        CharacterMove();
        CharacterGravity();
        CharacterRotate();
    }

    void CharacterMove()
    {
        Vector3 v3Direction = new Vector3
            (
                Input.GetAxis("Horizontal"),
                0.0f,
                Input.GetAxis("Vertical")
            );

        characterController.Move(fSpeedMove * v3Direction * Time.deltaTime);
    }

    void CharacterGravity()
    {
        characterController.Move(Vector3.down * fGravityPower * Time.deltaTime);
    }

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
