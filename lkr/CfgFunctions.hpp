class lkr
{
	tag = "lkr";
	class ext {
		file = "lkr\ext";
		
		class ICE_vehRespawn {};
	};

	class common {
		file = "lkr\common";
		
		class loadConfig {
			preInit=1;
		};
		class initMHQ {};
		class spawnGroup {};
		class spawnEnemyGroup {};
		class groupExecuteTask {};
		class hideMarkers {
			preInit=1;
			postInit=1;
		};
	};

	class missionHelper {
		file = "lkr\mh";

		class triggerOnObjectDestroyed {};
		class getMissionLocation {};
		class addRescueAction {};
		class freeHostage {};
		class makeHostage {};
		class removeAllActions {};
		class moveInRandomHouse {};
	};

	class gc {
		file = "lkr\gc";

		class gcInit {
			postInit=1; // starts the garbage collector
		};
		class gcMonitor {};
		class gcAdd {};
		class gcEmptyQueue {};
		class gcDeleteFirstInQueue {};
		class enableGarbageCollection{};
	};

};
