#include "script_component.hpp"

class cfgPatches
{
    class ADDON
    {
        addonRootClass = "AstridsAdvancedAids";
        requiredAddons[] = 
            {
                "ace_medical_engine",
                "ace_medical_treatment",
                "cba_xeh"
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

class ace_medical_treatment
{
    class Medication
    {
        class Adrenaline
        {
            painReduce=0;
		    hrIncreaseLow[]={0,0};
		    hrIncreaseNormal[]={0,0};
		    hrIncreaseHigh[]={0,0};
		    timeInSystem=300;
		    timeTillMaxEffect=5;
		    maxDose=3;
		    onOverDose="";
		    viscosityChange=0;
        };
    };
};

#include "CfgEventhandlers.hpp"