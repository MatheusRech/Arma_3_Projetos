/*

	Autor: SeveN

*/
params ["_video"];

missionNamespace setVariable ["SkipVideo",false];

[(getMissionPath _video), [safeZoneX, safeZoneY, safeZoneW, safeZoneH], [1,1,1,1], "SkipVideo", [0,0,0,1], true] remoteExec ["BIS_fnc_playVideo", 0];