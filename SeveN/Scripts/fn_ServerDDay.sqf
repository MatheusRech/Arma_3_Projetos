if(lbCurSel 3001 == -1) ExitWith {hint "Escolha o local primeiro";};

Private _menu = findDisplay 3000;
Private _lista = _menu DisplayCtrl 3001;
Private _Pos = Call Compile (LbData [3001,(lbCurSel 3001)]);

[player, _Pos, (lbCurSel 3001)] RemoteExec ["SeveN_fnc_EntrarNoAviao",2];