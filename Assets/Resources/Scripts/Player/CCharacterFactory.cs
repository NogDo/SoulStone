using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ECharacter
{
    BARBARIAN
}

public class CCharacterFactory : MonoBehaviour
{
    #region public ����
    public List<GameObject> oCharacterPrefabList;
    #endregion

    void Awake()
    {
        CreateCharacter(ECharacter.BARBARIAN);
    }

    public void CreateCharacter(ECharacter character)
    {
        GameObject oCharacter = null;

        switch (character)
        {
            case ECharacter.BARBARIAN:
                oCharacter = Instantiate(oCharacterPrefabList[0], transform.position, Quaternion.identity);
                oCharacter.AddComponent<CCharacterBarbarian>();
                break;

            default:
                print("ĳ���� ���� ����");
                break;
        }

        oCharacter.AddComponent<CCharacterController>();
        oCharacter.AddComponent<CCharacterDash>();
        oCharacter.AddComponent<CCharacterAttack>();
    }
}
