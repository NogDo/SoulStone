using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CSoundManager : MonoBehaviour
{
    #region private 변수
    static CSoundManager instance;
    AudioSource BGM;
    AudioSource Effect;

    [SerializeField]
    List<AudioClip> BGMList;
    [SerializeField]
    List<AudioClip> SounEffectList;
    #endregion

    void Awake()
    {
        if (instance is null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject);
        }

        else
        {
            Destroy(gameObject);
        }

        BGM = GetComponent<AudioSource>();
        Effect = transform.GetChild(0).GetComponent<AudioSource>();
    }

    void Update()
    {
        
    }

    public static CSoundManager Instace
    {
        get
        {
            return instance;
        }
    }

    /// <summary>
    /// 메인씬의 BGM을 재생한다
    /// </summary>
    public void PlayMainBGM()
    {
        BGM.clip = BGMList[0];
        BGM.Play();
    }

    /// <summary>
    /// 숲씬의 BGM을 재생한다
    /// </summary>
    public void PlayForestBGM()
    {
        BGM.clip = BGMList[1];
        BGM.Play();
    }

    /// <summary>
    /// 스킬 효과음을 재생한다.
    /// </summary>
    /// <param name="number">스킬 번호</param>
    /// <param name="count">해당하는 스킬의 몇번째 효과음을 낼건지</param>
    public void PlaySoundEffect(int number, int count)
    {
        switch (number)
        {
            // 훨윈드
            case 0:
                Effect.PlayOneShot(SounEffectList[0]);
                break;

            // 더블 슬래쉬
            case 1:
                if (count == 0)
                {
                    Effect.PlayOneShot(SounEffectList[1]);
                }

                else
                {
                    Effect.PlayOneShot(SounEffectList[2]);
                }
                break;
        }
    }
}
