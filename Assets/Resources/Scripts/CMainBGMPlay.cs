using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CMainBGMPlay : MonoBehaviour
{
    void Start()
    {
        CSoundManager.Instace.PlayMainBGM();
    }
}
