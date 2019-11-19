lmo_heliSlot = {
	private ["_waveLvl", "_slotNum", "_slotLvl", "_posHELI", "_posHelper", "_HELIgrp", "_HELIdir", "_HELIspwn", "_HELI", "_shooters", "_heliWaypoint"];
	_waveLvl = _this select 0;
	_slotNum = _this select 1;
	_slotLvl = 1 + _waveLvl - _slotNum;
	//hint format ["vehSlot waveLvl %1, slotNum %2, slotLvl %3", _waveLvl, _slotNum, _slotLvl];

	if (_slotLvl < 1) exitWith {};

_heliPos = attackPos getPos[ 1000 + random 300, random 360 ];
_heliDir = _heliPos getDir attackPos;

[ _heliPos, _heliDir, "B_Heli_Light_01_F", resistance ] call BIS_fnc_spawnVehicle params[ "_heli", "", "_heliGrp" ];
_heliGrp deleteGroupWhenEmpty true;
_heli flyInHeight (15 + random 11);

_shooters = [ [0,0,100], resistance, 6 ] call BIS_fnc_spawnGroup;
{
	_x assignAsCargo _heli;
	_x moveInCargo _heli;
	[ _x, 'Sniper' ] execVM 'scripts\loadouts.sqf';
}forEach units _shooters;
units _shooters joinSilent _heliGrp;

//hint "chopper";
sleep (10 + random 20);

_heliWaypoint = _heliGrp addWaypoint[ attackPos, 10 ];

_heliWaypoint setWaypointType "LOITER";
_heliWaypoint setWaypointLoiterType (selectRandom ["CIRCLE","CIRCLE_L"]);
_heliWaypoint setWaypointLoiterRadius (80 + random 45);

_heliWaypoint setWaypointSpeed "LIMITED";
_heliWaypoint setWaypointBehaviour "COMBAT";
_heliWaypoint setWaypointCombatMode "RED";

_heliGrp setCurrentWaypoint _heliWaypoint;
//hint "chopper otw!";

		waitUntil {({(side _x) == resistance} count allUnits) == 0};
		if ( ({(side _x) == west} count allUnits) == 0 ) exitWith {deleteVehicle _HELI;};
		sleep 1;
		deleteVehicle _HELI;
};

lmo_heli = {
		private ["_waveLvl"];
		_waveLvl = _this select 0;

		//hint "chop function pre";
		[_waveLvl, 10] spawn lmo_heliSlot;
		[_waveLvl, 16] spawn lmo_heliSlot;
		[_waveLvl, 22] spawn lmo_heliSlot;
};
