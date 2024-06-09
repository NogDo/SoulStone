using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CDashCanvasManager : MonoBehaviour
{
    #region public 변수
    public GameObject oDashImage;
    public float fTime;
    #endregion

    #region private 변수
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
    /// 대시 캔버스에 대시 이미지를 추가한다.
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
    /// 이미지 쿨타임 효과 실행
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
    /// fTime이 지속적으로 줄어드는 코루틴
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
