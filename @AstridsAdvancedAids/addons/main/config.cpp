#include "\x\astrid\addons\main\script_component.hpp"

class CfgPatches
{
    class astrid_main
    {
        name = "Astrid's Advanced Aids";
        author = "LynxAustralis";
        url = "https://github.com/DevotedLynx/AstridsAdvancedAids/wiki";
        units[] = 
        {
        };
        Weapons[] = 
        {
        };
        requiredVersion = 1.00;
        version = 0.1;
        requiredAddons[]=
        {
            "ace_main",
            "cba_main"
        };
    };
};
class CfgMods
{
    class astrid
    {
        dir="@AstridsAdvancedAids";
		name="Astrid's Advanced Aids";
		hidePicture="true";
		hideName="true";
		actionName="Website";
		action="https://github.com/DevotedLynx/AstridsAdvancedAids/wiki";
		description="";
    };
};