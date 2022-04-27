class ACE_Medical_Treatment {
	class Medication {
		class Adrenaline {
			painReduce = 0;
            hrIncreaseLow[] = {50, 65};
            hrIncreaseNormal[] = {50, 65};
            hrIncreaseHigh[] = {40, 90};
            timeInSystem = 180;
            timeTillMaxEffect = 30;
            maxDose = 3;
            incompatibleMedication[] = {};
		};
        class Mule {
           	painReduce = 0.2;
            hrIncreaseLow[] = {15, 25};
            hrIncreaseNormal[] = {20, 35};
            hrIncreaseHigh[] = {35, 40};
            timeInSystem = 180;
            timeTillMaxEffect = 30;
            maxDose = 3;
            incompatibleMedication[] = {}; 
        };
	};
};