using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class CEnemy : MonoBehaviour
{
    #region protected 변수
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
    /// 각각의 적 능력치 초기화
    /// </summary>
    public abstract void Init();
}