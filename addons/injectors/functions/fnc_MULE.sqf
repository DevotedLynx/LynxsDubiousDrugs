#include "\x\ldd\addons\injectors\script_component.hpp"









params ["_medic", "_patient", "_bodyPart", "_classname","","_usedItem"];
if(_classname != "mule") exitwith {
	hint "Error: function reserved for mule"
};

if (local _patient) then {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(muleTreatment), [_medic, _patient, _classname]] call CBA_fnc_localEvent;
} else {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(muleTreatment), [_medic, _patient, _classname], _patient] call CBA_fnc_targetEvent;

};