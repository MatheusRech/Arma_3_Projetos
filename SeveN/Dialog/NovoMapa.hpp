/*

	Autor: SeveN

*/

class NovoMapa
{
	idd = 3000;
	
	class ControlsBackground
	{
		class BG
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.45375;
			y = safeZoneY + safeZoneH * 0.26777778;
			w = safeZoneW * 0.248125;
			h = safeZoneH * 0.40444445;
			style = 0;
			text = "";
			colorBackground[] = {0,0,0,0.45};
			colorText[] = {0,0,0,0};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1);
			
		};
		class Titulo
		{
			type = 0;
			idc = -1;
			x = safeZoneX + safeZoneW * 0.298125;
			y = safeZoneY + safeZoneH * 0.23;
			w = safeZoneW * 0.404375;
			h = safeZoneH * 0.03444445;
			style = 0;
			text = "Escolha o local para saltar";
			colorBackground[] = {0,0.5,1,0.9};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.95);
			
		};
	};
	class Controls
	{
		class ListaDeLocais
		{
			type = 5;
			idc = 3001;
			x = safeZoneX + safeZoneW * 0.299375;
			y = safeZoneY + safeZoneH * 0.26777778;
			w = safeZoneW * 0.1525;
			h = safeZoneH * 0.40555556;
			style = 16;
			colorBackground[] = {0,0,0,0.45};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorSelect[] = {0,0.5,1,0.9};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			maxHistoryDelay = 0;
			rowHeight = 0;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.95);
			soundSelect[] = {"\A3\ui_f\data\sound\RscListbox\soundSelect",0.09,1.0};
			onLBSelChanged = "[] call SeveN_fnc_AtualizaMapa";
			class ListScrollBar
			{
				color[] = {1,1,1,1};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
				
			};
			
		};
		class Mapa : SeveN_RscMapControl
		{
			idc = 3002;
			
			x = safeZoneX + safeZoneW * 0.45875;
			y = safeZoneY + safeZoneH * 0.27444445;
			w = safeZoneW * 0.239375;
			h = safeZoneH * 0.39;
			
			widthRailWay = 1;
            maxSatelliteAlpha = 0.75;
            alphaFadeStartScale = 1.15;
            alphaFadeEndScale = 1.29;	
		};
		class Votar
		{
			type = 1;
			idc = 3003;
			x = safeZoneX + safeZoneW * 0.299375;
			y = safeZoneY + safeZoneH * 0.67777778;
			w = safeZoneW * 0.1525;
			h = safeZoneH * 0.04;
			style = 0;
			text = "Escolher";
			borderSize = 0;
			colorBackground[] = {0,0,0,0.85};
			colorBackgroundActive[] = {1,1,1,1};
			colorBackgroundDisabled[] = {0.2,0.2,0.2,1};
			colorBorder[] = {0,0,0,0};
			colorDisabled[] = {0.2,0.2,0.2,1};
			colorFocused[] = {0.2,0.2,0.2,1};
			colorShadow[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			offsetPressedX = 0.01;
			offsetPressedY = 0.01;
			offsetX = 0.01;
			offsetY = 0.01;
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.95);
			soundClick[] = {"\A3\ui_f\data\sound\RscButton\soundClick",0.09,1.0};
			soundEnter[] = {"\A3\ui_f\data\sound\RscButton\soundEnter",0.09,1.0};
			soundEscape[] = {"\A3\ui_f\data\sound\RscButton\soundEscape",0.09,1.0};
			soundPush[] = {"\A3\ui_f\data\sound\RscButton\soundPush",0.09,1.0};
			
		};
		
	};
	
};
