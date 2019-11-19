class RscTitles
{
	class lmo_hudCash
	{
		idd = 1;
		name = "lmo_hudCash";
		onLoad = "_this call lmo_hudCash_Load";
		duration = 10e10;

		class controls
		{
			class lmo_hudCashText: RscText
			{
				idc = 1000;
				text = ""; //--- ToDo: Localize;
				x = 0.9 * safezoneW + safezoneX;
				y = 0.892 * safezoneH + safezoneY;
				w = 0.08 * safezoneW;
				h = 0.028 * safezoneH;
				colorText[] = {0,1,0,1};
			};
		};
	};
	class lmo_hudWave
	{
		idd = 2;
		name = "lmo_hudWave";
		onLoad = "_this call lmo_hudWave_Load";
		duration = 10e10;

		class controls
		{
			class lmo_hudWaveText: RscText
			{
				idc = 1001;
				text = ""; //--- ToDo: Localize;
				x = 0.85 * safezoneW + safezoneX;
				y = 0.92 * safezoneH + safezoneY;
				w = 0.15 * safezoneW;
				h = 0.028 * safezoneH;
				colorText[] = {1,0,0,1};
				font = PuristaSemiBold;
				//sizeEx = "0.023 / (getResolution select 5)"; //0.013
			};
		};
	};
};
