using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterAttack : MonoBehaviour
{
    #region public ����

    #endregion

    #region private ����
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
    /// ù��° ��ų ���, �ִϸ��̼ǰ� ��ƼŬ�� ����Ѵ�.
    /// </summary>
    /// <returns></returns>
    IEnumerator Skill1()
    {
        while (true)
        {
            yield return new WaitForSeconds(character.Skill[0].fCoolTime);

            character.Animator.SetTrigger("UseSkill1");


            if (character.Skill[0].oParticle.activeSelf)
            {
                character.Skill[0].oParticle.SetActive(false);
            }

            character.Skill[0].oParticle.SetActive(true);
        }
    }
}