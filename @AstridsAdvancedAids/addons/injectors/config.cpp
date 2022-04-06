class cfgPatches
{
    class AstridsAdvancedAids_Injectors
    {
        addonRootClass = "AstridsAdvancedAids";
        requiredAddons[] = 
            {
                "ace_medical_engine",
                "ace_medical_treatment"
            };
        units[] = 
            {
                "AAA_adrenaline"
            };
        weapons[] =
            {
                "AAA_adrenaline"
            };
    };
};

class ace_medical_treatment_actions
{
    class BasicBandage;
    class FieldDressing;
    class Morphine;
    class adrenaline: Morphine
    {
        displayName="Adrenaline";
        displayNameProgress="Injecting Adrenaline";
        category="medication";
        items[]=
        {
            "AAA_adrenaline"
        };
    };
};

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
    };
};

class cfgVehicles
{
    class Item_Base_F;
    class ACE_morphineItem;
    class AAA_adrenalineItem: ACE_morphineItem
    {
        displayname="adrenaline";
        author="LynxAustralis"
    };
};