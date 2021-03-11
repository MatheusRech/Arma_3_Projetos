/*

	Autor: SeveN

	Configuração inicial

*/

//Variaveis

SeveN_FakeAviao = Call Compile (getText(MissionConfigFile >> "Paratroper" >> "AtivarFakeAviao"));
SeveN_ControleZeusFakeAviao = false;
SeveN_JogadoresAviao = []; 
SeveN_SeveN_ChamadaAviao = false;

//Functions

	//Zeus
	if(SeveN_FakeAviao) then {

		_opcaoFilha = {
			params ["_target", "_player", "_params"];

			private _actions = [];

			private _action = ["Habilitar", "Habilitar", "", {SeveN_ControleZeusFakeAviao = true; [] spawn SeveN_fnc_SpawnAvioesFake;}, {!SeveN_ControleZeusFakeAviao}, {}, []] call ace_interact_menu_fnc_createAction;
			_actions pushBack [_action, [], _target];

			_action = ["Desabilitar", "Desabilitar", "", {SeveN_ControleZeusFakeAviao = false}, {SeveN_ControleZeusFakeAviao}, {}, []] call ace_interact_menu_fnc_createAction;
			_actions pushBack [_action, [], _target];

			_actions
		};

		_action = ["ControleAviao","Controle spawn aviões","",{},{true}, _opcaoFilha] call ace_interact_menu_fnc_createAction;

		[["ACE_ZeusActions"], _action] call ace_interact_menu_fnc_addActionToZeus;
	};

