using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyAttackBoundary : MonoBehaviour
{

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            transform.parent.GetComponent<CEnemy>().IsInAttackBoundary = true;
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            transform.parent.GetComponent<CEnemy>().IsInAttackBoundary = false;
        }
    }
}
