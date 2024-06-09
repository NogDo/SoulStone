using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using System.Text;
using UnityEngine.UI;

public class CSelectSkillPanelControl : MonoBehaviour
{
    #region private ����
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
    List<int> selectedkillNumberList;
    List<ESkillGrade> selectedSkillGrade;

    bool isActiveSkillPanel;
    #endregion

    void Awake()
    {
        character = FindObjectOfType<CCharacter>();
        skillData = FindObjectOfType<CSkillData>();

        imgSkillFrame = new Image[3];
        imgGradeFrame = new Image[3];
        imgSkill = new Image[3];
        tmpSkillName = new TMP_Text[3];
        tmpSkillGrade = new TMP_Text[3];
        tmpSkillInfo = new TMP_Text[3];

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

        selectedkillNumberList = new List<int>();
        selectedSkillGrade = new List<ESkillGrade>();

        isActiveSkillPanel = false;
    }

    void OnEnable()
    {
        Time.timeScale = 0.0f;

        int randNum = Random.Range(1, 101);
        if (character.SkillIndex >= 6)
        {
            randNum = 11;
        }


        if (randNum >= 10)
        {
            isActiveSkillPanel = false;
            PassiveSkillPanel();
        }

        else
        {
            isActiveSkillPanel = true;
            ActiveSkillPanel();
        }
    }

    void OnDisable()
    {
        selectedkillNumberList.Clear();
        selectedSkillGrade.Clear();

        Time.timeScale = 1.0f;
    }

    /// <summary>
    /// ��ų �ε����� �����´�.
    /// </summary>
    /// <param name="grade">��ų ���</param>
    /// <returns></returns>
    int GetSkillNumber(ESkillGrade grade)
    {
        int skillNumber = Random.Range(0, skillData.PassiveSkillList.Count);

        // ���� ���Դ� ��ų �̶�� �ٽ� �̴´�.
        for (int i = 0; i < selectedkillNumberList.Count; i++)
        {
            if (skillNumber == selectedkillNumberList[i])
            {
                return GetSkillNumber(grade);
            }
        }

        // ���� ��ų ����� �����ϴ� ��ų�̶�� ��ų�� �߰�, �ƴ϶�� �ٽ� �̴´�.
        if (skillData.PassiveSkillList[skillNumber].minGrade <= grade &&
            skillData.PassiveSkillList[skillNumber].maxGrade >= grade)
        {
            selectedSkillGrade.Add(grade);
            selectedkillNumberList.Add(skillNumber);
            return skillNumber;
        }

        else
        {
            return GetSkillNumber(grade);
        }
    }

    /// <summary>
    /// ���� ��ų�� �ؽ�Ʈ ������ �����´�.
    /// </summary>
    /// <param name="grade">��ų ���</param>
    /// <param name="skillNumber">��ų �ε���</param>
    /// <returns></returns>
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
                        stringBuilder.Append("<color=white>").Append
                            (
                            Mathf.Abs(skillData.PassiveSkillList[skillNumber].fEffect[i])
                            );
                        break;

                    case ESkillGrade.UNCOMMON:
                        stringBuilder.Append("<color=green>").Append
                            (
                                Mathf.Abs
                                (
                                    skillData.PassiveSkillList[skillNumber].fEffect[i] +
                                    (skillData.PassiveSkillList[skillNumber].fEffect[i] * skillData.PassiveSkillList[skillNumber].fEffectAdditional[i])
                                )
                            );
                        break;

                    case ESkillGrade.RARE:
                        stringBuilder.Append("<color=#00ffff>").Append
                            (
                                Mathf.Abs
                                (
                                    skillData.PassiveSkillList[skillNumber].fEffect[i] +
                                    (skillData.PassiveSkillList[skillNumber].fEffect[i] * skillData.PassiveSkillList[skillNumber].fEffectAdditional[i] * 2)
                                )
                            );
                        break;

                    case ESkillGrade.EPIC:
                        stringBuilder.Append("<color=#ff00ff>").Append
                            (
                                Mathf.Abs
                                (
                                    skillData.PassiveSkillList[skillNumber].fEffect[i] +
                                    (skillData.PassiveSkillList[skillNumber].fEffect[i] * skillData.PassiveSkillList[skillNumber].fEffectAdditional[i] * 3)
                                )
                            );
                        break;

