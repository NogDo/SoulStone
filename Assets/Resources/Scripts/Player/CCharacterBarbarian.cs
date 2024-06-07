using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterBarbarian : CCharacter
{
    #region private ����
    [SerializeField]
    STActiveSkillData defaultSkill;
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
        // �̵� ����
        fGravityPower = 9.8f;
        fDashPower = 15.0f;

        // ��ų
        characterActiveSkills = new STActiveSkillData[6];

        // ĳ���� ����
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
