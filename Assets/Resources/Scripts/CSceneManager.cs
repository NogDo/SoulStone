using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CSceneManager : MonoBehaviour
{
    static CSceneManager instance;

    void Awake()
    {
        if (instance is null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }

        else
        {
            print("¾À ¸Å´ÏÀú ÆÄ±«");
            Destroy(gameObject);
        }
    }

    public static CSceneManager Instace
    {
        get
        {
            if (instance is null)
            {
                GameObject oSceneManager = GameObject.Find("SceneManager");

                if (oSceneManager is null)
                {
                    oSceneManager = new GameObject("SceneManager");
                    oSceneManager.AddComponent<CSceneManager>();
                }
            }

            return instance;
        }
    }

    public void PlayMainScene()
    {
        SceneManager.LoadScene("MainScene");
    }


    public void PlayForestScene()
    {
        SceneManager.LoadScene("Forest");
    }
}
