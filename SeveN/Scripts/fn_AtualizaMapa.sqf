/*

	Autor: SeveN

*/

Private _Menu = findDisplay 3000;
Private _Mapa = _Menu DisplayCtrl 3002;
Private _Pos = Call Compile (LbData [3001,(lbCurSel 3001)]);

_Mapa CtrlMapAnimAdd [1,0.7,_Pos];

CtrlMapAnimCommit _Mapa;