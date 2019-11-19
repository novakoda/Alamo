if (!isServer) exitWith{};
if (incomingEnemy) exitWith {hint "Wave already active"};

waveLvl = waveLvl + 1;
publicVariable "waveLvl";

debugSkip = false;
publicVariable "debugSkip";

{_x setVehicleAmmo 1} forEach [MG1,MG2,MG3,MG4];

vehSpawnList = [vehSpawn1,vehSpawn2,vehSpawn3,vehSpawn4,vehSpawn5,vehSpawn6,vehSpawn7,vehSpawn8];
publicVariable "vehSpawnList";


remoteExec ["lmo_waveLvlMP", 0];
"waveStart" remoteExec ["playSound"];

_waveLvl = waveLvl;
_award = (waveLvl * 10) * (paramsArray select 2);

//Time and Weather
_weatherChange = (paramsArray select 4);
_timeChange = (paramsArray select 3);
_willChange = _this select 0;

if (_willChange) then {
	[_waveLvl, _weatherChange] call lmo_rain;
	[_waveLvl, _timeChange] call lmo_time;
};

//WAVE BEGIN
incomingEnemy = true;
publicVariable "incomingEnemy";
["WaveInbound",[_wavelvl]] remoteExec ["BIS_fnc_showNotification"];
//load loadouts
null=[] execVM "scripts\spawnGuys.sqf";
sleep 1;

//spawn units and vehicles
[waveLvl, playerNum] call lmo_spawn;
[waveLvl] call lmo_veh;
[] execVM "scripts\sniper.sqf";
[waveLvl] call lmo_heli;

//end wave
waitUntil {({(side _x) == resistance} count allUnits) == 0};
if ( ({(side _x) == west} count allUnits) == 0 ) exitWith {};
if (debugSkip) exitWith {};
sleep 1;

["WaveOverAlert",[_wavelvl]] remoteExec ["BIS_fnc_showNotification"];
"waveDone" remoteExec ["playSound"];
 [_award] remoteExec ["lmo_addMoney", 0];

incomingEnemy = false;
publicVariable "incomingEnemy";
sleep 5;
{ deleteVehicle _x } forEach allDead;
sleep 6;
null=[true] execVM "waves.sqf";
