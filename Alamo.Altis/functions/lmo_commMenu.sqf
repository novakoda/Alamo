lmo_updateCommMenuItem = {
	params [ "_item", "_args", [ "_menuID", -1 ] ];
	_menuIndex = if ( _menuID > -1 ) then {
		player getVariable "BIS_fnc_addCommMenuItem_menu" findIf { _x select 0 isEqualTo _menuID };
	}else{
		missionNamespace getVariable [ "lmo_commMenuItems", [] ] findIf { _x select 0 == _item };
	};

	if ( _menuIndex > -1 ) then {

		switch ( toLower _item ) do {

			case ( "artillery" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set [ 1, format[ "Artillery Strike $%1", _args ] ];
			};
			case ( "godmode" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set[ 1, format[ "God Mode (1 min) $%1", _args ] ];
			};
			case ( "invisible" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set[ 1, format[ "Invisibility (1 min) $%1", _args ] ];
			};
			case ( "heal" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set[ 1, format[ "Heal $%1", _args ] ];
			};
			case ( "rearm" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set[ 1, format[ "Rearm $%1", _args ] ];
			};
			case ( "cluster" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set[ 1, format[ "Carpet Bomb $%1", _args ] ];
			};
			case ( "uav_recon" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set[ 1, format[ "UAV Recon $%1", _args ] ];
			};
			case ( "jdam" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set[ 1, format[ "Laser Guided Missle $%1", _args ] ];
			};
			case ( "mortar" ) : {
				player getVariable "BIS_fnc_addCommMenuItem_menu" select _menuIndex set [ 1, format[ "Mortar Strike $%1", _args ] ];
			};
		};

		[] remoteExec ["BIS_fnc_refreshCommMenu"];
	};
};

lmo_addCommMenuItem = {
	params[ "_item", "_args" ];

	_menuID = [ player, _item ] call BIS_fnc_addCommMenuItem;
	[ _item, _args, _menuID ] call lmo_updateCommMenuItem;

	_commMenuItems = missionNamespace getVariable [ "lmo_commMenuItems", [] ];
	_commMenuItems set [ count _commMenuItems, [ _item, _menuID ] ];
	missionNamespace setVariable [ "lmo_commMenuItems", _commMenuItems ];
/*
	if !( isNil "_args" ) then {
		[ _item, _args, _menuID ] call lmo_updateCommMenuItem;
	};
 */
};


/*
["invisible", invisiblePrice, 1] call lmo_updateCommMenuItem;
player getVariable "BIS_fnc_addCommMenuItem_menu" select 2 set[ 1, format[ "Invisibility $%1", invisiblePrice ] ];
[] remoteExec ["BIS_fnc_refreshCommMenu"];
*/
