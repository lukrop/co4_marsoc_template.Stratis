/***************SETTINGS***********************/
EPD_IED_debug = false;
hideIedMarker = true;  //sets the alpha to 0 after spawning IEDs there

itemsRequiredToDisarm = ["ToolKit"];   //"MineDetector" or "ToolKit" for example
betterDisarmers = ["B_soldier_exp_F", "B_engineer_F", "B_diver_exp_F", "B_recon_exp_F", "B_mas_mar_soldier_exp_F_d", "B_mas_mar_soldier_repair_F_d"]; // people who are better at disarming

baseDisarmChance = 80; //how well everybody can disarm
bonusDisarmChance = 15; //increase that the "betterDisarmers" get

secondaryChance = 40; //Chance that a secondary IED will spawn.

smallChance = 45; //Chance that a small IED will be chosen.
mediumChance = 45; //Chance that a medium IED will be chosen.
largeChance = 10; //Chance that a medium IED will be chosen.

iedSecondaryItems = ["Land_CanisterOil_F","Land_FMradio_F","Land_Canteen_F","Land_CerealsBox_F","Land_BottlePlastic_V1_F","Land_HandyCam_F","Land_PowderedMilk_F","Land_RiceBox_F","Land_TacticalBacon_F","Land_VitaminBottle_F","Land_BottlePlastic_V2_F"];

iedSmallItems = ["RoadCone_F","Land_Pallets_F","Land_WheelCart_F","Land_Tyre_F","Land_ButaneCanister_F","Land_Bucket_F","Land_GasCanister_F","Land_Pillow_F"];

iedMediumItems = ["Land_Portable_generator_F","Land_WoodenBox_F","Land_MetalBarrel_F","Land_BarrelTrash_grey_F","Land_Sacks_heap_F","Land_WoodenLog_F","Land_WoodPile_F","Land_Wreck_Skodovka_F","Land_Wreck_Car_F","Land_Wreck_Car3_F","Land_Wreck_Car2_F","Land_Wreck_Offroad_F"];

iedLargeItems = ["Land_Bricks_V2_F","Land_Bricks_V3_F","Land_Bricks_V4_F","Land_GarbageBags_F","Land_GarbagePallet_F","Land_GarbageWashingMachine_F","Land_JunkPile_F","Land_Tyres_F","Land_Wreck_Skodovka_F","Land_Wreck_Car_F","Land_Wreck_Car3_F","Land_Wreck_Car2_F","Land_Wreck_Offroad_F","Land_Wreck_Offroad2_F"];

//If you want to use locations without making markers on the map, define them here. Altis has been provided as an example. ***THESE ARE NOT WHERE THE ACTUAL IEDS ARE SPAWNED***
//["Name",[LocationX,LocationY,LocationZ],size]
predefinedLocations = [["AltisRandom1",[4941.03,20430.1,0],2000],["AltisRandom2",[5796.45,16578.8,0],2000],["AltisRandom3",[5435.57,12633.9,0],2000],["AltisRandom4",[9579.01,20978.4,0],2000],["AltisRandom5",[10020.1,16859.6,0],2000],["AltisRandom6",[9779.5,12901.4,0],2000],["AltisRandom7",[13749.2,21392.9,0],2000],["AltisRandom8",[13048.1,18153.4,0],2000],["AltisRandom9",[17677.8,17309.3,0],2000],["AltisRandom10",[26097.5,22777.3,0],2000],["AltisRandom11",[23259.9,19904.4,0],2000],["AltisRandom12",[21356.9,17014.4,0],2000],["AltisRandom13",[19267,13716.4,0],2000],["AltisRandom14",[17033.2,10641.5,0],2000],["AltisRandom15",[20342.5,8704.69,0],2000],["AltisRandom16",[11108.5,8551.36,0],2000]];

/***************EXPERIMENTAL***********************/
// This is still being worked on and may contain bugs, please report them on the forums.
allowExplosiveToTriggerIEDs = true;

/***************END EXPERIMENTAL*******************/


//These are the actual IEDs that will spawn. Add them using one of the following formats.
//mapLocations must have their type defined as one of "NameCityCapital","NameCity","NameVillage", "NameLocal"
//["All", side]
//["AllCities", side]
//["AllVillages", side]
//["AllLocals", side]
//["mapLocation", side]
//["mapLocation", amountToPlace, side];
//["mapLocation", iedsToPlace, fakesToPlace, side]
//["predefinedLocation", side]
//["predefinedLocation", amountToPlace, side];
//["predefinedLocation", iedsToPlace, fakesToPlace, side]
/*********Marker size > 1**********************/
//["marker", iedsToPlace, fakesToPlace, side]
//["marker", amountToPlace, side]
//["marker", side]
/*********Marker size = 1**********************/
//["marker", side]
//["marker", chanceToBeReal, side]

//The side can be a single side, or an array of sides
//Ex. "West"   or ["West,"East"]
//http://community.bistudio.com/wiki/side

iedArray = [
	["lkr_island_zone", "West"]
	/*
	["AllCities","West"],
	["AllVillages","West"],
	["AltisRandom1",6,"West"],
	["AltisRandom2",6,"West"],
	["AltisRandom3",6,"West"],
	["AltisRandom4",6,"West"],
	["AltisRandom5",6,"West"],
	["AltisRandom6",6,"West"],
	["AltisRandom7",6,"West"],
	["AltisRandom8",6,"West"],
	["AltisRandom9",6,"West"],
	["AltisRandom10",6,"West"],
	["AltisRandom11",6,"West"],
	["AltisRandom12",6,"West"],
	["AltisRandom13",6,"West"],
	["AltisRandom14",6,"West"],
	["AltisRandom15",6,"West"],
	["AltisRandom16",6,"West"],
	["Gravia", 10, 2, "West" ],
	["Lakka", 2, 8, "West" ],
	["OreoKastro", 2, "West"],
	["Abdera", 2, "West" ],
	["IEDSINGLE1", ["West","East"]],
	["IEDSINGLE2", 50,"West"],
	["IEDSINGLE3", 50, "West"]*/
	];

//Place the mapLocations, predefinedLocations, and markerNames of places you don't want any IEDs spawning
safeZones = ["lkr_base_zone"];