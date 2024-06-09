using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CActiveSkillUICoolTime : MonoBehaviour
{
    #region private ����
    Image imageCoolTime;
    #endregion

    void Start()
    {
        imageCoolTime = GetComponent<Image>();
    }

    /// <summary>
    /// ��Ƽ�� ��ų UI�� ��Ÿ���� ����
    /// </summary>
    /// <param name="defaultCoolTime">��ų�� �⺻ ��Ÿ��</param>
    /// <param name="nowCoolTime">�پ�� ��Ÿ��</param>
    public void ActiveCoolTime(float defaultCoolTime, float nowCoolTime)
    {
        StartCoroutine(CoolTime(defaultCoolTime, nowCoolTime));
    }

    /// <summary>
    /// ��Ÿ�� �̹����� Amount���� ���ߴ� �ڷ�ƾ
    /// </summary>
    /// <param name="defaultCoolTime">��ų�� �⺻ ��Ÿ��</param>
    /// <param name="nowCoolTime">�پ�� ��Ÿ��</param>
    /// <returns></returns>
    IEnumerator CoolTime(float defaultCoolTime, float nowCoolTime)
    {
        while (nowCoolTime > 0)
        {
            imageCoolTime.fillAmount = nowCoolTime / defaultCoolTime;
            nowCoolTime -= Time.deltaTime;

            yield return null;
        }

        imageCoolTime.fillAmount = 0.0f;
    }
}
