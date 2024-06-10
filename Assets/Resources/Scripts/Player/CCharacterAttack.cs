using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CCharacterAttack : MonoBehaviour
{
    #region private 변수
    CCharacter character;
    List<CActiveSkillUICoolTime> activeSkillUICoolTime;

    IEnumerator[] Skill;
    #endregion

    /// <summary>
    /// 추가된 스킬을 사용할 코루틴을 실행한다.
    /// </summary>
    /// <param name="index">추가된 스킬의 번호(0 ~ 5)</param>
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
    /// 스킬의 파티클과 애니메이션을 재생하는 코루틴
    /// </summary>
    /// <param name="index">사용될 스킬의 번호</param>
    /// <returns></returns>
    IEnumerator UseSkill(int index)
    {
        float cooltime;
        string triggerName = "UseSkill" + (index + 1).ToString();
        activeSkillUICoolTime[index].transform.parent.GetChild(0).GetComponent<Image>().sprite = character.Skill[index].skillSpriteSquare;
        activeSkillUICoolTime[index].transform.parent.GetChild(0).gameObject.SetActive(true);
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
    /// 멀티캐스트가 되는지 여부 확인
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