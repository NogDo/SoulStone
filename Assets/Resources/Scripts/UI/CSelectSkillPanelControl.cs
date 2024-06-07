using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Text;
using UnityEngine.UI;

public class CSelectSkillPanelControl : MonoBehaviour
{
    #region private 변수
    CCharacter character;
    CSkillData skillData;

    [SerializeField]
    Sprite[] skillFrameSprite;
    [SerializeField]
    Sprite[] gradeFrameSprite;

    Image[] imgSkillFrame;
    Image[] imgGradeFrame;
    Image[] imgSkill;
    TMP_Text[] tmpSkillName;
    TMP_Text[] tmpSkillGrade;
    TMP_Text[] tmpSkillInfo;

    StringBuilder stringBuilder;
    #endregion

    void Awake()
    {
        skillData = FindObjectOfType<CSkillData>();

        for (int i = 0; i < 3; i++)
        {
            imgSkillFrame[i] = transform.GetChild(i).GetComponent<Image>();
            imgGradeFrame[i] = transform.GetChild(i).GetChild(1).GetComponent<Image>();
            imgSkill[i] = transform.GetChild(i).GetChild(2).GetComponent<Image>();
            tmpSkillName[i] = transform.GetChild(i).GetChild(3).GetComponent<TMP_Text>();
            tmpSkillGrade[i] = transform.GetChild(i).GetChild(4).GetComponent<TMP_Text>();
            tmpSkillInfo[i] = transform.GetChild(i).GetChild(5).GetComponent<TMP_Text>();
        }

        stringBuilder = new StringBuilder();
    }

    void OnEnable()
    {
        for (int i = 0; i < 3; i++)
        {
            int gradeNumber = Random.Range(1, 93);
            int skillNumber;

            // COMMON
            if (gradeNumber <= 50)
            {
                skillNumber = GetSkillNumber(ESkillGrade.COMMON);

                imgSkillFrame[i].sprite = skillFrameSprite[0];
                imgGradeFrame[i].sprite = gradeFrameSprite[0];
                imgSkill[i].sprite = skillData.PassiveSkillList[skillNumber].skillSprite;

                tmpSkillName[i].color = Color.white;
                tmpSkillName[i].text = skillData.PassiveSkillList[skillNumber].skillName;

                tmpSkillGrade[i].color = Color.white;
                tmpSkillGrade[i].text = "일반 파워";

                tmpSkillInfo[i].text = GetSkillInfo(ESkillGrade.COMMON, skillNumber);
            }
            // UNCOMMON
            else if (gradeNumber <= 75)
            {
                skillNumber = GetSkillNumber(ESkillGrade.UNCOMMON);

                imgSkillFrame[i].sprite = skillFrameSprite[1];
                imgGradeFrame[i].sprite = gradeFrameSprite[1];
                imgSkill[i].sprite = skillData.PassiveSkillList[skillNumber].skillSprite;

                tmpSkillName[i].color = Color.green;
                tmpSkillName[i].text = skillData.PassiveSkillList[skillNumber].skillName;

                tmpSkillGrade[i].color = Color.green;
                tmpSkillGrade[i].text = "고급 파워";

                tmpSkillInfo[i].text = GetSkillInfo(ESkillGrade.UNCOMMON, skillNumber);
            }
            // RARE
            else if (gradeNumber <= 87)
            {
                skillNumber = GetSkillNumber(ESkillGrade.RARE);

                imgSkillFrame[i].sprite = skillFrameSprite[2];
                imgGradeFrame[i].sprite = gradeFrameSprite[2];
                imgSkill[i].sprite = skillData.PassiveSkillList[skillNumber].skillSprite;

                tmpSkillName[i].color = Color.blue;
                tmpSkillName[i].text = skillData.PassiveSkillList[skillNumber].skillName;

                tmpSkillGrade[i].color = Color.blue;
                tmpSkillGrade[i].text = "희귀 파워";

                tmpSkillInfo[i].text = GetSkillInfo(ESkillGrade.RARE, skillNumber);
            }
            // EPIC
            else if (gradeNumber <= 91)
            {
                skillNumber = GetSkillNumber(ESkillGrade.EPIC);

                imgSkillFrame[i].sprite = skillFrameSprite[3];
                imgGradeFrame[i].sprite = gradeFrameSprite[3];
                imgSkill[i].sprite = skillData.PassiveSkillList[skillNumber].skillSprite;

                tmpSkillName[i].color = Color.magenta;
                tmpSkillName[i].text = skillData.PassiveSkillList[skillNumber].skillName;

                tmpSkillGrade[i].color = Color.magenta;
                tmpSkillGrade[i].text = "에픽 파워";

                tmpSkillInfo[i].text = GetSkillInfo(ESkillGrade.EPIC, skillNumber);
            }
            // LEGENDARY
            else if (gradeNumber <= 92)
            {
                skillNumber = GetSkillNumber(ESkillGrade.LEGENDARY);

                imgSkillFrame[i].sprite = skillFrameSprite[3];
                imgGradeFrame[i].sprite = gradeFrameSprite[3];
                imgSkill[i].sprite = skillData.PassiveSkillList[skillNumber].skillSprite;

                tmpSkillName[i].color = Color.yellow;
                tmpSkillName[i].text = skillData.PassiveSkillList[skillNumber].skillName;

                tmpSkillGrade[i].color = Color.yellow;
                tmpSkillGrade[i].text = "레전더리 파워";

                tmpSkillInfo[i].text = GetSkillInfo(ESkillGrade.LEGENDARY, skillNumber);
            }
        }
    }

