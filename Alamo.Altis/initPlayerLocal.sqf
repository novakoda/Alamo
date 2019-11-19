sleep 1;    //Time to wait for player to initialize in the mission

//Save loadout when ever we exit an arsenal
[ missionNamespace, "arsenalClosed", {
	systemChat "Arsenal closed. Loadout saved for respawn.";    //Not actually needed, can say anything you want
	waitUntil {time > 0.2};    //Time to wait to make sure Arsenal items are applied
	[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;
}] call BIS_fnc_addScriptedEventHandler;


// spectator respawn script by pierremgi
0 = [] spawn {
	while {true} do { waitUntil { sleep 0.5; playerRespawnTime > 0 };

	setPlayerRespawnTime 5;


	if (!incomingEnemy) exitWith {sleep 1; setPlayerRespawnTime 0;
		sleep 5; setPlayerRespawnTime 5; 	};

	if ({lifestate _x == "DEAD-RESPAWN"} count allPlayers ==  count allPlayers) then {
	{if (side _x == resistance) then {_x setDamage 1}} forEach allUnits;

	if (isServer) then {["WaveFailed"] remoteExec ["BIS_fnc_showNotification"]; "waveFail" remoteExec ["playSound"];};

	incomingEnemy = false;
	publicVariable "incomingEnemy";

	sleep 1;
	setPlayerRespawnTime 0;

	sleep 5;
	{ deleteVehicle _x } forEach allDead;
	sleep 6;
	setPlayerRespawnTime 5;

	if (isServer) then {waveLvl = waveLvl - 1; publicVariable "waveLvl"; null=[false] execVM "waves.sqf";};
		}
	}
};
