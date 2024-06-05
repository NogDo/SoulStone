using UnityEngine;

public class CEnemyXpGem : MonoBehaviour
{
    #region private 변수
    Rigidbody rb;
    CEnemyXpGemPool enemyXpGemPool;

    float fXp;
    #endregion

    void OnEnable()
    {
        if (enemyXpGemPool is null)
        {
            enemyXpGemPool = FindObjectOfType<CEnemyXpGemPool>();
        }

        if (rb is null)
        {
            rb = GetComponent<Rigidbody>();
        }
    }

    void OnDisable()
    {
        fXp = 0.0f;
        enemyXpGemPool.BackToPool(gameObject);
    }

    /// <summary>
    /// 젬의 경험치
    /// </summary>
    public float XP
    {
        get
        {
            return fXp;
        }
    }

    /// <summary>
    /// 젬을 소환한다. (랜덤한 방향으로 튀어나감)
    /// </summary>
    /// <param name="xp"></param>
    public void Spawn(float xp, Vector3 spawnPosition)
    {
        fXp = xp;
        transform.position = spawnPosition;

        float fRandX = Random.Range(-1.0f, 1.0f);
        float fRandZ = Random.Range(-1.0f, 1.0f);
        Vector3 direction = new Vector3(fRandX, 10.0f, fRandZ);

        float fPower = Random.Range(20.0f, 50.0f);
        rb.AddForce(direction * fPower);
    }

    
    public void MagnetToPlayer(Vector3 target)
    {
        Vector3 direction = target - transform.position;
        direction = direction.normalized;

        rb.velocity = Vector3.zero;
        rb.AddForce(direction * 500.0f);
    }
}
