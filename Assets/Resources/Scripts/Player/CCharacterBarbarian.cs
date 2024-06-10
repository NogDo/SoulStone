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
        nSkillIndex = 0;

        // 캐릭터 스텟
        fDefaultMoveSpeed = 4.0f;
        fMoveSpeedAddPercent = 10.0f;
        fMaxHp = 120.0f;
        fHp = fMaxHp;
        fAttack = 0.0f;
        fDeffence = 100.0f;
        fMaxXp = 2000.0f;
        fNowXp = 0.0f;
        fCastFrequency = 25.0f;
        fArea = 0.0f;
        fMultiCast = 0.0f;
        fCritical = 15.0f;
        fCriticalDamage = 200.0f;
        fExp = 0.0f;
        fDefaultPickUpArea = 3.0f;
        fPickUpArea = 0.0f;
        fBlockChance = 100.0f;
        nReduceDamage = 0;
        nMaxDashCount = 1;
        nNowDashCount = nMaxDashCount;
        nLevel = 1;
        isCriticalChance = false;
    }

    void Start()
    {
        AddSkill(defaultSkill, 0);
    }
}
