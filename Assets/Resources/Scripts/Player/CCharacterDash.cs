using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterDash : MonoBehaviour
{
    #region private 변수
    CCharacter character;

    #endregion

    void Awake()
    {
        character = CCharacter.Instance;
    }

    void Update()
    {
        CharacterDash();
    }

    /// <summary>
    /// 캐릭터 마우스 방향으로 대쉬 판별
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
    /// 캐릭터 대시 코루틴
    /// </summary>
    /// <returns></returns>
    IEnumerator Dash()
    {
        float fStartTime = Time.time;
        Vector3 v3DashDirection = character.MoveDirection;

        v3DashDirection.y = 0.0f;

        // 캐릭터가 이동중이 아니라면 마우스 방향으로 대시
        if (v3DashDirection == Vector3.zero)
        {
            v3DashDirection = character.RotateDirection.normalized * character.MoveSpeed;
        }

        // 캐릭터가 대시를 처음 썼다면 대시 쿨타임 코루틴 실행
        if (character.NowDashCount == character.MaxDashCount)
        {
            StartCoroutine("DashCoolDown");
        }
        character.NowDashCount--;

        // 대시
        while (Time.time < fStartTime + 0.2f)
        {
            character.CharacterController.Move(v3DashDirection * character.DashPower * Time.deltaTime);

            yield return null;
        }
    }

    /// <summary>
    /// 대시 쿨타임 코루틴
    /// </summary>
    /// <returns></returns>
    IEnumerator DashCoolDown()
    {
        yield return new WaitForSeconds(2.0f);

        character.NowDashCount = character.MaxDashCount;
    }
}
