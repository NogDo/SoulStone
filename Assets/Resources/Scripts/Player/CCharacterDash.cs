using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterDash : MonoBehaviour
{
    #region private ����
    CCharacter character;
    CDashCanvasManager dashCanvas;
    #endregion

    void Start()
    {
        character = FindObjectOfType<CCharacter>();
        dashCanvas = FindObjectOfType<CDashCanvasManager>();
    }

    void Update()
    {
        CharacterDash();
    }

    /// <summary>
    /// ĳ���� ���콺 �������� �뽬 �Ǻ�
    /// </summary>
    void CharacterDash()
    {
        if (Input.GetMouseButtonDown(1))
        {
            if (character.NowDashCount > 0)
            {
                StartCoroutine("Dash");
            }
        }

        else if (Input.GetMouseButtonDown(0))
        {
            character.MoveSpeed += 1;
        }
    }

    /// <summary>
    /// ĳ���� ��� �ڷ�ƾ
    /// </summary>
    /// <returns></returns>
    IEnumerator Dash()
    {
        float fStartTime = Time.time;
        Vector3 v3DashDirection = character.MoveDirection;

        v3DashDirection.y = 0.0f;

        // ĳ���Ͱ� �̵����� �ƴ϶�� ���콺 �������� ���
        if (v3DashDirection == Vector3.zero)
        {
            v3DashDirection = character.RotateDirection.normalized * character.MoveSpeed;
        }

        // ĳ���Ͱ� ��ø� ó�� ��ٸ� ��� ��Ÿ�� �ڷ�ƾ ����
        if (character.NowDashCount == character.MaxDashCount)
        {
            StartCoroutine("DashCoolDown");
        }
        character.DecreaseNowDashCount();
        dashCanvas.PlayImageCoolTime();

        // ���
        while (Time.time < fStartTime + 0.2f)
        {
            character.CharacterController.Move(v3DashDirection * character.DashPower * Time.deltaTime);

            yield return null;
        }
    }

    /// <summary>
    /// ��� ��Ÿ�� �ڷ�ƾ
    /// </summary>
    /// <returns></returns>
    IEnumerator DashCoolDown()
    {
        yield return new WaitForSeconds(2.0f);

        character.FillNowDashCount();
    }
}
