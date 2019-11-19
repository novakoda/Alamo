debugSkip = true;
publicVariable "debugSkip";
{if (side _x == resistance) then {_x setDamage 1}} forEach allUnits;
["WaveOverAlert",[waveLvl]] remoteExec ["BIS_fnc_showNotification"];
"waveDone" remoteExec ["playSound"];
incomingEnemy = false;
publicVariable "incomingEnemy";
sleep 5;
{ deleteVehicle _x } forEach allDead;
sleep 6;
//null=[true] execVM "waves.sqf";
[[true],"waves.sqf"] remoteExec ["BIS_fnc_execVM",2,false];

/*
spawn while {true} do {
if (playerRespawnTime > 0) then {setPlayerRespawnTime 10;};
if (!isNull MHQ2) then { "respawn_west_3" setMarkerPos getPos MHQ2 ; } ;
if (!isNull MHQ3) then {"respawn_west_4" setMarkerPos getPos MHQ3 ; } ;
 sleep 1;
 } ;
 } ;
 */
