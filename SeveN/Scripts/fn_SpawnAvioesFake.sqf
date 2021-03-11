/*

	Autor: SeveN

	Spawna aviões de paraquedistas fake

*/

_delayAviao = getNumber (MissionConfigFile >> "Paratroper" >> "DelaySpawnAviao");

while {SeveN_ControleZeusFakeAviao} do {

	_pos = getArray (MissionConfigFile >> "Paratroper" >> "PosicoesSalto");

	{
		_posInit = getArray (MissionConfigFile >> "Paratroper" >> "PosicaoIncialAviao");
		_posFinal = (getArray (MissionConfigFile >> "Paratroper" >> "PosicoesContinuidadeAviao")) select _forEachIndex;
		
		_veh = createVehicle [getText(MissionConfigFile >> "Paratroper" >> "ClasseAviao"), _posInit, [], 0, "FLY"];

		_grupoBot = createVehicleCrew _veh;

		_veh setPosATL _posInit;
			
		_veh flyInHeightASL [800, 800, 800];

		_grupoBot addWaypoint [_X, 800];
		_grupoBot addWaypoint [_posFinal, 800];
		_waypointBase = _grupoBot addWaypoint [_posInit, 800];

		_waypointBase setWaypointStatements ["true", "deleteVehicle vehicle((units(group this) select 0));{deleteVehicle _x;}forEach units (group this);"];

		sleep 2;

	} forEach _pos;

	sleep _delayAviao;

};