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

        UseAddSkill(0);
    }

    /// <summary>
    /// �߰��� ��ų�� ����� �ڷ�ƾ�� �����Ѵ�.
    /// </summary>
    /// <param name="index">�߰��� ��ų�� ��ȣ(0 ~ 5)</param>
    public void UseAddSkill(int index)
    {
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