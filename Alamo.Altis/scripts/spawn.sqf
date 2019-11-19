_group = _this select 0;
_attackPos = _this select 1;

_group move _attackPos;

sleep 60;
_stalking = [_group, group player,nil,10,{player distance _group < 600}] spawn BIS_fnc_stalk;