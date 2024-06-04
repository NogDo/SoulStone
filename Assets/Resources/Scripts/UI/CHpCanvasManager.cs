using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CHpCanvasManager : MonoBehaviour
{
    #region private ����
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
    /// �� HP Image�� Ȱ��ȭ�Ѵ�.
    /// </summary>
    public void ActiveHpImage()
    {
        if (!oHpImage.activeSelf)
        {
            oHpImage.SetActive(true);
        }
    }

    /// <summary>
    /// �� HP Image�� ��Ȱ��ȭ�Ѵ�.
    /// </summary>
    public void InActiveHpImage()
    {
        oHpImage.SetActive(false);
    }

    /// <summary>
    /// HP Image�� Fill ������ ���δ�.
    /// </summary>
    /// <param name="percent">�پ�� HP %</param>
    public void DecreaseHpAmount(float percent)
    {
        imgHpBar.fillAmount = percent;

        StartCoroutine("DecreaseHpBackAmount");
    }

    /// <summary>
    /// HP Image ��׶��� �پ��� ȿ��
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
