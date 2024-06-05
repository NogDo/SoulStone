using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterItemPickUp : MonoBehaviour
{
    #region private º¯¼ö
    CCharacter character;
    #endregion

    void Start()
    {
        character = transform.parent.GetComponent<CCharacter>();
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("EnemyXpGem"))
        {
            other.GetComponent<CEnemyXpGem>().MagnetToPlayer(transform.parent.position);
        }
    }
}
