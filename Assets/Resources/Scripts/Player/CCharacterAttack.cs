using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterAttack : MonoBehaviour
{
    #region public ����

    #endregion

    #region private ����
    CCharacter character;

    IEnumerator skill1;
    #endregion

    void Awake()
    {
        character = CCharacter.Instance;

        skill1 = Skill1();
        StartCoroutine(skill1);
    }

    void Update()
    {
        
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