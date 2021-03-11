/*

	Autor: SeveN

*/

jogadores = []; 
chamadaAviao = false;

[] spawn SeveN_fnc_Init;

_action = ["Sirene","Sirene","",{
	["sirene", sirene1, 1500, 265] spawn SeveN_fnc_TocarMusicaLoop;
	["sirene", sirene2, 1500, 265] spawn SeveN_fnc_TocarMusicaLoop;
	["sirene", sirene3, 1500, 265] spawn SeveN_fnc_TocarMusicaLoop;
	["sirene", sirene4, 1500, 265] spawn SeveN_fnc_TocarMusicaLoop;
	},{true}] call ace_interact_menu_fnc_createAction;

[["ACE_ZeusActions"], _action] call ace_interact_menu_fnc_addActionToZeus;