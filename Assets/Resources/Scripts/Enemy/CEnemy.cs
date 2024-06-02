using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class CEnemy : MonoBehaviour
{
    #region protected ����
    protected CEnemyPool enemyPool;
    protected Animator animator;
    protected Transform tfTarget;

    protected Vector3 v3SpawnPoint;

    protected float fMoveSpeed;
    protected float fRotateSpeed;
    protected float fStoppingDistance = 10.0f;
    protected float fGravityPower;
    protected float fHp;
    protected float fAttack;
    protected float fTurnDistance = 5.0f;
    protected int nEnemyNumber;
    protected int nTargetIndex;
    #endregion

    void Awake()
    {
        enemyPool = FindObjectOfType<CEnemyPool>();
        animator = GetComponent<Animator>();
        tfTarget = FindObjectOfType<CCharacter>().GetComponent<Transform>();
    }

    /// <summary>
    /// ������ �� �ɷ�ġ �ʱ�ȭ
    /// </summary>
    public abstract void Init();
}