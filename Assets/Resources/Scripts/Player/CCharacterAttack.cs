using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterAttack : MonoBehaviour
{
    #region private ����
    CCharacter character;
    List<CActiveSkillUICoolTime> activeSkillUICoolTime;

    IEnumerator[] Skill;
    #endregion

    /// <summary>
    /// �߰��� ��ų�� ����� �ڷ�ƾ�� �����Ѵ�.
    /// </summary>
    /// <param name="index">�߰��� ��ų�� ��ȣ(0 ~ 5)</param>
    public void UseAddSkill(int index)
    {
        if (character is null)
        {
            character = FindObjectOfType<CCharacter>();

            GameObject oActiveSkillPanel = GameObject.Find("ActiveSkill");
            activeSkillUICoolTime = new List<CActiveSkillUICoolTime>();
            for (int i = 0; i < oActiveSkillPanel.transform.childCount; i++)
            {
                activeSkillUICoolTime.Add(oActiveSkillPanel.transform.GetChild(i).GetChild(1).GetComponent<CActiveSkillUICoolTime>());
            }

            Skill = new IEnumerator[6];
        }

        Skill[index] = UseSkill(index);
        StartCoroutine(Skill[index]);
    }

    /// <summary>
    /// ��ų�� ��ƼŬ�� �ִϸ��̼��� ����ϴ� �ڷ�ƾ
    /// </summary>
    /// <param name="index">���� ��ų�� ��ȣ</param>
    /// <returns></returns>
    IEnumerator UseSkill(int index)
    {
        float cooltime;
        string triggerName = "UseSkill" + (index + 1).ToString();
        character.Skill[index].oParticle.GetComponent<CParticlePlay>().Attack = character.Skill[index].fAttack;

        while (true)
        {
            if (character.Skill[index].fCoolTime / (1 + character.CastFrequency / 100) >= 0.2f)
            {
                cooltime = character.Skill[index].fCoolTime / (1 + character.CastFrequency / 100);
            }

            else
            {
                cooltime = 0.2f;
            }

            activeSkillUICoolTime[index].ActiveCoolTime(character.Skill[index].fCoolTime, cooltime);

            yield return new WaitForSeconds(cooltime);

            character.Animator.SetTrigger(triggerName);

            if (character.Skill[index].oParticle.activeSelf)
            {
                character.Skill[index].oParticle.SetActive(false);
            }

            character.Skill[index].oParticle.SetActive(true);

            if (IsMultiCast())
            {
                yield return new WaitForSeconds(0.2f);

                character.Skill[index].oParticle.SetActive(false);
                character.Skill[index].oParticle.SetActive(true);
            }
        }
    }

    /// <summary>
    /// ��Ƽĳ��Ʈ�� �Ǵ��� ���� Ȯ��
    /// </summary>
    /// <returns></returns>
    bool IsMultiCast()
    {
        int nRandNum = Random.Range(1, 101);

        if (character.MultiCast >= nRandNum)
        {
            return true;
        }

        return false;
    }
}