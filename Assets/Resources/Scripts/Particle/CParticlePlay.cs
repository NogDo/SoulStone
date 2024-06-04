using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CParticlePlay : MonoBehaviour
{
    #region public 변수
    public float fTotalRunTime;
    public float fColliderRunTime;
    #endregion

    #region
    IEnumerator runParticle;
    Collider particleCollider;
    #endregion

    void Awake()
    {
        particleCollider = GetComponent<Collider>();
    }

    void OnEnable()
    {
        runParticle = RunParticle();
        StartCoroutine(runParticle);
    }

    void OnDisable()
    {
        StopCoroutine(runParticle);
    }

    /// <summary>
    /// 파티클을 재생한다.
    /// </summary>
    /// <returns></returns>
    IEnumerator RunParticle()
    {
        particleCollider.enabled = true;

        yield return new WaitForSeconds(fColliderRunTime);

        particleCollider.enabled = false;

        yield return new WaitForSeconds(fTotalRunTime - fColliderRunTime);

        gameObject.SetActive(false);
    }
}
