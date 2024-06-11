using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CSoundManager : MonoBehaviour
{
    #region private ����
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
    /// ���ξ��� BGM�� ����Ѵ�
    /// </summary>
    public void PlayMainBGM()
    {
        BGM.clip = BGMList[0];
        BGM.Play();
    }

    /// <summary>
    /// ������ BGM�� ����Ѵ�
    /// </summary>
    public void PlayForestBGM()
    {
        BGM.clip = BGMList[1];
        BGM.Play();
    }

    /// <summary>
    /// ��ų ȿ������ ����Ѵ�.
    /// </summary>
    /// <param name="number">��ų ��ȣ</param>
    /// <param name="count">�ش��ϴ� ��ų�� ���° ȿ������ ������</param>
    public void PlaySoundEffect(int number, int count)
    {
        switch (number)
        {
            // ������
            case 0:
                Effect.PlayOneShot(SounEffectList[0]);
                break;

            // ���� ������
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
