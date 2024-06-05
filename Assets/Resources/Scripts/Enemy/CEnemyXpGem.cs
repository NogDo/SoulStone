using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyXpGem : MonoBehaviour
{
    #region private 변수
    CEnemyXpGemPool enemyXpGemPool;
    CCharacter character;
    Coroutine cMagnetBezierCurve;

    Vector3 v3StartPosition;
    Vector3 v3MiddlePosition;
    Vector3 v3EndPosition;

    float fXp;
    #endregion

    void OnEnable()
    {
        if (enemyXpGemPool is null)
        {
            enemyXpGemPool = FindObjectOfType<CEnemyXpGemPool>();
        }
    }

    void OnDisable()
    {
        fXp = 0.0f;
        GetComponent<Collider>().isTrigger = false;

        enemyXpGemPool.BackToPool(gameObject);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("PlayerPickupRange"))
        {
            if (character is null)
            {
                character = other.transform.parent.GetComponent<CCharacter>();
            }

            if (cMagnetBezierCurve == null)
            {
                MagnetToPlayer();
            }
        }

        else if (other.CompareTag("Player"))
        {
            character.GainXp(fXp);
            gameObject.SetActive(false);
        }
    }

    /// <summary>
    /// 젬을 소환한다. (베지어 곡선을 따라 랜덤한 방향으로 튀어나간다.)
    /// </summary>
    /// <param name="xp"></param>
    /// <param name="spawnPosition"></param>
    public void Spawn(float xp, Vector3 spawnPosition)
    {
        fXp = xp;
        transform.position = spawnPosition;

        int nSeed = Mathf.RoundToInt((transform.position.x + transform.position.z) * Time.time);
        Random.InitState(nSeed);

        float fRandX = Random.Range(-1.0f, 1.0f);
        float fRandY = Random.Range(0.5f, 7.5f);
        float fRandZ = Random.Range(-1.0f, 1.0f);

        v3StartPosition = transform.position;
        v3MiddlePosition = new Vector3(fRandX + transform.position.x, fRandY, fRandZ + transform.position.z);
        v3EndPosition = new Vector3(fRandX * 1.5f + transform.position.x, 0.0f, fRandZ * 1.5f + transform.position.z);

        StartCoroutine("SpawnBezierCurve");
    }

    /// <summary>
    /// 젬이 플레이어에게 빨려들어간다.
    /// </summary>
    public void MagnetToPlayer()
    {
        float fRandX = Random.Range(-2.0f, 2.0f) + transform.position.x;
        float fRandY = Random.Range(1.5f, 3.0f);
        float fRandZ = Random.Range(-2.0f, 2.0f) + transform.position.z;

        v3StartPosition = transform.position;
        v3MiddlePosition = new Vector3(fRandX, fRandY, fRandZ);

        GetComponent<Collider>().isTrigger = true;

        StopCoroutine("SpawnBezierCurve");
        cMagnetBezierCurve = StartCoroutine("MagnetBezierCurve");
    }

    /// <summary>
    /// 젬이 소환될 때의 베지어 곡선
    /// </summary>
    /// <returns></returns>
    IEnumerator SpawnBezierCurve()
    {
        float fTime = 0.0f;
        float fDuration = 0.5f;

        while (fTime <= fDuration)
        {
            Vector3 lerpPoint1 = Vector3.Lerp(v3StartPosition, v3MiddlePosition, fTime / fDuration);
            Vector3 lerpPoint2 = Vector3.Lerp(v3MiddlePosition, v3EndPosition, fTime / fDuration);
            transform.position = Vector3.Lerp(lerpPoint1, lerpPoint2, fTime / fDuration);

            fTime += Time.deltaTime;
            yield return null;
        }

        transform.position = v3EndPosition;
    }

    /// <summary>
    /// 젬이 플레이어에게 끌려갈 때 베지어 곡선
    /// </summary>
    /// <returns></returns>
    IEnumerator MagnetBezierCurve()
    {
        float fTime = 0.0f;
        float fDuration = 0.5f;

        while (fTime < fDuration)
        {
            Vector3 lerpPoint1 = Vector3.Lerp(v3StartPosition, v3MiddlePosition, fTime / fDuration);
            Vector3 lerpPoint2 = Vector3.Lerp(v3MiddlePosition, character.transform.position, fTime / fDuration);
            transform.position = Vector3.Lerp(lerpPoint1, lerpPoint2, fTime / fDuration);

            fTime += Time.deltaTime;
            yield return null;
        }

        transform.position = v3EndPosition;
        cMagnetBezierCurve = null;
    }
}
