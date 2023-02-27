class ace_Medical_Treatment {
	class Medication {
		class adrenalyn {
			painReduce = 0;
            hrIncreaseLow[] = {50, 65};
            hrIncreaseNormal[] = {50, 65};
            hrIncreaseHigh[] = {40, 90};
            timeInSystem = 180;
            timeTillMaxEffect = 30;
            maxDose = 3;
            incompatibleMedication[] = {};
		};
        class mule {
           	painReduce = 0.2;
            hrIncreaseLow[] = {15, 25};
            hrIncreaseNormal[] = {20, 35};
            hrIncreaseHigh[] = {35, 40};
            timeInSystem = 180;
            timeTillMaxEffect = 30;
            maxDose = 3;
            incompatibleMedication[] = {}; 
        };
        class StaminAid {
           	painReduce = 0.2;
            hrIncreaseLow[] = {-15, -25};
            hrIncreaseNormal[] = {-20, -35};
            hrIncreaseHigh[] = {-35, -40};
            timeInSystem = 1800;
            timeTillMaxEffect = 30;
            maxDose = 4;
            incompatibleMedication[] = {}; 
        };
        class Amanita {
           	painReduce = 0.2;
            hrIncreaseLow[] = {50, 80};
            hrIncreaseNormal[] = {30, 55};
            hrIncreaseHigh[] = {35, 60};
            timeInSystem = 1800;
            timeTillMaxEffect = 10;
            maxDose = 1;
            incompatibleMedication[] = {}; 
        };
	};
};