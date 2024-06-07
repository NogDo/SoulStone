using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

/// <summary>
/// 액티브 스킬의 공격 타입
/// </summary>
public enum ESkillAttackType
{
    SWING,
    AREA,
    PHYSICAL,
    FRONTAL
}

/// <summary>
/// 패시브 스킬이 증가, 감소시키는 타입
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
/// 패시브 스킬 등급
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
/// 액티브 스킬 데이터
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
/// 패시브 스킬 데이터
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
    #region public 변수
    public List<STActiveSkillData> ActiveSkillList;
    public List<STPassiveSkillData> PassiveSkillList;
    #endregion
}
