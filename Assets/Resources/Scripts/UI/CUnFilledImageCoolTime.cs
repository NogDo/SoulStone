using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CUnFilledImageCoolTime : MonoBehaviour
{
    #region private 변수
    CDashCanvasManager dashCanvas;
    Image unFilledImage;

    IEnumerator decreaseFillAmount;
    #endregion

    void OnEnable()
    {
        if (dashCanvas == null)
        {
            dashCanvas = FindObjectOfType<CDashCanvasManager>();
            unFilledImage = GetComponent<Image>();
        }

        decreaseFillAmount = DecreaseFillAmount();
        StartCoroutine(decreaseFillAmount);
    }

    void OnDisable()
    {
        StopCoroutine(decreaseFillAmount);

        unFilledImage.fillAmount = 1.0f;
    }

    /// <summary>
    /// FillAmount 감소
    /// </summary>
    /// <returns></returns>
    IEnumerator DecreaseFillAmount()
    {
        while (true)
        {
            unFilledImage.fillAmount = dashCanvas.fTime / 2.0f;

            yield return null;
        }
    }
}
