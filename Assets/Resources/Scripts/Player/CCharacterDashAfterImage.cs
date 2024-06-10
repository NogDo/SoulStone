using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterDashAfterImage : MonoBehaviour
{
    #region private º¯¼ö
    SkinnedMeshRenderer[] skinnedMeshRenderer;
    #endregion

    void Start()
    {
        skinnedMeshRenderer = transform.parent.GetChild(3).GetComponentsInChildren<SkinnedMeshRenderer>();
    }


    void Update()
    {
        
    }
}
