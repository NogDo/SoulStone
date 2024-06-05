using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class CLevelUIControl : MonoBehaviour
{
    #region private º¯¼ö
    RectTransform tfXpBarImage;
    TMP_Text tmpLevel;

    float fXpBarMinWidth;
    float fXpBarMaxWidth;
    float fXpBarWidthLength;
    float fXpBarHeight;
    #endregion

    void Start()
    {
        tfXpBarImage = transform.GetChild(2).GetComponent<RectTransform>();
        tmpLevel = transform.GetChild(4).GetChild(0).GetComponent<TMP_Text>();

        fXpBarMinWidth = 140.0f;
        fXpBarMaxWidth = 1875.0f;
        fXpBarWidthLength = fXpBarMaxWidth - fXpBarMinWidth;
        fXpBarHeight = tfXpBarImage.sizeDelta.y;
    }


    public void SetXpBarLength(float percent)
    {
        if (percent < 0.01f)
        {
            tfXpBarImage.sizeDelta = new Vector2(100.0f, fXpBarHeight);
        }

        else
        {
            tfXpBarImage.sizeDelta = new Vector2(fXpBarMinWidth + fXpBarWidthLength * percent, fXpBarHeight);
        }
    }


    public void SetText(int level)
    {
        tmpLevel.text = level.ToString();
    }
}