    void OnDisable()
    {
        if (character is null)
        {
            character = FindObjectOfType<CCharacter>();
        }

        Time.timeScale = 1.0f;
    }

    int GetSkillNumber(ESkillGrade grade)
    {
        int skillNumber = Random.Range(0, skillData.PassiveSkillList.Count);

        if (skillData.PassiveSkillList[skillNumber].minGrade <= grade &&
            skillData.PassiveSkillList[skillNumber].maxGrade >= grade)
        {
            return skillNumber;
        }

        else
        {
            return GetSkillNumber(grade);
        }
    }

    string GetSkillInfo(ESkillGrade grade, int skillNumber)
    {
        stringBuilder.Clear();

        for (int i = 0; i < skillData.PassiveSkillList[skillNumber].skillInfo.Length; i++)
        {
            stringBuilder.Append(skillData.PassiveSkillList[skillNumber].skillInfo[i]).Append(' ');

            if (skillData.PassiveSkillList[skillNumber].fEffect.Length - 1 >= i)
            {
                switch (grade)
                {
                    case ESkillGrade.COMMON:
                        stringBuilder.Append
                            (
                            skillData.PassiveSkillList[skillNumber].fEffect[i]
                            ).Append(' ');
                        break;

                    case ESkillGrade.UNCOMMON:
                        stringBuilder.Append
                            (
                            skillData.PassiveSkillList[skillNumber].fEffect[i] * (skillData.PassiveSkillList[skillNumber].fEffectAdditional[i] + 1)
                            ).Append(' ');
                        break;

                    case ESkillGrade.RARE:
                        stringBuilder.Append
                            (
                            skillData.PassiveSkillList[skillNumber].fEffect[i] * (skillData.PassiveSkillList[skillNumber].fEffectAdditional[i] + 2)
                            ).Append(' ');
                        break;

                    case ESkillGrade.EPIC:
                        stringBuilder.Append
                            (
                            skillData.PassiveSkillList[skillNumber].fEffect[i] * (skillData.PassiveSkillList[skillNumber].fEffectAdditional[i] + 3)
                            ).Append(' ');
                        break;

                    case ESkillGrade.LEGENDARY:
                        stringBuilder.Append
                            (
                            skillData.PassiveSkillList[skillNumber].fEffect[i] * (skillData.PassiveSkillList[skillNumber].fEffectAdditional[i] + 4)
                            ).Append(' ');
                        break;
                }
            }
        }

        return stringBuilder.ToString();
    }
}
