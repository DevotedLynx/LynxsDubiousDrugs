#include "\x\astrid\addons\injectors\script_component.hpp"









params ["_medic", "_patient", "_bodyPart", "_classname","","_usedItem"];
if(_classname != "Mule") exitwith {
	hint "Error: function reserved for Mule"
};

if (local _patient) then {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(MuleTreatment), [_medic, _patient, _classname]] call CBA_fnc_localEvent;
} else {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(MuleTreatment), [_medic, _patient, _classname], _patient] call CBA_fnc_targetEvent;

};