class ACE_Medical_Treatment_Actions {
	class BasicBandage;
	class FieldDressing;
	class Morphine;
	class adrenalyn: Morphine 
	{
		displayName = "Inject adrenalyn";
        displayNameProgress = "Injecting adrenalyn";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(adrenalyn);
        items[] = {"astrid_adrenalyn"};
	};
	class Mule: Morphine
	{
		displayName = "Inject Mule";
        displayNameProgress = "Injecting Mule";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(Mule);
        items[] = {"astrid_Mule"};	
	};
	class StaminAid: Morphine
	{
		displayName = "Inject StaminAid";
        displayNameProgress = "Injecting StaminAid";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(StaminAid);
        items[] = {"astrid_StaminAid"};	
	};
};