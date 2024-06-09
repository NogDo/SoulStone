using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Text;

public class CPlayerHitCanvasManager : MonoBehaviour
{
    #region private ����
    GameObject oTarget;
    List<TMP_Text> tmpDamageList;
    [SerializeField]
    GameObject oTextPrefab;
    StringBuilder stringBuilder;

    Vector3 v3StartPosition;

    float fDisplayTime;
    int nPointer;
    #endregion

    void Start()
    {
        oTarget = FindObjectOfType<CCharacter>().gameObject;
        tmpDamageList = new List<TMP_Text>();
        stringBuilder = new StringBuilder();

        for (int i = 0; i < transform.childCount; i++)
        {
            tmpDamageList.Add(transform.GetChild(i).GetComponent<TMP_Text>());
        }

        v3StartPosition = transform.position;

        fDisplayTime = 1.0f;
        nPointer = -1;
    }

    /// <summary>
    /// �÷��̾ ���� �������� ȭ�鿡 ����ϱ� ���� �����ϴ� �޼���
    /// </summary>
    /// <param name="damage">���� ������</param>
    public void DisplayDamage(float damage)
    {
        transform.position = oTarget.transform.position + v3StartPosition;

        // ��� �ؽ�Ʈ�� Ȱ��ȭ ���¶�� �ϳ��� �� �������ش�.
        if (CheckAllTextActive())
        {
            GameObject tmp = Instantiate(oTextPrefab, transform);
            tmpDamageList.Add(tmp.GetComponent<TMP_Text>());
        }

        if (damage == 0.0f)
        {
            stringBuilder.Append("<color=white>").Append("BLOCK").Append("</color>");
        }

        else
        {
            stringBuilder.Append("<color=red>").Append('-').Append(damage).Append("</color>");
        }

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
        StartCoroutine(DisplayTMP(nPointer));
    }

    /// <summary>
    /// ��� �ؽ�Ʈ�� Ȱ��ȭ �������� Ȯ��
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
    /// ȭ�� ������ �ؽ�Ʈ�� �����ְ� ���ִ� �ڷ�ƾ
    /// </summary>
    /// <returns></returns>
    IEnumerator DisplayTMP(int index)
    {
        tmpDamageList[index].gameObject.transform.localScale = Vector3.one;
        tmpDamageList[index].gameObject.SetActive(true);

        yield return new WaitForSeconds(fDisplayTime);

        // ������ Text�� ũ�⸦ ���� ���δ�.
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

        tmpDamageList[index].gameObject.SetActive(false);
    }
}
