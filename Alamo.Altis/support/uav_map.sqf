_centerPos = _this select 0;
_checkedRadius = _this select 1;

// CREATE MARKER FOR CHECKED SIZE
_markername = format["%1%2vc",round(_centerPos select 0),round(_centerPos select 1)]; // Define marker name
_markerstr = createMarker [str(_markername), _centerPos];
_markerstr setMarkerShape "ELLIPSE";
str(_markername) setMarkerBrush "SolidBorder";
str(_markername) setMarkerColor "ColorWhite";
str(_markername) setMarkerSize [_checkedRadius, _checkedRadius];
str(_markername) setMarkerAlpha 0.5;


hint "UAV inbound";
sleep 7;
hint "Enemy positions marked on your map.";


/////////////////// THIS PART IS GUER /////
// CREATE TRIGGER
_trg=createTrigger["EmptyDetector",_centerPos];
_trg setTriggerArea[_checkedRadius,_checkedRadius,0,false];
_trg setTriggerActivation["GUER","PRESENT",false];
_trg setTriggerStatements["this","", ""];
_trg setTriggerTimeout [0, 0, 0, true ];
sleep 1;
_tlist = list _trg;

{  // -- BEGIN FOREACH LOOP
// CREATE MARKER
_markername2 = format["%1%2uav",round(getpos _x select 0),round(getpos _x select 1)]; // Define marker name
_markerstr2 = createMarker [str(_markername2), getpos _x];
_markerstr2 setMarkerShape "ELLIPSE";
str(_markername2) setMarkerBrush "SolidBorder";
str(_markername2) setMarkerColor "ColorRed";
str(_markername2) setMarkerSize [3, 3];
str(_markername2) setMarkerAlpha 1;

_unit = _x;
_update = {

	_mkrUp = _this select 0;
	_unit = _this select 1;

	if (!alive _unit) exitWith {deleteMarker _mkrUp;};

	_mkrUp setMarkerPos (getPos (vehicle _unit));
	};


	// BEGIN FLASHING LOOP
	[_markername2, _update, _unit] spawn {
		_markername2 = _this select 0;
		_update = _this select 1;
		_unit = _this select 2;
		for [{_i=0}, {_i<=300}, {_i = _i+1}] do
		{
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorRed";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorOPFOR";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorRed";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorOPFOR";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorRed";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorOPFOR";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorRed";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorOPFOR";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorRed";
		sleep 0.5;
		str(_markername2) setMarkerColor "ColorOPFOR";

		[str(_markername2), _unit] call _update;
		};    // FOR BRACKET

		deleteMarker str(_markername2);
	};  // SPAWN BRACKET

} forEach _tlist; // -- END FOREACH LOOP
/////////////////// END OF GUER PART /////

// WAIT AND EXIT
// end of wave
//waitUntil {({(side _x) == resistance} count allUnits) == 0};

sleep 180;
deleteMarker str(_markername);
deletevehicle _trg;
UavInUse = false;
publicVariable "UavInUse";

sleep 30;
_uav_recon = [player,"uav_recon"] call BIS_fnc_addCommMenuItem;
uav_recon = _uav_recon;
support_uav_recon_available = true;

//deletevehicle _trgwest;
