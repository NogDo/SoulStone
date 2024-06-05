using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Text;

public class CPlayerHpUIConrtol : MonoBehaviour
{
    #region private 변수
    RectTransform tfHpImage;
    TMP_Text tmpHp;

    float fHpImageMaxWidth;
    float fHpImageMaxHeight;
    #endregion

    /// <summary>
    /// 플레이어 HP UI 초기화 진행
    /// </summary>
    /// <param name="hp">플레이어 Hp</param>
    public void Init(int hp)
    {
        tfHpImage = transform.GetChild(0).GetComponent<RectTransform>();
        tmpHp = transform.GetChild(1).GetComponent<TMP_Text>();

        fHpImageMaxWidth = tfHpImage.sizeDelta.x;
        fHpImageMaxHeight = tfHpImage.sizeDelta.y;

        tmpHp.text = hp.ToString();
    }

    /// <summary>
    /// 현재 플레이어 체력으로 Text와 Image값을 변경
    /// </summary>
    /// <param name="hp">플레이어 현재 체력</param>
    /// <param name="percent">플레이어 현재 체력%</param>
    public void ChangeValue(int hp, float percent)
    {
        tfHpImage.sizeDelta = new Vector2(fHpImageMaxWidth * percent, fHpImageMaxHeight);
        tmpHp.text = hp.ToString();
    }
}
