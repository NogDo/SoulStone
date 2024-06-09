using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController : MonoBehaviour
{
    #region private
    [SerializeField]
    GameObject oEscPanel;
    #endregion

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            oEscPanel.SetActive(true);
        }
    }
}
