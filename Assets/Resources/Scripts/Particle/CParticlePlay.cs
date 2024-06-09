using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CParticlePlay : MonoBehaviour
{
    #region public 변수
    public float fTotalRunTime;
    public float[] fColliderRunTime;
    #endregion

    #region private 변수
    protected IEnumerator runParticle;
    protected Collider particleCollider;

    protected float fAttack;
    #endregion

    void Awake()
    {
        particleCollider = GetComponent<Collider>();
    }

    /// <summary>
    /// 스킬 인덱스
    /// </summary>
    public float Attack
    {
        get
        {
            return fAttack;
        }

        set
        {
            fAttack = value;
        }
    }
}
