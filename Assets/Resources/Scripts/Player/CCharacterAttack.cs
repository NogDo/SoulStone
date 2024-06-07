using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterAttack : MonoBehaviour
{
    #region public 변수

    #endregion

    #region private 변수
    CCharacter character;

    IEnumerator[] Skill;
    #endregion

    void Start()
    {
        character = FindObjectOfType<CCharacter>();

        Skill = new IEnumerator[6];

        UseAddSkill(0);
    }

    /// <summary>
    /// 추가된 스킬을 사용할 코루틴을 실행한다.
    /// </summary>
    /// <param name="index">추가된 스킬의 번호(0 ~ 5)</param>
    public void UseAddSkill(int index)
    {
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

        while (true)
        {
            cooltime = (character.Skill[index].fCoolTime >= 0.2f) ? character.Skill[index].fCoolTime : 0.2f;

            yield return new WaitForSeconds(cooltime);

            character.Animator.SetTrigger(triggerName);

            if (character.Skill[index].oParticle.activeSelf)
            {
                character.Skill[index].oParticle.SetActive(false);
            }

            character.Skill[index].oParticle.SetActive(true);
        }
    }
}