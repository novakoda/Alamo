_group = _this select 0;
_spawnPos = _this select 1;

_movePos = getPos attackPos;

if (_spawnPos == vehSpawn1) then {
	_movePos = getpos vehMove1;
};

if (_spawnPos == vehSpawn2) then {
	_movePos = getpos vehMove2;
};

if (_spawnPos == vehSpawn3) then {
	_movePos = getpos vehMove3;
};

if (_spawnPos == vehSpawn4) then {
	_movePos = getpos vehMove4;
};

if (_spawnPos == vehSpawn5) then {
	_movePos = getpos vehMove5;
};

if (_spawnPos == vehSpawn6) then {
	_movePos = getpos vehMove6;
};

if (_spawnPos == vehSpawn7) then {
	_movePos = getpos vehMove7;
};

if (_spawnPos == vehSpawn8) then {
	_movePos = getpos vehMove8;
};

sleep (10 + random 50);
_group move (_movePos);

sleep 60;
_stalking = [_group, group player,nil,10,{player distance _group < 600}] spawn BIS_fnc_stalk;
