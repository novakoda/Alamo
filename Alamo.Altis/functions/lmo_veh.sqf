lmo_vehSlot = {
	private ["_waveLvl", "_slotNum", "_slotLvl", "_carClass", "_posVEH", "_VEHgrp", "_VEHdir", "_VEH"];
	_waveLvl = _this select 0;
	_slotNum = _this select 1;
	_slotLvl = 1 + _waveLvl - _slotNum;
	//hint format ["vehSlot waveLvl %1, slotNum %2, slotLvl %3", _waveLvl, _slotNum, _slotLvl];

	if (_slotLvl < 1) exitWith {};

	if ((_slotLvl >= 1) && (_slotLvl <= 4)) then {
	_carClass = offroads;
	};

	if ((_slotLvl > 4) && (_slotLvl <= 8)) then {
	_carClass = mraps;
	};

	if ((_slotLvl > 8) && (_slotLvl <= 12)) then {
	_carClass = wheeled;
	};

	if ((_slotLvl > 12) && (_slotLvl <= 15)) then {
	_carClass = tracked;
	};

	if (_slotLvl > 15) then {
	_carClass = tanks;
	};

	_posVEH = selectRandom vehSpawnList;
	vehSpawnList = vehSpawnList - [_posVEH];
	_VEHgrp = createGroup resistance;
	_VEHdir = _posVEH getRelDir attackPos;
	_VEH = [getPos _posVEH, _VEHdir, selectRandom _carClass, _VEHgrp] call bis_fnc_spawnvehicle;
	{[_x, selectRandom spawnGuys] execVM "scripts\loadouts.sqf";} forEach units _VEHgrp;
	_VEHgrp deleteGroupWhenEmpty true;
	[_VEHgrp,_posVEH] execVM 'scripts\spawnVEH.sqf';

		waitUntil {({(side _x) == resistance} count allUnits) == 0};
		if ( ({(side _x) == west} count allUnits) == 0 ) exitWith {{ deleteVehicle _x } forEach [_VEH select 0];};
		sleep 1;
		{ deleteVehicle _x } forEach [_VEH select 0];
};

lmo_veh = {
		private ["_waveLvl"];
		_waveLvl = _this select 0;

		[_waveLvl, 4] spawn lmo_vehSlot;
		[_waveLvl, 8] spawn lmo_vehSlot;
		[_waveLvl, 15] spawn lmo_vehSlot;
		[_waveLvl, 22] spawn lmo_vehSlot;
		[_waveLvl, 28] spawn lmo_vehSlot;
		[_waveLvl, 32] spawn lmo_vehSlot;
		[_waveLvl, 36] spawn lmo_vehSlot;
		[_waveLvl, 40] spawn lmo_vehSlot;

};
