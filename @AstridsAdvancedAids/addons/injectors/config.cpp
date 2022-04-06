class cfgPatches
{
    class AstridsAdvancedAids_Injectors
    {
        addonRootClass = "AstridsAdvancedAids";
        requiredAddons[] = 
            {
                "AstridsAdvancedAids",
                "ace_medical_engine"
            };
        units[] = 
            {
                ""
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
    class FieldDressing: BasicBandage;
    class adrenaline: FieldDressing
    {
        displayName="Adrenaline";
		displayNameProgress="Injecting Adrenaline";
		icon="\z\ace\addons\medical_gui\ui\auto_injector.paa";
		allowedSelections[]=
		{
			"LeftArm",
			"RightArm",
			"LeftLeg",
			"RightLeg"
		};
		category="medication";
		items[]=
		{
			"AAA_adrenaline"
		};
		condition="";
		treatmentTime="ace_medical_treatment_treatmentTimeAutoinjector";
		callbackSuccess="ace_medical_treatment_fnc_medication";
		animationMedic="AinvPknlMstpSnonWnonDnon_medic1";
		sounds[]=
		{
			
			{
				"z\ace\addons\medical_treatment\sounds\Inject.ogg",
				1,
				1,
				50
			}
		};
		litter[]=
		{
			
			{
				"ACE_MedicalLitter_morphine"
			}
		};
    }
}
class cfgWeapons
{
    class ItemCore;
	class ACE_ItemCore;
    class ACE_morphine: ACE_ItemCore;
    class AAA_adrenaline: ACE_morphine
    {
        author="LynxAustralis";
		displayName="adrenaline";
        descriptionShort="An Adrenaline Auto Injector providing temperary stanima and speed";
    }
}
class cfgVehicles
{
    class Item_Base_F;
    class ACE_morphineItem: Item_Base_F;
    class AAA_adrenalineItem: ACE_morphineItem
    {
        displayname="adrenaline";
        author="LynxAustralis"
    };
};