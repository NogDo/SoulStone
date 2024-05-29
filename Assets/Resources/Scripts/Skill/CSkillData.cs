using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// ��ų ������
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
    #region public ����
    public List<STSkillData> SkillList;
    #endregion
}
