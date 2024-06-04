using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyRagdollControl : MonoBehaviour
{

    #region private 변수
    [SerializeField]
    Rigidbody hip;

    IEnumerator ragdollPlay;
    #endregion

    void OnEnable()
    {
        ragdollPlay = RagdollPlay();
        StartCoroutine(ragdollPlay);
    }

    void OnDisable()
    {
        StopCoroutine(ragdollPlay);
    }

    /// <summary>
    /// 레그돌 연출 실행
    /// </summary>
    /// <returns></returns>
    IEnumerator RagdollPlay()
    {
        hip.AddForce(-transform.forward * 1000.0f);

        yield return new WaitForSeconds(5.0f);

        gameObject.SetActive(false);
    }
}
