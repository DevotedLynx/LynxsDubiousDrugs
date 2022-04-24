#include "script_component.hpp"

class cfgPatches
{
    class ADDON
    {
        addonRootClass = "AstridsAdvancedAids";
        requiredAddons[] = 
            {
                "cba_main",
                "ace_main",
                "ace_medical_engine",
                "ace_medical_treatment"
            };
        units[] = 
            {
                "astrid_adrenalineitem",
                "astrid_MULEitem"
            };
        weapons[] =
            {
                "astrid_adrenaline",
                "astrid_MULE"
            };
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgVehicles.hpp"
#include "CfgWeapons.hpp"
#include "ACE_Medical_Treatment.hpp"
#include "ACE_Medical_Treatment_Actions.hpp"