using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class CEnemy : MonoBehaviour
{
    #region protected 변수
    protected CEnemyPool enemyPool;
    protected Animator animator;
    protected Transform tfTarget;

    protected Vector3 v3SpawnPoint;
    protected Vector3[] v3Path;

    protected float fMoveSpeed;
    protected float fGravityPower;
    protected float fHp;
    protected float fAttack;
    protected int nEnemyNumber;
    protected int nTargetIndex;
    #endregion

    void Awake()
    {
        enemyPool = FindObjectOfType<CEnemyPool>();
        animator = GetComponent<Animator>();
        tfTarget = FindObjectOfType<CCharacter>().GetComponent<Transform>();
    }

    //void Start()
    //{
    //    enemyPool = FindObjectOfType<CEnemyPool>();
    //    animator = GetComponent<Animator>();
    //    tfTarget = FindObjectOfType<CCharacter>().GetComponent<Transform>();
    //}

    /// <summary>
    /// 각각의 적 능력치 초기화
    /// </summary>
    public abstract void Init();

    public void OnPathFound(Vector3[] newPath, bool pathSuccessful)
    {
        if (pathSuccessful)
        {
            v3Path = newPath;
            StopCoroutine("FollowPath");
            StartCoroutine("FollowPath");
        }
    }

    IEnumerator FollowPath()
    {
        print("움직임");
        Vector3 currentWayPoint = v3Path[0];

        while (true)
        {
            if (transform.position == currentWayPoint)
            {
                nTargetIndex++;

                if (nTargetIndex >= v3Path.Length)
                {
                    yield break; 
                }

                currentWayPoint = v3Path[nTargetIndex];
            }

            transform.position = Vector3.MoveTowards(transform.position, currentWayPoint, 3.0f * Time.deltaTime);

            yield return null;
        }
    }
}