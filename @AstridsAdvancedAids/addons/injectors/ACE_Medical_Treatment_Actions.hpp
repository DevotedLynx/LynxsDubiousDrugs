class ACE_Medical_Treatment_Actions {
	class BasicBandage;
	class FieldDressing;
	class Morphine;
	class Adrenaline: Morphine 
	{
		displayName = "Inject Adrenaline";
        displayNameProgress = "Injecting Adrenaline";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(adrenaline);
        items[] = {"astrid_adrenaline"};
	};
};