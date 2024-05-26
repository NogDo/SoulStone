using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterAttack : MonoBehaviour
{
    #region public ����

    #endregion

    #region private ����
    Animator animator;

    IEnumerator skill1;
    #endregion

    void Awake()
    {
        animator = GetComponent<Animator>();

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

            animator.SetTrigger("UseSkill1");
        }
    }
}