/*
	File: config.sqf
	Author: lukrop

	License: see LICENSE.txt
	Description:
		Class names and configuration

	Parameter(s):
	-

	Returns:
	-
*/
// wait until all parameters are set
waitUntil {!isNil "params_set"};

// define enemy side and create center
lkr_enemy_side = east;
lkr_enemy_center = createCenter east;

// set skill according to paramters
switch (param_enemy_skill) do {
	// low
	case 0: {
		lkr_enemy_skill_range = [0.2,0.4];
	  };
	// medium
	case 1: {
		lkr_enemy_skill_range = [0.4,0.6];
	  };
	// high
	case 2: {
		lkr_enemy_skill_range = [0.6,0.8];
	  };
	// very high
	case 3: {
		lkr_enemy_skill_range = [0.8,1];
	  };
};

/*
// define enemy units classes
switch(param_enemy_faction) do {
	// CAF Aggressors middle eastern
	case 0: {
		// enemy infantry group leaders
		lkr_enemy_inf_leaders_C = ["CAF_AG_ME_AK74", "CAF_AG_ME_GL"];
		// repeat akm dudes to increase their saturation
		lkr_enemy_inf_units_C = ["CAF_AG_ME_AK74", "CAF_AG_ME_AK47", "CAF_AG_ME_RPG", "CAF_AG_ME_RPK",
			"CAF_AG_ME_SVD", "CAF_AG_ME_PK", "CAF_AG_ME_AK47", "CAF_AG_ME_RPG", "CAF_AG_ME_AK47",
			"CAF_AG_ME_AK47", "CAF_AG_ME_AK47", "CAF_AG_ME_AK74", "CAF_AG_ME_GL"];
		// enemy vehicles
		lkr_enemy_vecs_C = ["CAF_AG_ME_Offroad_armed_01"];

		lkr_hvt_C = "CAF_AG_EUR_AK74";
		lkr_hvt_guard_C = "CAF_AG_ME_AK74";

	};
	// CAF Aggressors eastern europe
	case 1: {
		// enemy infantry group leaders
		lkr_enemy_inf_leaders_C = ["CAF_AG_EUR_AK74", "CAF_AG_EUR_GL"];
		// repeat akm dudes to increase their saturation
		lkr_enemy_inf_units_C = ["CAF_AG_EUR_AK74", "CAF_AG_EUR_AK47", "CAF_AG_EUR_RPG", "CAF_AG_EUR_RPK",
			"CAF_AG_EUR_SVD", "CAF_AG_EUR_PK", "CAF_AG_EUR_AK47", "CAF_AG_EUR_RPG", "CAF_AG_EUR_AK47",
			"CAF_AG_EUR_AK47", "CAF_AG_EUR_AK47", "CAF_AG_EUR_AK74", "CAF_AG_EUR_GL"];
		// enemy vehicles
		lkr_enemy_vecs_C = ["CAF_AG_EUR_Offroad_armed_01"];

		lkr_hvt_C = "CAF_AG_AFR_AK74";
		lkr_hvt_guard_C = "CAF_AG_EUR_AK74";
	};
	// CAF Aggressors african
	case 2: {
		// enemy infantry group leaders
		lkr_enemy_inf_leaders_C = ["CAF_AG_AFR_AK74", "CAF_AG_AFR_GL"];
		// repeat akm dudes to increase their saturation
		lkr_enemy_inf_units_C = ["CAF_AG_AFR_AK74", "CAF_AG_AFR_AK47", "CAF_AG_AFR_RPG", "CAF_AG_AFR_RPK",
			"CAF_AG_AFR_SVD", "CAF_AG_AFR_PK", "CAF_AG_AFR_AK47", "CAF_AG_AFR_RPG", "CAF_AG_AFR_AK47",
			"CAF_AG_AFR_AK47", "CAF_AG_AFR_AK47", "CAF_AG_AFR_AK74", "CAF_AG_AFR_GL"];
		// enemy vehicles
		lkr_enemy_vecs_C = ["CAF_AG_AFR_Offroad_armed_01"];

		lkr_hvt_C = "CAF_AG_EUR_AK74";
		lkr_hvt_guard_C = "CAF_AG_AFR_AK74";
	};
};
*/
