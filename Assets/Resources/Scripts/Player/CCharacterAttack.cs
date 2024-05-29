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

        Skill[0] = Skill1();
        StartCoroutine(Skill[0]);
    }

    /// <summary>
    /// 첫번째 스킬 사용, 애니메이션과 파티클을 재생한다.
    /// </summary>
    /// <returns></returns>
    IEnumerator Skill1()
    {
        while (true)
        {
            yield return new WaitForSeconds(character.SKill[0].fCoolTime);

            character.Animator.SetTrigger("UseSkill1");


            if (character.SKill[0].oParticle.activeSelf)
            {
                character.SKill[0].oParticle.SetActive(false);
            }

            character.SKill[0].oParticle.SetActive(true);
        }
    }
}