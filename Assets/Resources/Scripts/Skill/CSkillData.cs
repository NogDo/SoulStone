using System.Collections;
using System.Collections.Generic;
using UnityEngine;

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
    #region public º¯¼ö
    public List<STSkillData> SkillList;
    #endregion
}
