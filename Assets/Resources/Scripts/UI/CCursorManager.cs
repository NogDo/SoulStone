using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CCursorManager : MonoBehaviour
{
    #region private ����
    [SerializeField]
    List<Texture2D> t2CursorList;
    #endregion

    void Awake()
    {
        t2CursorList[0] = ScaleTexture(t2CursorList[0], 59, 60);

        Cursor.SetCursor(t2CursorList[0], new Vector2(t2CursorList[0].width / 2, t2CursorList[0].height / 2), CursorMode.ForceSoftware);
    }


    void Update()
    {
        
    }

    Texture2D ScaleTexture(Texture2D source, int targetWidth, int targetHeight)
    {
        Texture2D t2Result = new Texture2D(targetWidth, targetHeight, source.format, true);

        Color32[] rpixels = t2Result.GetPixels32(0);
        float incX = (1.0f / (float)targetWidth);
        float incY = (1.0f / (float)targetHeight);
        for (int px = 0; px < rpixels.Length; px++)
        {
            rpixels[px] = source.GetPixelBilinear(incX * ((float)px % targetWidth), incY * ((float)Mathf.Floor(px / targetWidth)));
        }
        t2Result.SetPixels32(rpixels, 0);
        t2Result.Apply();

        return t2Result;
    }
}
