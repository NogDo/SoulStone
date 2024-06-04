using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CDashCanvasFollow : MonoBehaviour
{
    #region private 변수
    Transform tfCharacter;

    Vector3 v3StartDashCanvasPosition;
    #endregion

    void Start()
    {
        tfCharacter = FindObjectOfType<CCharacter>().GetComponent<Transform>();

        v3StartDashCanvasPosition = transform.position;
    }

    void LateUpdate()
    {
        DashCanvasMove();
    }

    /// <summary>
    /// 대시 캔버스 이동 (캐릭터를 따라간다.)
    /// </summary>
    void DashCanvasMove()
    {
        Vector3 v3NowCanvasPosition = v3StartDashCanvasPosition + tfCharacter.position;

        transform.position = v3NowCanvasPosition;
    }
}