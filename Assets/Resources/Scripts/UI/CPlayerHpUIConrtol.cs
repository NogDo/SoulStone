using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Text;

public class CPlayerHpUIConrtol : MonoBehaviour
{
    #region private ����
    RectTransform tfHpImage;
    TMP_Text tmpHp;

    float fHpImageMaxWidth;
    float fHpImageMaxHeight;
    #endregion

    /// <summary>
    /// �÷��̾� HP UI �ʱ�ȭ ����
    /// </summary>
    /// <param name="hp">�÷��̾� Hp</param>
    public void Init(int hp)
    {
        tfHpImage = transform.GetChild(0).GetComponent<RectTransform>();
        tmpHp = transform.GetChild(1).GetComponent<TMP_Text>();

        fHpImageMaxWidth = tfHpImage.sizeDelta.x;
        fHpImageMaxHeight = tfHpImage.sizeDelta.y;

        tmpHp.text = hp.ToString();
    }

    /// <summary>
    /// ���� �÷��̾� ü������ Text�� Image���� ����
    /// </summary>
    /// <param name="hp">�÷��̾� ���� ü��</param>
    /// <param name="percent">�÷��̾� ���� ü��%</param>
    public void ChangeValue(int hp, float percent)
    {
        tfHpImage.sizeDelta = new Vector2(fHpImageMaxWidth * percent, fHpImageMaxHeight);
        tmpHp.text = hp.ToString();
    }
}
