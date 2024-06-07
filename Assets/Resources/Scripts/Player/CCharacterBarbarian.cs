using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterBarbarian : CCharacter
{
    #region private 변수
    [SerializeField]
    STActiveSkillData defaultSkill;
    #endregion

    public CCharacterBarbarian()
    {
        Init();
    }

    /// <summary>
    /// 바바리안 능력치 초기화
    /// </summary>
    public override void Init()
    {
        // 이동 관련
        fGravityPower = 9.8f;
        fDashPower = 15.0f;

        // 스킬
        characterActiveSkills = new STActiveSkillData[6];

        // 캐릭터 스텟
        fMoveSpeed = 5.0f;
        fMaxHp = 120.0f;
        fHp = fMaxHp;
        fAttack = 100.0f;
        fDeffence = 0.0f;
        fMaxXp = 2000.0f;
        fNowXp = 0.0f;
        nMaxDashCount = 2;
        nNowDashCount = nMaxDashCount;
        nLevel = 1;
    }

    void Start()
    {
        AddSkill(defaultSkill, 0);
    }
}
