#include "\x\LDD\addons\main\script_component.hpp"

class CfgPatches
{
    class LDD_main
    {
        name = "Lynx's Dubious Drugs";
        author = "LynxAustralis";
        url = "https://discord.com/invite/JxAcEcTVCP";
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
    class LDD
    {
        dir="@LynxsDubiousDrugs";
		name="Lynx's Dubious Drugs";
		hidePicture="true";
		hideName="true";
		actionName="Website";
		action="https://discord.com/invite/JxAcEcTVCP";
		description="";
    };
};