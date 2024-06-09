using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Text;

public class CAbilityUIControl : MonoBehaviour
{
    #region private 변수
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
                // 데미지
                case 0:
                    stringBuilder.Append(character.Attack).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 치명타 확률
                case 1:
                    stringBuilder.Append(character.Critical).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 치명타 데미지
                case 2:
                    stringBuilder.Append(character.CriticalDamage).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 사전 빈도
                case 3:
                    stringBuilder.Append(character.CastFrequency).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 영역
                case 4:
                    stringBuilder.Append(character.Area).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 다중 시전
                case 5:
                    stringBuilder.Append(character.MultiCast).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 최대 체력
                case 6:
                    stringBuilder.Append(character.MaxHP);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 방어력
                case 7:
                    stringBuilder.Append(character.Deffence);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 데미지 감소
                case 8:
                    stringBuilder.Append(character.ReduceDamage);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 막기 파워
                case 9:
                    stringBuilder.Append(character.BlockChance);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 이동 속도
                case 10:
                    stringBuilder.Append(character.MoveSpeedPercent).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 대쉬 횟수
                case 11:
                    stringBuilder.Append(character.MaxDashCount);
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 경험치 계수
                case 12:
                    stringBuilder.Append(character.EXP).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;

                // 픽업 계수
                case 13:
                    stringBuilder.Append(character.PickUpArea).Append('%');
                    textValue[i].text = stringBuilder.ToString();
                    break;
            }

            stringBuilder.Clear();
        }
    }
}
