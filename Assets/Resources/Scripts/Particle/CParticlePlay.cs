using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CParticlePlay : MonoBehaviour
{
    #region public º¯¼ö
    public float fRunTime;
    #endregion

    #region
    IEnumerator runParticle;
    #endregion

    void OnEnable()
    {
        runParticle = RunParticle();
        StartCoroutine(runParticle);
    }

    void OnDisable()
    {
        StopCoroutine(runParticle);
    }

    IEnumerator RunParticle()
    {
        yield return new WaitForSeconds(fRunTime);

        gameObject.SetActive(false);
    }
}
