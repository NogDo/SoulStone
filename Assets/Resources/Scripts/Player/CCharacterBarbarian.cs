using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterBarbarian : CCharacter
{
    #region private 변수
    [SerializeField]
    STSkillData defaultSkill;
    #endregion

    public CCharacterBarbarian()
    {
        Init();
    }

    /// <summary>
    /// 바바리안 초기화
    /// </summary>
    public override void Init()
    {
        fMoveSpeed = 5.0f;
        fGravityPower = 9.8f;
        fDashPower = 3.0f;

        nMaxDashCount = 2;
        nNowDashCount = nMaxDashCount;

        characterSKills = new STSkillData[6];
    }

    void Start()
    {
        AddSkill(defaultSkill, 0);
    }
}
