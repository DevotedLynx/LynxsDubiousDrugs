#include "script_component.hpp"

class cfgPatches
{
    class ADDON
    {
        addonRootClass = "LDDsAdvancedAids";
        requiredAddons[] = 
            {
                "cba_main",
                "ace_main",
                "ace_medical_engine",
                "ace_medical_treatment"
            };
        units[] = 
            {
                "LDD_adrenalynitem",
                "LDD_Muleitem",
                "LDD_StaminAidItem"
            };
        weapons[] =
            {
                "LDD_adrenalyn",
                "LDD_Mule",
                "LDD_StaminAid"
            };
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "ACE_Medical_Treatment.hpp"
#include "ACE_Medical_Treatment_Actions.hpp"