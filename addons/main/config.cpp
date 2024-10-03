#include "\x\ldd\addons\main\script_component.hpp"

class CfgPatches
{
    class ADDON
    {
        name = "Lynx's Dubious Drugs";
        author = "LynxAustralis";
        url = "https://discord.com/invite/JxacecTVCP";
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
    class ldd
    {
        dir="@LynxsDubiousDrugs";
		name="Lynx's Dubious Drugs";
		hidePicture="true";
		hideName="true";
		actionName="Website";
		action="https://discord.com/invite/JxacecTVCP";
		description="";
    };
};