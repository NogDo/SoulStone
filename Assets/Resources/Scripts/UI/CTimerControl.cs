using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Text;

public class CTimerControl : MonoBehaviour
{
    #region private 변수
    StringBuilder stringBuilder;
    TMP_Text tmpTimer;

    int nMinute;
    int nSecond;
    #endregion

    void Start()
    {
        stringBuilder = new StringBuilder();
        tmpTimer = GetComponent<TMP_Text>();

        nMinute = 0;
        nSecond = 0;

        StartCoroutine("TimerStart");
    }

    /// <summary>
    /// 타이머 시작
    /// </summary>
    /// <returns></returns>
    IEnumerator TimerStart()
    {
        while (true)
        {
            stringBuilder.Append("생존 시간 : ").Append(nMinute).Append(":");

            if (nSecond < 10)
            {
                stringBuilder.Append(0).Append(nSecond);
            }

            else
            {
                stringBuilder.Append(nSecond);
            }

            tmpTimer.text = stringBuilder.ToString();
            stringBuilder.Clear();

            yield return new WaitForSeconds(1.0f);

            nSecond++;

            if (nSecond >= 60)
            {
                nSecond = 0;
                nMinute++;
            }
        }
    }
}
