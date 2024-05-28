using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCameraFollow : MonoBehaviour
{
    #region private ����
    Transform tfCharacter;

    Vector3 v3StartCameraPosition;
    Vector3 v3StartCharacterPosition;
    #endregion

    void Start()
    {
        tfCharacter = FindObjectOfType<CCharacter>().GetComponent<Transform>();

        v3StartCameraPosition = transform.position;
        v3StartCharacterPosition = tfCharacter.position;
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
        Vector3 v3NowCameraPosition = v3StartCameraPosition + (tfCharacter.position - v3StartCharacterPosition);

        transform.position = v3NowCameraPosition;
    }
}
