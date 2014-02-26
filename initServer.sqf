/*
	File: initServer.sqf
	Author: lukrop

	License: see LICENSE.txt
	Description:
		Executed only on server when mission is started.

	Parameter(s):
	-

	Returns:
	-
*/

// set the date
setDate [2014,4,2,param_daytime,0];

// wait until the config is loaded and the paramters are initialized
waitUntil {!isNil "lkr_config_loaded"};

if(param_caching == 1) then {
	// caching/decaching after 1800m
	f_param_caching = 1800;
	f_var_debugMode = 0;
	// start unit caching after 15 seconds
	// start caching of spawned units 15 seconds after spawn
	[15, 15] execVM "f\cache\fn_cInit.sqf";
};

if(param_tpwcas == 1) then {
	// bullet threshold more shots than this will cause unit to drop/crawl.
	tpwcas_st = 5;
	// reveal value when suppressed. 0 = reveal disabled. <1 = suppressed unit
	// knows nothing about shooter. 4 = unit knows the shooter's side, position, shoe size etc.
	tpwcas_reveal = 2.5;
	tpwcas_debug = 0;
	// minimum skill value, none of a unit's skills will drop below this under suppression.
	tpwcas_minskill = 0.15;
	tpwcas_playershake = 0;
	tpwcas_playervis = 0;
	tpwcas_mode = 2;
	if(isServer and isDedicated) then {
		tpwcas_mode = 3
	};
	// enable or disable tpwlos
	if(param_tpwlos == 1) then {
		tpwcas_los_enable = 1;
	} else {
		tpwcas_los_enable = 0;
	};
	// start tpwcas and tpwlos
	[tpwcas_mode] execVM "tpwcas\tpwcas_script_init.sqf";
};

{
	if(side _x  == lkr_enemy_side) then {
		_min = lkr_enemy_skill_range select 0;
		_max = lkr_enemy_skill_range select 1;
		_skill = _min max (round (random _max));
		_x setSkill _skill;
		_x setSkill ["aimingAccuracy", 0.2 max (_skill - 0.15)];
	};
} forEach allUnits;

objNull execVM "tasks.sqf";
