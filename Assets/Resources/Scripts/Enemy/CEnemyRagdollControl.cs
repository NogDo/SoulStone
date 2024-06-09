using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyRagdollControl : MonoBehaviour
{

    #region private 변수
    [SerializeField]
    Rigidbody hip;
    [SerializeField]
    GameObject[] oRagdoll;

    Vector3[] ragdollPosition;
    Quaternion[] ragdollRotation;

    IEnumerator ragdollPlay;

    #endregion

    void Awake()
    {
        ragdollRotation = new Quaternion[oRagdoll.Length];
        ragdollPosition = new Vector3[oRagdoll.Length];

        for (int i = 0; i < oRagdoll.Length; i++)
        {
            ragdollPosition[i] = oRagdoll[i].transform.localPosition;
            ragdollRotation[i] = oRagdoll[i].transform.localRotation;
        }
    }

    void OnEnable()
    {
        ragdollPlay = RagdollPlay();
        StartCoroutine(ragdollPlay);
    }

    void OnDisable()
    {
        StopCoroutine(ragdollPlay);

        for (int i = 0; i < oRagdoll.Length; i++)
        {
            oRagdoll[i].transform.localPosition = ragdollPosition[i];
            oRagdoll[i].transform.localRotation = ragdollRotation[i];
        }
    }

    /// <summary>
    /// 레그돌 연출 실행
    /// </summary>
    /// <returns></returns>
    IEnumerator RagdollPlay()
    {
        float randomPower = Random.Range(750.0f, 1500.0f);

        hip.AddForce(-transform.forward * randomPower);

        yield return new WaitForSeconds(5.0f);

        gameObject.SetActive(false);
    }
}
