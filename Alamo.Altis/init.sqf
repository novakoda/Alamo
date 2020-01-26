[] execVM "scripts\manual.sqf";
[] execVM "prices.sqf";
[] execVM "classNames.sqf";

if (local player) then {
  player enableFatigue false; player setCustomAimCoef 1;
  player addMPEventhandler ["MPRespawn", {player enableFatigue false; player setCustomAimCoef 1;}];
};

#include "support\supports_init.hpp"

if (isNil "waveLvl") then
{
	waveLvl = (paramsArray select 5) - 1;
  publicVariable "waveLvl";
};

timeAfter = (paramsArray select 6);
publicVariable "waveLvl";

playerNum = playersNumber west;
publicVariable "playerNum";


incomingEnemy = false;
publicVariable "incomingEnemy";

twr=false;
med=false;
apc=false;
tank=false;

raining = false;
dawn = false;
day = false;
noon = false;
dusk = false;
night = false;


call compileFinal preprocessFileLineNumbers "functions\lmo_loadouts.sqf";
call compileFinal preprocessFileLineNumbers "functions\lmo_global.sqf";
call compileFinal preprocessFileLineNumbers "functions\lmo_spawn.sqf";
call compileFinal preprocessFileLineNumbers "functions\lmo_veh.sqf";
call compileFinal preprocessFileLineNumbers "functions\lmo_heli.sqf";
call compileFinal preprocessFileLineNumbers "functions\lmo_commMenu.sqf";
call compileFinal preprocessFileLineNumbers "functions\lmo_weather.sqf";
call compileFinal preprocessFileLineNumbers "functions\lmo_perk.sqf";


waitUntil {player == player && time > 1};



call compile preprocessfile "SHK_pos\shk_pos_init.sqf";

onPlayerDisconnected {playerNum = playerNum - 1; publicVariable "playerNum";};


null=[] execVM "scripts\playermarkers.sqf";

nBuilt = false;
sBuilt = false;
eBuilt = false;
wBuilt = false;
tBuilt = false;

[nTower, pTowerPrice] call lmo_towers;
[sTower, pTowerPrice] call lmo_towers;
[eTower, pTowerPrice] call lmo_towers;
[wTower, pTowerPrice] call lmo_towers;
[tower, towerPrice] call lmo_towers;

[aimingPerkBox, lmo_aimingPerk] call lmo_perk;
[revivePerkBox, lmo_revivePerk] call lmo_perk;
[staminaPerkBox, lmo_staminaPerk] call lmo_perk;
[strongPerkBox, lmo_strongPerk] call lmo_perk;


[player, [missionNamespace, "inventory_var"]] call BIS_fnc_saveInventory;

introShot = [
	position attackPos, // Target position
"Defend The Alamo", // SITREP text
30, //  altitude
60, //  radius
60, // degrees viewing angle
0, // clockwise movement
[
	["", [1,1,1,0.7], position attackPos, 1, 1, 0, "Insertion Point", 0]
]
] spawn BIS_fnc_establishingShot;


waitUntil {scriptDone introShot};

enableSaving [false, false];

player setVariable ["lmo_cash",(paramsArray select 0), false];
_cash = player getVariable "lmo_cash";

("waveLayer" call BIS_fnc_rscLayer) cutRsc ["lmo_hudWave","PLAIN"];
("cashLayer" call BIS_fnc_rscLayer) cutRsc ["lmo_hudCash","PLAIN"];


(uiNameSpace getVariable "hudWave") ctrlSetText format ["Wave Level : %1", waveLvl];
(uiNameSpace getVariable "hudCash") ctrlSetText format ["$%1", str _cash];

if (isServer) then {
	null=[true] execVM "waves.sqf";
	[] execVM "unlocks.sqf";
null=[] execVM "support\request_support.sqf";

  addMissionEventHandler ["EntityKilled", {

  	params ["_killed", "_killer", "_killerID"];

  	if ((isPlayer _killer) && (alive _killer)) then {
  		_killerID = owner _killer;
  		[_killed] remoteExec ["lmo_killMoney", _killerID, false];
  	};
  }];
};

