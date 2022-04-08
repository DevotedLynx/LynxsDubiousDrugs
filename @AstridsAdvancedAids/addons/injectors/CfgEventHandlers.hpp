class Extended_PreStart_EventHandlers {
    class ADDON {
        init = "call compile preprocessFileLineNumbers 'XEH_preStart.sqf'";
    };
};

class Extended_PreInit_EventHandlers {
    class ADDON {
        init = "call compile preprocessFileLineNumbers 'XEH_preInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers {
    class ADDON {
        init = "call compile preprocessFileLineNumbers 'XEH_postInit.sqf'";
    };
};
