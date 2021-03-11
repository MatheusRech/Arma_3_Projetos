/*

	Autor: SeveN

*/

if(chamadaAviao) ExitWith {
	[player, [], 0] RemoteExec ["SeveN_fnc_EntrarNoAviao",2];
};

DisableSerialization; 
CreateDialog "NovoMapa";

Private _Menu = findDisplay 3000;
Private _Lista = _Menu DisplayCtrl 3001;
Private _Mapa = _Menu DisplayCtrl 3002;
Private _Votar = _Menu DisplayCtrl 3003;

LbClear _Lista;

Private _MapaId = -1;

{
	_Lista lbAdd Format["Salto %1", (_forEachIndex + 1)];
	_Lista lbSetData [(lbSize _Lista) - 1, Format["%1", _X]];
} forEach getArray (MissionConfigFile >> "Paratroper" >> "PosicoesSalto");

_Votar ButtonSetAction "[] Call SeveN_fnc_ServerDDay";