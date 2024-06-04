using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CHpCanvasManager : MonoBehaviour
{
    #region private 변수
    GameObject oHpImage;
    Image imgHpBar;
    Image imgHpBarBack;
    #endregion

    void Start()
    {
        oHpImage = transform.GetChild(0).gameObject;
        imgHpBar = transform.GetChild(0).GetChild(2).GetComponent<Image>();
        imgHpBarBack = transform.GetChild(0).GetChild(1).GetComponent<Image>();
    }

    /// <summary>
    /// 적 HP Image를 활성화한다.
    /// </summary>
    public void ActiveHpImage()
    {
        if (!oHpImage.activeSelf)
        {
            oHpImage.SetActive(true);
        }
    }

    /// <summary>
    /// 적 HP Image를 비활성화한다.
    /// </summary>
    public void InActiveHpImage()
    {
        oHpImage.SetActive(false);
    }

    /// <summary>
    /// HP Image의 Fill 비율을 줄인다.
    /// </summary>
    /// <param name="percent">줄어든 HP %</param>
    public void DecreaseHpAmount(float percent)
    {
        imgHpBar.fillAmount = percent;

        StartCoroutine("DecreaseHpBackAmount");
    }

    /// <summary>
    /// HP Image 백그라운드 줄어드는 효과
    /// </summary>
    /// <returns></returns>
    IEnumerator DecreaseHpBackAmount()
    {
        yield return new WaitForSeconds(0.5f);

        while (imgHpBarBack.fillAmount >= imgHpBar.fillAmount + 0.01f)
        {
            imgHpBarBack.fillAmount = Mathf.Lerp(imgHpBarBack.fillAmount, imgHpBar.fillAmount, Time.deltaTime * 10.0f);

            yield return null;
        }

        imgHpBarBack.fillAmount = imgHpBar.fillAmount;
    }
}
