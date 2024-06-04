using System.Collections;
using System.Text;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class CDamageCanvasManager : MonoBehaviour
{
    #region private ����
    TMP_Text tmpDamage;
    GameObject oTarget;
    StringBuilder stringBuilder;

    Vector3 v3StartPosition;

    float fDisplayTime;
    #endregion

    void Start()
    {
        tmpDamage = transform.GetChild(0).GetComponent<TMP_Text>();
        oTarget = transform.parent.GetChild(0).gameObject;
        stringBuilder = new StringBuilder();

        v3StartPosition = transform.position;

        fDisplayTime = 1.0f;
    }

    /// <summary>
    /// ���� ���� �������� ȭ�鿡 ���� ���� �����ϴ� �޼���
    /// </summary>
    /// <param name="damage">���� ������</param>
    public void DisplayDamage(float damage)
    {
        transform.position = oTarget.transform.position + v3StartPosition;

        stringBuilder.Append("-").Append(damage.ToString());
        tmpDamage.text = stringBuilder.ToString();
        stringBuilder.Clear();

        StopCoroutine("DisplayTMP");
        StartCoroutine("DisplayTMP");
    }

    /// <summary>
    /// ȭ�� ������ �ؽ��� �����ְ� ���ִ� �ڷ�ƾ
    /// </summary>
    /// <returns></returns>
    IEnumerator DisplayTMP()
    {
        tmpDamage.gameObject.transform.localScale = Vector3.one;
        tmpDamage.gameObject.SetActive(true);

        yield return new WaitForSeconds(fDisplayTime);

        // ������ Text�� ũ�⸦ ���� ���δ�.
        while (tmpDamage.gameObject.transform.localScale.x >= 0.1f)
        {
            tmpDamage.gameObject.transform.localScale = Vector3.Lerp
                (
                tmpDamage.gameObject.transform.localScale,
                Vector3.zero,
                Time.deltaTime * 10.0f
                );

            yield return null;
        }

        tmpDamage.gameObject.SetActive(false);
    }
}
