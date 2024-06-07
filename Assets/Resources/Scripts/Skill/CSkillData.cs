using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// ��Ƽ�� ��ų�� ���� Ÿ��
/// </summary>
public enum ESkillAttackType
{
    SWING,
    AREA,
    PHYSICAL,
    FRONTAL
}

/// <summary>
/// �нú� ��ų�� ����, ���ҽ�Ű�� Ÿ��
/// </summary>
public enum ESkillEffectType
{
    DAMAGE,
    COOLTIME,
    AREA,
    MULTICAST,
    CRITICAL,
    CRITICALDAMAGE,
    SPEED,
    EXP,
    PICKUPAREA,
    HP,
    ARMOR,
    BLOCK,
    REDUCEDAMAGE,
    CRITICALCHANCE
}

/// <summary>
/// �нú� ��ų ���
/// </summary>
public enum ESkillGrade
{
    COMMON,
    UNCOMMON,
    RARE,
    EPIC,
    LEGENDARY
}

/// <summary>
/// ��Ƽ�� ��ų ������
/// </summary>
[System.Serializable]
public struct STActiveSkillData
{
    public ESkillAttackType[] attackType;
    public AnimationClip animationClip;
    public GameObject oParticle;
    public Sprite skillSprite;
    public string skillName;
    [TextArea(1, 10)]
    public string skillInfo;
    public float fAttack;
    public float fCoolTime;
}

/// <summary>
/// �нú� ��ų ������
/// </summary>
[System.Serializable]
public struct STPassiveSkillData
{
    public ESkillEffectType[] effectType;
    public ESkillGrade minGrade;
    public ESkillGrade maxGrade;
    public Sprite skillSprite;
    public string skillName;
    [TextArea(1, 10)]
    public string[] skillInfo;
    public float[] fEffect;
    public float[] fEffectAdditional;
}

public class CSkillData : MonoBehaviour
{
    #region public ����
    public List<STActiveSkillData> ActiveSkillList;
    public List<STPassiveSkillData> PassiveSkillList;
    #endregion
}
