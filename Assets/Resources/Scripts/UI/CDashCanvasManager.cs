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

    [SerializeField]
    List<GameObject> oDashImageList;
    #endregion

    void Start()
    {
        character = FindObjectOfType<CCharacter>();

        this.GetComponent<RectTransform>().sizeDelta = new Vector2
            (
                character.MaxDashCount * oDashImage.GetComponent<RectTransform>().sizeDelta.x + (character.MaxDashCount - 1) * 50.0f,
                oDashImage.GetComponent<RectTransform>().sizeDelta.y
            );

        for (int i = 0; i < character.MaxDashCount; ++i)
        {
            GameObject dashImage = Instantiate(oDashImage, transform);
            oDashImageList.Add(dashImage);
        }

        fTime = 2.0f;
    }

    /// <summary>
    /// 이미지 쿨타임 효과 실행
    /// </summary>
    public void PlayImageCoolTime()
    {
        oDashImageList[character.NowDashCount].transform.GetChild(1).gameObject.SetActive(true);

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

        for (int i = 0; i < oDashImageList.Count; ++i)
        {
            oDashImageList[i].transform.GetChild(1).gameObject.SetActive(false);
        }

        fTime = 2.0f;
        cImageCoolTime = null;
    }
}
