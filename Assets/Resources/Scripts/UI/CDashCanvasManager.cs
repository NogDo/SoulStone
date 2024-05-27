using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CDashCanvasManager : MonoBehaviour
{
    #region public 변수
    public GameObject oDashImage;
    #endregion

    #region private 변수
    CCharacter character;

    [SerializeField]
    List<GameObject> oDashImageList;
    #endregion

    void Awake()
    {
        character = CCharacter.Instance;

        for (int i = 0; i < character.MaxDashCount; ++i)
        {
            oDashImageList.Add(oDashImage);
        }

        this.GetComponent<RectTransform>().sizeDelta = new Vector2
            (
                character.MaxDashCount * oDashImage.GetComponent<RectTransform>().sizeDelta.x + (character.MaxDashCount - 1) * 50.0f,
                oDashImage.GetComponent<RectTransform>().sizeDelta.y
            );
    }

    void Update()
    {

    }
}
