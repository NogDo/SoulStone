using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CHpCanvasManager : MonoBehaviour
{
    #region private º¯¼ö
    GameObject oHpImage;
    Image imgHpBar;
    #endregion

    void Start()
    {
        oHpImage = transform.GetChild(0).gameObject;
        imgHpBar = transform.GetChild(0).GetChild(1).GetComponent<Image>();
    }

    public void ActiveHpImage()
    {
        if (!oHpImage.activeSelf)
        {
            oHpImage.SetActive(true);
        }
    }

    public void DecreaseHpAmount(float percent)
    {
        imgHpBar.fillAmount = percent;
    }
}
