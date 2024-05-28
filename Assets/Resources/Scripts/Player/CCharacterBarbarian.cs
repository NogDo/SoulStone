using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CCharacterBarbarian : CCharacter
{
    public CCharacterBarbarian()
    {
        Init();
    }

    public override void Init()
    {
        fMoveSpeed = 5.0f;
        fGravityPower = 9.8f;
        fDashPower = 3.0f;

        nMaxDashCount = 2;
        nNowDashCount = nMaxDashCount;
    }
}
