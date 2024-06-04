using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCameraFollow : MonoBehaviour
{
    #region private 변수
    Transform tfCharacter;

    Vector3 v3StartCameraPosition;
    #endregion

    void Start()
    {
        tfCharacter = FindObjectOfType<CCharacter>().GetComponent<Transform>();

        v3StartCameraPosition = transform.position;
    }

    void LateUpdate()
    {
        CameraMove();
    }

    /// <summary>
    /// 카메라 이동 (캐릭터를 따라간다.)
    /// </summary>
    void CameraMove()
    {
        Vector3 v3NowCameraPosition = v3StartCameraPosition + tfCharacter.position;

        transform.position = v3NowCameraPosition;
    }
}
