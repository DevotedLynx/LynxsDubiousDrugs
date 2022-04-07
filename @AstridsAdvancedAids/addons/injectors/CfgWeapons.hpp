class cfgWeapons
{
    class ItemCore;
	class ACE_ItemCore;
    class ACE_morphine;
    class AAA_adrenaline: ACE_morphine
    {
        author="LynxAustralis";
		displayName="adrenaline";
        descriptionShort="An Adrenaline Auto Injector providing temperary stanima and speed";
        callbackSuccess= QFUNC(adrenaline);
    };
};