                    case ESkillGrade.LEGENDARY:
                        stringBuilder.Append("<color=yellow>").Append
                            (
                                Mathf.Abs
                                (
                                    skillData.PassiveSkillList[skillNumber].fEffect[i] +
                                    (skillData.PassiveSkillList[skillNumber].fEffect[i] * skillData.PassiveSkillList[skillNumber].fEffectAdditional[i] * 4)
                                )
                            );
                        break;
                }

                if (skillData.PassiveSkillList[skillNumber].isPercent)
                {
                    stringBuilder.Append("% ").Append("</color>");
                }

                else
                {
                    stringBuilder.Append(' ').Append("</color>");
                }
            }
        }

        return stringBuilder.ToString();
    }

    /// <summary>
    /// �� ��ų�� �ɷ�ġ�� �����Ͽ� ĳ���ͷ� ������.
    /// </summary>
    /// <param name="index">�� ��ų �ε���</param>
    public void SelectSkill(int index)
    {
        if (isActiveSkillPanel)
        {
            character.AddSkill(skillData.ActiveSkillList[index], character.SkillIndex);
        }

        else
        {
            ESkillEffectType[] effectType = (ESkillEffectType[])skillData.PassiveSkillList[selectedkillNumberList[index]].effectType.Clone();
            float[] effect = (float[])skillData.PassiveSkillList[selectedkillNumberList[index]].fEffect.Clone();
            float[] effectAdditioonal = (float[])skillData.PassiveSkillList[selectedkillNumberList[index]].fEffectAdditional.Clone();

            for (int i = 0; i < effectType.Length; i++)
            {
                switch (selectedSkillGrade[index])
                {
                    case ESkillGrade.UNCOMMON:
                        effect[i] += (effect[i] * effectAdditioonal[i]);
                        break;

                    case ESkillGrade.RARE:
                        effect[i] += (effect[i] * effectAdditioonal[i] * 2);
                        break;

                    case ESkillGrade.EPIC:
                        effect[i] += (effect[i] * effectAdditioonal[i] * 3);
                        break;

                    case ESkillGrade.LEGENDARY:
                        effect[i] += (effect[i] * effectAdditioonal[i] * 4);
                        break;
                }
            }

            character.AddAbility(effectType, effect);
        }
    }

    /// <summary>
    /// �нú� ��ų �г� Ȱ��ȭ
    /// </summary>
    void PassiveSkillPanel()
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
                tmpSkillGrade[i].text = "�Ϲ� �Ŀ�";

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
                tmpSkillGrade[i].text = "��� �Ŀ�";

                tmpSkillInfo[i].text = GetSkillInfo(ESkillGrade.UNCOMMON, skillNumber);
            }
            // RARE
            else if (gradeNumber <= 87)
            {
                skillNumber = GetSkillNumber(ESkillGrade.RARE);

                imgSkillFrame[i].sprite = skillFrameSprite[2];
                imgGradeFrame[i].sprite = gradeFrameSprite[2];
                imgSkill[i].sprite = skillData.PassiveSkillList[skillNumber].skillSprite;

                tmpSkillName[i].color = Color.cyan;
                tmpSkillName[i].text = skillData.PassiveSkillList[skillNumber].skillName;

                tmpSkillGrade[i].color = Color.cyan;
                tmpSkillGrade[i].text = "��� �Ŀ�";

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
                tmpSkillGrade[i].text = "���� �Ŀ�";

                tmpSkillInfo[i].text = GetSkillInfo(ESkillGrade.EPIC, skillNumber);
            }
            // LEGENDARY
            else if (gradeNumber <= 92)
            {
                skillNumber = GetSkillNumber(ESkillGrade.LEGENDARY);

                imgSkillFrame[i].sprite = skillFrameSprite[4];
                imgGradeFrame[i].sprite = gradeFrameSprite[4];
                imgSkill[i].sprite = skillData.PassiveSkillList[skillNumber].skillSprite;

                tmpSkillName[i].color = Color.yellow;
                tmpSkillName[i].text = skillData.PassiveSkillList[skillNumber].skillName;

                tmpSkillGrade[i].color = Color.yellow;
                tmpSkillGrade[i].text = "�������� �Ŀ�";

                tmpSkillInfo[i].text = GetSkillInfo(ESkillGrade.LEGENDARY, skillNumber);
            }
        }
    }

    /// <summary>
    /// ��Ƽ�� ��ų �г� Ȱ��ȭ
    /// </summary>
    void ActiveSkillPanel()
    {
        for (int i = 0; i < 3; i++)
        {
            imgSkillFrame[i].sprite = skillFrameSprite[0];
            imgGradeFrame[i].sprite = gradeFrameSprite[0];
            imgSkill[i].sprite = skillData.ActiveSkillList[i].skillSprite;

            tmpSkillName[i].color = Color.white;
            tmpSkillName[i].text = skillData.ActiveSkillList[i].skillName;

            tmpSkillGrade[i].color = Color.white;
            tmpSkillGrade[i].text = "��Ƽ�� ��ų";

            tmpSkillInfo[i].text = skillData.ActiveSkillList[i].skillInfo;
        }
    }
}
