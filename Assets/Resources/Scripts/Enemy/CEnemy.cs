using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class CEnemy : MonoBehaviour
{
    #region protected ����
    protected CEnemyPool enemyPool;
    protected Animator animator;
    protected Vector3 v3SpawnPoint;

    protected float fMoveSpeed;
    protected float fGravityPower;
    protected float fHp;
    protected float fAttack;
    #endregion

    void Awake()
    {
        enemyPool = FindObjectOfType<CEnemyPool>();
        animator = GetComponent<Animator>();
    }

    /// <summary>
    /// ������ �� �ɷ�ġ �ʱ�ȭ
    /// </summary>
    public abstract void Init();
}