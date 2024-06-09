using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CActiveSkillUICoolTime : MonoBehaviour
{
    #region private 변수
    Image imageCoolTime;
    #endregion

    void Start()
    {
        imageCoolTime = GetComponent<Image>();
    }

    /// <summary>
    /// 액티브 스킬 UI의 쿨타임을 실행
    /// </summary>
    /// <param name="defaultCoolTime">스킬의 기본 쿨타임</param>
    /// <param name="nowCoolTime">줄어든 쿨타임</param>
    public void ActiveCoolTime(float defaultCoolTime, float nowCoolTime)
    {
        StartCoroutine(CoolTime(defaultCoolTime, nowCoolTime));
    }

    /// <summary>
    /// 쿨타임 이미지의 Amount값을 낮추는 코루틴
    /// </summary>
    /// <param name="defaultCoolTime">스킬의 기본 쿨타임</param>
    /// <param name="nowCoolTime">줄어든 쿨타임</param>
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
