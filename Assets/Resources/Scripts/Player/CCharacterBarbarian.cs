using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterBarbarian : CCharacter
{
    #region private ����
    [SerializeField]
    STSkillData defaultSkill;
    #endregion

    public CCharacterBarbarian()
    {
        Init();
    }

    /// <summary>
    /// �ٹٸ��� �ɷ�ġ �ʱ�ȭ
    /// </summary>
    public override void Init()
    {
        fMoveSpeed = 5.0f;
        fGravityPower = 9.8f;
        fDashPower = 15.0f;

        fHp = 150.0f;
        fAttack = 10.0f;
        fDeffence = 0.0f;

        nMaxDashCount = 2;
        nNowDashCount = nMaxDashCount;
        nLevel = 1;

        characterSKills = new STSkillData[6];
    }

    void Start()
    {
        AddSkill(defaultSkill, 0);
    }
}
