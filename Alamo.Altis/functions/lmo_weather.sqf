lmo_rain = {
	params [ "_waveLvl", "_rainChange"];
	if (_waveLvl % _weatherChange == 0) then {
		if (!raining) then {
			15 setOvercast 1; 15 setRain 1; forceWeatherChange;
			"RainAlert" remoteExec ["BIS_fnc_showNotification"];
			raining = true;
		} else {
			15 setOvercast 0.1; 15 setRain 0; forceWeatherChange;
			"RainOverAlert" remoteExec ["BIS_fnc_showNotification"];
			raining = false;
		}
	}
};

lmo_time = {
	params [ "_waveLvl", "_rainChange"];
	if (_waveLvl % _weatherChange == 0) then {
		if (dawn) then {
			"NightOverAlert" remoteExec ["BIS_fnc_showNotification"];
			dawn = false;
			publicVariable "dawn";
			setDate [2035, 06, 10, 08, 00];
			day = true;
			publicVariable "day";
		} else {
			if (day) then {
				day = false;
				publicVariable "day";
				setDate [2035, 06, 10, 12, 00];
				noon = true;
				publicVariable "noon";
			} else {
				if (noon) then {
					noon = false;
					publicVariable "noon";
					setDate [2035, 06, 10, 16, 00];
					dusk = true;
					publicVariable "dusk";
				} else {
					if (dusk) then {
						"NightAlert" remoteExec ["BIS_fnc_showNotification"];
						dusk = false;
						publicVariable "dusk";
						setDate [2035, 06, 10, 00, 00];
						night = true;
						publicVariable "night";
					} else {
						if (night) then {
							night = false;
							publicVariable "night";
							setDate [2035, 06, 10, 03, 52];
							dawn = true;
							publicVariable "dawn";
						} else {
							setDate [2035, 06, 10, 08, 00];
							day = true;
							publicVariable "day";
						}
					}
				}
			}
		}
	}
};
