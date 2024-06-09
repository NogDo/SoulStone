using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CDoubleSwing : CParticlePlay
{
    void OnEnable()
    {
        runParticle = RunParticle();
        StartCoroutine(runParticle);
    }

    void OnDisable()
    {
        StopCoroutine(runParticle);

        transform.GetChild(0).gameObject.SetActive(false);
        transform.GetChild(1).gameObject.SetActive(false);
    }


    /// <summary>
    /// 파티클을 재생한다.
    /// </summary>
    /// <returns></returns>
    IEnumerator RunParticle()
    {
        float colliderRunTime = 0.0f;

        for (int i = 0; i < fColliderRunTime.Length; i++)
        {
            transform.GetChild(i).gameObject.SetActive(true);
            particleCollider.enabled = true;
            yield return new WaitForSeconds(fColliderRunTime[i]);
            particleCollider.enabled = false;

            colliderRunTime += fColliderRunTime[i];
        }

        yield return new WaitForSeconds(fTotalRunTime - colliderRunTime);

        gameObject.SetActive(false);
    }
}
