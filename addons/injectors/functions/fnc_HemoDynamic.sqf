#include "\x\ldd\addons\injectors\script_component.hpp"















params ["_medic", "_patient", "_bodyPart", "_classname","","_usedItem"];
if(_classname != "HemoDynamic") exitwith {
	hint "Error: function reserved for HemoDynamic Stim"
};

if (local _patient) then {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(HemoDynamicTreatment), [_patient,1,501]] call CBA_fnc_localEvent;
} else {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(HemoDynamicTreatment), [_patient,1,501], _patient] call CBA_fnc_targetEvent;
};