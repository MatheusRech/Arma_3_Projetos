/*

	Autor: SeveN

*/

params ["_jogador", "_pos", "_index"];

if(_jogador in SeveN_JogadoresAviao) ExitWith {};

if(count SeveN_JogadoresAviao > 8) ExitWith {["O aviao está cheio!"] remoteExec ["sideChat", _jogador];};

SeveN_JogadoresAviao pushBackUnique _jogador;

[_jogador, format["Número %1 pronto!", (count SeveN_JogadoresAviao)]] remoteExec ["sideChat", 0];

if!(SeveN_ChamadaAviao) then {
	SeveN_ChamadaAviao = true;
		
	publicVariable "SeveN_ChamadaAviao";
		
	_cont = 60;
		
	while {SeveN_ChamadaAviao} do {
		[format["Avião vai sair em %1 segundos", _cont]] remoteExec ["hint", 0];
		if(_cont <= 0) then {
			SeveN_ChamadaAviao = false;
			publicVariable "SeveN_ChamadaAviao";
		};
		sleep 1;
		_cont = _cont - 1;
	};
		
	_veh = createVehicle [getText (MissionConfigFile >> "Paratroper" >> "ClasseAviao"), getArray (MissionConfigFile >> "Paratroper" >> "PosicaoIncialAviao"), [], 0, "FLY"];

	_grupoBot = createVehicleCrew _veh;

	_veh setPosATL (getArray (MissionConfigFile >> "Paratroper" >> "PosicaoIncialAviao"));
		
	_veh flyInHeightASL [800, 800, 800];

	_waypointJump =_grupoBot addWaypoint [[_pos select 0, _pos select 1,800], 800];
	_waypointJump setWaypointStatements ["true", "[this] remoteExec ['SeveN_fnc_LuzVerde', 0];"];

	_grupoBot addWaypoint [((getArray (MissionConfigFile >> "Paratroper" >> "PosicoesContinuidadeAviao")) select _index), 800];

	_waypointBase = _grupoBot addWaypoint [(getArray (MissionConfigFile >> "Paratroper" >> "PosicaoIncialAviao")), 800];
	_waypointBase setWaypointStatements ["true", "deleteVehicle vehicle((units(group this) select 0));{deleteVehicle _x;}forEach units (group this);"];
		
	sleep 0.5;
	[""] remoteExec ["hint", -2];
	
	{[_veh] remoteExec ["SeveN_fnc_MoveAviao", _X]; sleep 0.5;} forEach SeveN_JogadoresAviao;
		
	SeveN_JogadoresAviao = [];
};

	