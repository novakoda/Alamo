//_minus = _this select 0;

_sniperNum = (round (waveLvl * 0.4)) - 3;

_sniperPosList = [sniperPos1,sniperPos2,sniperPos3,sniperPos4,sniperPos5,sniperPos6,sniperPos7,sniperPos8,sniperPos9,sniperPos10,sniperPos11,sniperPos12];

_posList = +_sniperPosList;

_wavelvl = waveLvl;

_group = createGroup resistance;


while {_sniperNum >= 1 && count _posList > 0} do {

	_pos = selectRandom _posList;
	_posList = _posList - [_pos];
	_dir = _pos getRelDir attackPos;
	"I_Soldier_M_F" createUnit [getPosASL _pos, _group, "this setDir _dir; [this, 'Sniper'] execVM 'scripts\loadouts.sqf'; this disableAI 'PATH'; this setPosASL [getPosASL _pos select 0, (getPosASL _pos select 1), getPosASL _pos select 2];", 0.5, "corporal"];
	_sniperNum = _sniperNum-1;
};

_group deleteGroupWhenEmpty true;
