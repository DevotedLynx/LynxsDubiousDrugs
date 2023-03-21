class ace_Medical_Treatment_Actions {
	class BasicBandage;
	class Fielddressing;
	class Morphine;
	class adrenalyn: Morphine 
	{
		displayName = "Inject adrenalyn";
        displayNameProgress = "Injecting adrenalyn";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(adrenalyn);
        items[] = {"ldd_adrenalyn"};
	};
	class mule: Morphine
	{
		displayName = "Inject mule";
        displayNameProgress = "Injecting mule";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(mule);
        items[] = {"ldd_mule"};	
	};
	class StaminAid: Morphine
	{
		displayName = "Inject StaminAid";
        displayNameProgress = "Injecting StaminAid";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(StaminAid);
        items[] = {"ldd_StaminAid"};	
	};
	class Amanita: Morphine
	{
		displayName = "Inject Amanita Muscaria";
        displayNameProgress = "ITS GO TIME BABY";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(Amanita);
        items[] = {"ldd_Amanita"};	
	};
	class HemoDynamic: Morphine
	{
		displayName = "Inject HemoDynamic Stim";
        displayNameProgress = "Injecting HemoDynamic Stim";
        medicRequired = false;
		condition = "ace_medical_treatment_advancedMedication";
		callbackSuccess = QFUNC(HemoDynamic);
        items[] = {"ldd_HemoDynamic"};	
	};
};