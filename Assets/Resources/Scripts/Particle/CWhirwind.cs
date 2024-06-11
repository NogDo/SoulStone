using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CWhirwind : CParticlePlay
{
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
        float colliderRunTime = 0.0f;

        for (int i = 0; i < fColliderRunTime.Length; i++)
        {
            CSoundManager.Instace.PlaySoundEffect(0, 0);

            particleCollider.enabled = true;
            yield return new WaitForSeconds(fColliderRunTime[i]);
            particleCollider.enabled = false;

            colliderRunTime += fColliderRunTime[i];
        }

        yield return new WaitForSeconds(fTotalRunTime - colliderRunTime);

        gameObject.SetActive(false);
    }
}
