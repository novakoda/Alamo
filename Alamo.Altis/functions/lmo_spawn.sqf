lmo_group = {
	private ["_spawnNum", "_pos", "_group"];
	_spawnNum = _this select 0;
	_pos = [attackPos, [150,200]] call SHK_pos;
	_group = [_pos, resistance, _spawnNum] call bis_fnc_spawngroup;
	{[_x, selectRandom spawnGuys] execVM "scripts\loadouts.sqf";} forEach units _group;
	_group deleteGroupWhenEmpty true;
	[_group,getPos attackPos] execVM 'scripts\spawn.sqf';
};

lmo_spawn = {
		private ["_waveLvl", "_playerNum", "_spawnNum", "_half", "_third", "_quad", "_pent", "_sext", "_pos", "_group", "_wp"];
		_waveLvl = _this select 0;
		_playerNum = _this select 1;
		_spawnNum = ( _waveLvl * 10 / 8) + (3 * _playerNum );
		_half = false;
		_third = false;
		_quad = false;
		_pent = false;
		_sext = false;

		if ((_spawnNum >= 8) && (_spawnNum < 15)) then {
			_half = true;
			_spawnNum = _spawnNum / 2;
		};

		if ((_spawnNum >= 15) && (_spawnNum < 24)) then {
			_third = true;
			_half = true;
			_spawnNum = _spawnNum / 3;
		};

		if ((_spawnNum >= 24) && (_spawnNum < 30)) then {
			_quad = true;
			_third = true;
			_half = true;
			_spawnNum = _spawnNum / 4;
		};

		if ((_spawnNum >= 30) && (_spawnNum < 36)) then {
			_pent = true;
			_quad = true;
			_third = true;
			_half = true;
			_spawnNum = _spawnNum / 5;
		};

		if ((_spawnNum >= 36) && (_spawnNum < 60)) then {
			_sext = true;
			_pent = true;
			_quad = true;
			_third = true;
			_half = true;
			_spawnNum = _spawnNum / 6;
		};

		if (_spawnNum >= 60) then {
			_sext = true;
			_pent = true;
			_quad = true;
			_third = true;
			_half = true;
			_spawnNum = 10;
		};

		[_spawnNum] call lmo_group;

		if (_half) then {
			[_spawnNum] call lmo_group;
		};

		if (_third) then {
			[_spawnNum] call lmo_group;
		};

		if (_quad) then {
			[_spawnNum] call lmo_group;
		};

		if (_pent) then {
			[_spawnNum] call lmo_group;
		};

		if (_sext) then {
			[_spawnNum] call lmo_group;
		};
};
