using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CDashCanvasFollow : MonoBehaviour
{
    #region private ����
    Transform tfCharacter;

    Vector3 v3StartDashCanvasPosition;
    Vector3 v3StartCharacterPosition;
    #endregion

    void Start()
    {
        tfCharacter = FindObjectOfType<CCharacter>().GetComponent<Transform>();

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
