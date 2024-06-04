using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCameraFollow : MonoBehaviour
{
    #region private ����
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
    /// ī�޶� �̵� (ĳ���͸� ���󰣴�.)
    /// </summary>
    void CameraMove()
    {
        Vector3 v3NowCameraPosition = v3StartCameraPosition + tfCharacter.position;

        transform.position = v3NowCameraPosition;
    }
}
