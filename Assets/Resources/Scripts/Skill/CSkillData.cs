using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 스킬 데이터
/// </summary>
[System.Serializable]
public struct STSkillData
{
    public AnimationClip animationClip;
    public GameObject oParticle;
    public float fAttack;
    public float fCoolTime;
}

public class CSkillData : MonoBehaviour
{
    #region public 변수
    public List<STSkillData> SkillList;
    #endregion
}
