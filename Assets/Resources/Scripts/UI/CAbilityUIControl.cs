using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Text;

public class CAbilityUIControl : MonoBehaviour
{
    #region private ����
    CCharacter character;

    [SerializeField]
    List<TMP_Text> textValue;
    StringBuilder stringBuilder;
    #endregion

    void OnEnable()
    {
        if (character is null)
        {
            character = FindObjectOfType<CCharacter>();
            stringBuilder = new StringBuilder();
        }

        for (int i = 0; i < textValue.Count; i++)
        {
            switch (i)
            {
                // ������
                case 0:
                    stringBuilder.Append(character.Attack).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ġ��Ÿ Ȯ��
                case 1:
                    stringBuilder.Append(character.Critical).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ġ��Ÿ ������
                case 2:
                    stringBuilder.Append(character.CriticalDamage).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ���� ��
                case 3:
                    stringBuilder.Append(character.CastFrequency).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ����
                case 4:
                    stringBuilder.Append(character.Area).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ���� ����
                case 5:
                    stringBuilder.Append(character.MultiCast).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // �ִ� ü��
                case 6:
                    stringBuilder.Append(character.MaxHP);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ����
                case 7:
                    stringBuilder.Append(character.Deffence);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ������ ����
                case 8:
                    stringBuilder.Append(character.ReduceDamage);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ���� �Ŀ�
                case 9:
                    stringBuilder.Append(character.BlockChance);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // �̵� �ӵ�
                case 10:
                    stringBuilder.Append(character.MoveSpeedPercent).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // �뽬 Ƚ��
                case 11:
                    stringBuilder.Append(character.MaxDashCount);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // ����ġ ���
                case 12:
                    stringBuilder.Append(character.EXP).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // �Ⱦ� ���
                case 13:
                    stringBuilder.Append(character.PickUpArea).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;
            }

            stringBuilder.Clear();
        }
    }
}
