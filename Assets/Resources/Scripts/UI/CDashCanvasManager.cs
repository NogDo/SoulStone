using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CDashCanvasManager : MonoBehaviour
{
    #region public ����
    public GameObject oDashImage;
    public float fTime;
    #endregion

    #region private ����
    CCharacter character;
    Coroutine cImageCoolTime;

    List<GameObject> oDashCooltimeImageListWorld;
    GameObject oDashCooltimeImageUI;
    #endregion

    void Start()
    {
        character = FindObjectOfType<CCharacter>();
        oDashCooltimeImageListWorld = new List<GameObject>();
        oDashCooltimeImageUI = GameObject.Find("Image_CoolTime");

        AddDash(character.MaxDashCount);

        oDashCooltimeImageUI.SetActive(false);
    }

    /// <summary>
    /// ��� ĵ������ ��� �̹����� �߰��Ѵ�.
    /// </summary>
    public void AddDash(int addDashCount)
    {
        this.GetComponent<RectTransform>().sizeDelta = new Vector2
            (
                character.MaxDashCount * oDashImage.GetComponent<RectTransform>().sizeDelta.x + (character.MaxDashCount - 1) * 50.0f,
                oDashImage.GetComponent<RectTransform>().sizeDelta.y
            );

        for (int i = 0; i < addDashCount; ++i)
        {
            GameObject dashImage = Instantiate(oDashImage, transform);
            oDashCooltimeImageListWorld.Add(dashImage);
        }
    }

    /// <summary>
    /// �̹��� ��Ÿ�� ȿ�� ����
    /// </summary>
    public void PlayImageCoolTime()
    {
        oDashCooltimeImageListWorld[character.NowDashCount].transform.GetChild(1).gameObject.SetActive(true);
        oDashCooltimeImageUI.SetActive(true);

        if (cImageCoolTime == null)
        {
            cImageCoolTime = StartCoroutine("ImageCoolTime");
        }
    }

    /// <summary>
    /// fTime�� ���������� �پ��� �ڷ�ƾ
    /// </summary>
    /// <returns></returns>
    IEnumerator ImageCoolTime()
    {
        while (fTime > 0.0f)
        {
            fTime -= Time.deltaTime;

            yield return null;
        }

        for (int i = 0; i < oDashCooltimeImageListWorld.Count; ++i)
        {
            oDashCooltimeImageListWorld[i].transform.GetChild(1).gameObject.SetActive(false);
        }
        oDashCooltimeImageUI.SetActive(false);

        fTime = 2.0f;
        cImageCoolTime = null;
    }
}
