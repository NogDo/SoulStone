using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Video;

public class CVideoControl : MonoBehaviour
{
    #region private º¯¼ö
    VideoPlayer videoPlayer;
    #endregion

    void Start()
    {
        videoPlayer = GetComponent<VideoPlayer>();

        StartCoroutine(FindFinishTime());
    }


    IEnumerator FindFinishTime()
    {
        long frameCount = (long)videoPlayer.frameCount;
        long currentFrame = videoPlayer.frame;

        while (frameCount - 5 >= currentFrame)
        {
            currentFrame = videoPlayer.frame;
            yield return null;
        }

        yield return new WaitForSeconds(1.0f);

        CSceneManager.Instace.PlayMainScene();
    }
}
