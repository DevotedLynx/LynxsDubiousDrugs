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
            hrIncreaseLow[] = {20, 100};
            hrIncreaseNormal[] = {-5, 5};
            hrIncreaseHigh[] = {-20, -55};
            timeInSystem = 1800;
            timeTillMaxEffect = 10;
            maxDose = 1;
            incompatibleMedication[] = {}; 
        };
        class HemoDynamic {
           	painReduce = 0.0;
            hrIncreaseLow[] = {0, 0};
            hrIncreaseNormal[] = {0, 0};
            hrIncreaseHigh[] = {0, 0};
            timeInSystem = 1800;
            timeTillMaxEffect = 10;
            maxDose = 3;
            incompatibleMedication[] = {}; 
        };
	};
};