#include "\x\ldd\addons\injectors\script_component.hpp"















params ["_medic", "_patient", "_bodyPart", "_classname","","_usedItem"];
if(_classname != "Amanita") exitwith {
	hint "Error: function reserved for Amanita Muscaria"
};

if (local _patient) then {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(AmanitaTreatment), [_patient,5,300]] call CBA_fnc_localEvent;
} else {
    [_medic, _patient, _bodyPart, _classname,"",_usedItem] call ace_medical_treatment_fnc_medication;
    [QGVAR(AmanitaTreatment), [_patient,5,300], _patient] call CBA_fnc_targetEvent;
};