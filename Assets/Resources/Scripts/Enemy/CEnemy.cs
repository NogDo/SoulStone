using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class CEnemy : MonoBehaviour
{
    #region protected º¯¼ö
    protected Animator animator;
    protected Vector3 v3SpawnPoint;

    protected float fMoveSpeed;
    protected float fGravityPower;
    protected float fHp;
    protected float fAttack;
    #endregion
}
