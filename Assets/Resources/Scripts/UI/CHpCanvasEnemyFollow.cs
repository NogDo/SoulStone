using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CHpCanvasEnemyFollow : MonoBehaviour
{
    #region private ����
    Transform tfTarget;

    Vector3 v3StartHpCanvasPosition;
    Vector3 v3StartTargetPosition;
    #endregion

    void Start()
    {
        tfTarget = transform.parent.GetChild(0).GetComponent<Transform>();

        v3StartHpCanvasPosition = transform.position;
        v3StartTargetPosition = tfTarget.position;
    }

    void LateUpdate()
    {
        HpCanvasMove();
    }

    /// <summary>
    /// HP ĵ���� �̵� (���� ���󰣴�.)
    /// </summary>
    void HpCanvasMove()
    {
        Vector3 v3NowCanvasPosition = v3StartHpCanvasPosition + (tfTarget.position - v3StartTargetPosition);

        transform.position = v3NowCanvasPosition;
    }
}
