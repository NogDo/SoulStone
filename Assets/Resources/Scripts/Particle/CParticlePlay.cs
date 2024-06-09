using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CParticlePlay : MonoBehaviour
{
    #region public ����
    public float fTotalRunTime;
    public float[] fColliderRunTime;
    #endregion

    #region private ����
    protected IEnumerator runParticle;
    protected Collider particleCollider;

    protected float fAttack;
    #endregion

    void Awake()
    {
        particleCollider = GetComponent<Collider>();
    }

    /// <summary>
    /// ��ų �ε���
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
