#include "script_component.hpp"

class CfgPatches
{
    class ADDON
    {
        addonRootClass = "ldd_main";
        requiredAddons[] = 
            {
                "cba_main",
                "ace_main",
                "ace_medical_engine",
                "ace_medical_treatment",
                "ace_medical_damage"
            };
        units[] = 
            {
                "ldd_adrenalynitem",
                "ldd_muleitem",
                "ldd_StaminAidItem",
                "ldd_AmanitaItem"
            };
        weapons[] =
            {
                "ldd_adrenalyn",
                "ldd_mule",
                "ldd_StaminAid",
                "ldd_Amanita"
            };
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "ACE_Medical_Treatment.hpp"
#include "ACE_Medical_Treatment_Actions.hpp"
#include "ACE_Medical_Injuries.hpp"