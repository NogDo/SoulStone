using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class CFightButtonControl : MonoBehaviour
{
    #region private º¯¼ö
    EventTrigger eventTrigger;
    #endregion

    void Start()
    {
        eventTrigger = GetComponent<EventTrigger>();

        EventTrigger.Entry pointerClick = new EventTrigger.Entry();
        pointerClick.eventID = EventTriggerType.PointerClick;
        pointerClick.callback.AddListener((data) => { OnPointerClick((PointerEventData)data); });
        eventTrigger.triggers.Add(pointerClick);
    }

    void OnPointerClick(PointerEventData data)
    {
        CSceneManager.Instace.PlayForestScene();
    }
}
