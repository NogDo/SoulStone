using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CEnemyXpGem : MonoBehaviour
{
    #region private ����
    CEnemyXpGemPool enemyXpGemPool;
    CCharacter character;

    Vector3 v3StartPosition;
    Vector3 v3MiddlePosition;
    Vector3 v3EndPosition;

    float fXp;
    bool isMagnet;
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
        StopCoroutine("MagnetBezierCurve");
        isMagnet = false;

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

            if (!isMagnet)
            {
                isMagnet = true;
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
    /// ���� ��ȯ�Ѵ�. (������ ��� ���� ������ �������� Ƣ�����.)
    /// </summary>
    /// <param name="xp"></param>
    /// <param name="spawnPosition"></param>
    public void Spawn(float xp, Vector3 spawnPosition)
    {
        fXp = xp;
        transform.position = spawnPosition;
        isMagnet = false;

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
    /// ���� �÷��̾�� ��������.
    /// </summary>
    public void MagnetToPlayer()
    {
        float fRandX = Random.Range(-2.0f, 2.0f) + transform.position.x;
        float fRandY = Random.Range(1.5f, 3.0f);
        float fRandZ = Random.Range(-2.0f, 2.0f) + transform.position.z;

        v3StartPosition = transform.position;
        v3MiddlePosition = new Vector3(fRandX, fRandY, fRandZ);

        StopCoroutine("SpawnBezierCurve");
        StartCoroutine("MagnetBezierCurve");
    }

    /// <summary>
    /// ���� ��ȯ�� ���� ������ �
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
    /// ���� �÷��̾�� ������ �� ������ �
    /// </summary>
    /// <returns></returns>
    IEnumerator MagnetBezierCurve()
    {
        float fTime = 0.0f;
        float fDuration = 0.5f;

        GetComponent<Collider>().isTrigger = true;

        while (fTime < fDuration)
        {
            Vector3 lerpPoint1 = Vector3.Lerp(v3StartPosition, v3MiddlePosition, fTime / fDuration);
            Vector3 lerpPoint2 = Vector3.Lerp(v3MiddlePosition, character.transform.position, fTime / fDuration);
            transform.position = Vector3.Lerp(lerpPoint1, lerpPoint2, fTime / fDuration);

            fTime += Time.deltaTime;
            yield return null;
        }

        transform.position = v3EndPosition;
    }
}
