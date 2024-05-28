using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterAttack : MonoBehaviour
{
    #region public 변수

    #endregion

    #region private 변수
    CCharacter character;

    IEnumerator skill1;
    #endregion

    void Start()
    {
        character = FindObjectOfType<CCharacter>();

        skill1 = Skill1();
        StartCoroutine(skill1);
    }

    IEnumerator Skill1()
    {
        while (true)
        {
            yield return new WaitForSeconds(1.0f);

            character.Animator.SetTrigger("UseSkill1");
        }
    }
}