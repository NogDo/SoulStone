using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCameraFollow : MonoBehaviour
{
    #region private 변수
    Vector3 v3StartCameraPosition;
    Vector3 v3StartCharacterPosition;
    #endregion

    #region public 변수
    public Transform tfCharacter;
    #endregion

    void Awake()
    {
        v3StartCameraPosition = transform.position;
        v3StartCharacterPosition = tfCharacter.position;
    }

    void LateUpdate()
    {
        CameraMove();
    }

    void CameraMove()
    {
        Vector3 v3NowCameraPosition = v3StartCameraPosition + (tfCharacter.position - v3StartCharacterPosition);

        transform.position = v3NowCameraPosition;
    }
}
