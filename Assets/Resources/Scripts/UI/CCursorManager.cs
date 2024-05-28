using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CCursorManager : MonoBehaviour
{
    #region private 변수
    [SerializeField]
    List<Texture2D> t2CursorList;
    #endregion

    void Awake()
    {
        Cursor.SetCursor(t2CursorList[0], new Vector2(t2CursorList[0].width / 2, t2CursorList[0].height / 2), CursorMode.ForceSoftware);
    }
}
