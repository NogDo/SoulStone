using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum ECharacter
{
    BARBARIAN
}

public class CCharacterFactory : MonoBehaviour
{
    #region public 변수
    public List<GameObject> oCharacterPrefabList;
    #endregion

    void Awake()
    {
        CreateCharacter(ECharacter.BARBARIAN);
    }

    /// <summary>
    /// 캐릭터 생성
    /// </summary>
    /// <param name="character">캐릭터 직업</param>
    public void CreateCharacter(ECharacter character)
    {
        GameObject oCharacter = null;

        switch (character)
        {
            case ECharacter.BARBARIAN:
                oCharacter = Instantiate(oCharacterPrefabList[0], transform.position, Quaternion.identity);
                break;

            default:
                print("캐릭터 생성 오류");
                break;
        }
    }
}
