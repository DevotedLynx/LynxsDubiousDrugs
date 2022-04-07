class Extended_PreInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_preInit));
    };
};

class Extended_Prestart_EventHandlers {
    class ADDON {
            init = QUOTE(_this call COMPILE_FILE(prestart));
    };
};

class Extended_PostInit_EventHandlers {
    class ADDON {
        init = QUOTE(call COMPILE_FILE(XEH_postInit));
    };
};
