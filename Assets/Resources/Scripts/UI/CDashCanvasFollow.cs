using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CDashCanvasFollow : MonoBehaviour
{
    #region private ����
    Vector3 v3StartDashCanvasPosition;
    Vector3 v3StartCharacterPosition;
    #endregion

    #region public ����
    public Transform tfCharacter;
    #endregion


    void Awake()
    {
        v3StartDashCanvasPosition = transform.position;
        v3StartCharacterPosition = tfCharacter.position;
    }

    void LateUpdate()
    {
        DashCanvasMove();
    }

    /// <summary>
    /// ��� ĵ���� �̵� (ĳ���͸� ���󰣴�.)
    /// </summary>
    void DashCanvasMove()
    {
        Vector3 v3NowCanvasPosition = v3StartDashCanvasPosition + (tfCharacter.position - v3StartCharacterPosition);

        transform.position = v3NowCanvasPosition;
    }
}
