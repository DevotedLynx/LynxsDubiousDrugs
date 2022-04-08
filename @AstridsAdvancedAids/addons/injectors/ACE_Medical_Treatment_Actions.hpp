class ACE_Medical_Treatment_Actions {
	class BasicBandage;
	class FieldDressing;
	class Morphine;
	class Adrenaline: Morphine 
	{
		displayName = "Adrenaline";
        displayNameProgress = "Injecting Adrenaline";
        medicRequired = false;
		callbackSuccess = "[_medic, _patient, _bodyPart, _treatment] call astrid_injectors_adrenaline;";
        items[] = {"astrid_adrenaline"};
	};
};