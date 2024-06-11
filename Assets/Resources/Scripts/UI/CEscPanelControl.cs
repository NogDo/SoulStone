using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEscPanelControl : MonoBehaviour
{
    void OnEnable()
    {
        Time.timeScale = 0.0f;
    }

    void OnDisable()
    {
        Time.timeScale = 1.0f;
    }

    /// <summary>
    /// 게임 종료 버튼 클릭
    /// </summary>
    public void Quit()
    {
        CSceneManager.Instace.PlayMainScene();
    }
}