addMissionEventHandler ["Draw3D",
	{
	if (vehicle Player != player) exitWith {};
	if (dbugr distance player > 20) exitWith {};
	if ([dbugr, "VIEW", player] checkVisibility [eyePos dbugr, eyePos player] < 0.3) exitWith {};
	drawIcon3D ["", [0,0.7,0.1,0.6], visiblePosition dbugr vectorAdd [0,0,1.4], 0.2, 0.2, 45, "DEBUG", 0, 0.05, "PuristaMedium"];
	}
];

addMissionEventHandler ["Draw3D",
	{
	if (waveLvl < 3) exitWith {};
	if (vehicle Player != player) exitWith {};
	if (Box1 distance player > 20) exitWith {};
	if ([Box1, "VIEW", player] checkVisibility [eyePos Box1, eyePos player] < 0.3) exitWith {};
	drawIcon3D ["", [1,1,1,1], visiblePosition Box1 vectorAdd [0,0,2], 0.2, 0.5, 45, "ARSENAL", 0, 0.05, "PuristaMedium"];
	}
];

addMissionEventHandler ["Draw3D",
	{
	if (!tBuilt) exitWith {};
	if (vehicle Player != player) exitWith {};
	if (Box2 distance player > 40) exitWith {};
	if ([Box2, "VIEW", player] checkVisibility [eyePos Box2, eyePos player] < 0.3) exitWith {};
	drawIcon3D ["", [1,1,1,1], visiblePosition Box2 vectorAdd [0,0,17.5], 0.2, 0.5, 45, "ARSENAL", 0, 0.05, "PuristaMedium"];
	}
];

addMissionEventHandler ["Draw3D",
	{
	if (!med) exitWith {};
	if (vehicle Player != player) exitWith {};
	if (medic distance player > 40) exitWith {};
	//if ([medic, "VIEW", player] checkVisibility [eyePos medic, eyePos player] < 0.3) exitWith {};
	drawIcon3D ["", [1,0,0,1], visiblePosition medic vectorAdd [0,0,5.5], 0.2, 0.5, 45, "FIRST AID", 0, 0.05, "PuristaLight"];
	}
];

addMissionEventHandler ["Draw3D",
	{
	if (vehicle Player != player) exitWith {};
	if (aimingPerkBox distance player > 20) exitWith {};
	if ([aimingPerkBox, "VIEW", player] checkVisibility [eyePos aimingPerkBox, eyePos player] < 0.3) exitWith {};
	drawIcon3D ["", [0,0,1,1], visiblePosition aimingPerkBox vectorAdd [0,0,1.4], 0.2, 0.2, 45, "POP-A-PERC", 0, 0.05, "PuristaMedium"];
	}
];

addMissionEventHandler ["Draw3D",
	{
  if (!med) exitWith {};
	if (vehicle Player != player) exitWith {};
	if (revivePerkBox distance player > 20) exitWith {};
	if ([revivePerkBox, "VIEW", player] checkVisibility [eyePos revivePerkBox, eyePos player] < 0.3) exitWith {};
	drawIcon3D ["", [1,0,0,1], visiblePosition revivePerkBox vectorAdd [0,0,1.4], 0.2, 0.2, 45, "POP-A-PERC", 0, 0.05, "PuristaMedium"];
	}
];

addMissionEventHandler ["Draw3D",
	{
	if (vehicle Player != player) exitWith {};
	if (staminaPerkBox distance player > 20) exitWith {};
	if ([staminaPerkBox, "VIEW", player] checkVisibility [eyePos staminaPerkBox, eyePos player] < 0.3) exitWith {};
	drawIcon3D ["", [0,1,0.6,1], visiblePosition staminaPerkBox vectorAdd [0,0,1.4], 0.2, 0.2, 45, "POP-A-PERC", 0, 0.05, "PuristaMedium"];
	}
];

addMissionEventHandler ["Draw3D",
	{
  if (!tBuilt) exitWith {};
	if (vehicle Player != player) exitWith {};
	if (strongPerkBox distance player > 20) exitWith {};
	if ([strongPerkBox, "VIEW", player] checkVisibility [eyePos strongPerkBox, eyePos player] < 0.3) exitWith {};
	drawIcon3D ["", [1,0.6,0,1], visiblePosition strongPerkBox vectorAdd [0,0,16.9], 0.2, 0.2, 45, "POP-A-PERC", 0, 0.05, "PuristaMedium"];
	}
];
