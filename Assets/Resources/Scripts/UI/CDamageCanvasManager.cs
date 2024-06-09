using System.Collections;
using System.Text;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class CDamageCanvasManager : MonoBehaviour
{
    #region private 변수
    GameObject oTarget;
    StringBuilder stringBuilder;
    List<TMP_Text> tmpDamageList;
    [SerializeField]
    GameObject oTextPrefab;

    Vector3 v3StartPosition;

    float fDisplayTime;
    int nPointer;
    #endregion

    void Start()
    {
        oTarget = transform.parent.GetChild(0).gameObject;
        stringBuilder = new StringBuilder();
        tmpDamageList = new List<TMP_Text>();

        for (int i = 0; i < transform.childCount; i++)
        {
            tmpDamageList.Add(transform.GetChild(i).GetComponent<TMP_Text>());
        }

        v3StartPosition = transform.position;

        fDisplayTime = 1.0f;
        nPointer = -1;
    }

    /// <summary>
    /// 적이 받은 데미지를 화면에 띄우기 위해 실행하는 메서드
    /// </summary>
    /// <param name="damage">받은 데미지</param>
    public void DisplayDamage(float damage, bool isCritical)
    {
        transform.position = oTarget.transform.position + v3StartPosition;

        // 모든 텍스트가 활성화 상태라면 하나를 더 생성해준다.
        if (CheckAllTextActive())
        {
            GameObject tmp = Instantiate(oTextPrefab, transform);
            tmpDamageList.Add(tmp.GetComponent<TMP_Text>());
        }

        stringBuilder.Append("-").Append(damage.ToString());

        if (nPointer == tmpDamageList.Count - 1)
        {
            nPointer = 0;
            tmpDamageList[nPointer].text = stringBuilder.ToString();
        }

        else
        {
            nPointer++;
            tmpDamageList[nPointer].text = stringBuilder.ToString();
        }

        stringBuilder.Clear();

        StartCoroutine(DisplayTMP(nPointer, isCritical));
    }

    /// <summary>
    /// 모든 텍스트가 활성화 상태인지 확인
    /// </summary>
    bool CheckAllTextActive()
    {
        for (int i = 0; i < tmpDamageList.Count; i++)
        {
            if (!tmpDamageList[i].gameObject.activeSelf)
            {
                return false;
            }
        }

        return true;
    }

    /// <summary>
    /// 화면 데미지 텍스트를 보여주고 없애는 코루틴
    /// </summary>
    /// <returns></returns>
    IEnumerator DisplayTMP(int index, bool isCritical)
    {
        Vector2 randPosition;
        randPosition.x = Random.Range(-500, 500);
        randPosition.y = Random.Range(0, -1000);

        tmpDamageList[index].gameObject.transform.localScale = Vector3.one;
        tmpDamageList[index].gameObject.transform.localPosition = new Vector3(randPosition.x, randPosition.y, 0.0f);
        tmpDamageList[index].gameObject.SetActive(true);

        if (isCritical)
        {
            tmpDamageList[index].transform.GetChild(0).gameObject.SetActive(true);
        }

        yield return new WaitForSeconds(fDisplayTime);

        // 데미지 Text의 크기를 점점 줄인다.
        while (tmpDamageList[index].gameObject.transform.localScale.x >= 0.1f)
        {
            tmpDamageList[index].gameObject.transform.localScale = Vector3.Lerp
                (
                tmpDamageList[index].gameObject.transform.localScale,
                Vector3.zero,
                Time.deltaTime * 10.0f
                );

            yield return null;
        }

        tmpDamageList[index].transform.GetChild(0).gameObject.SetActive(false);
        tmpDamageList[index].gameObject.SetActive(false);
    }
}
