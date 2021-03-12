/*

	Autor: SeveN

	Configuração inicial

*/

//Variaveis

SeveN_FakeAviao = Call Compile (getText(MissionConfigFile >> "Paratroper" >> "AtivarFakeAviao"));
SeveN_Video = Call Compile (getText(MissionConfigFile >> "Video" >> "Ativado"));

SeveN_ControleZeusFakeAviao = false;
SeveN_JogadoresAviao = []; 
SeveN_SeveN_ChamadaAviao = false;

//Functions

	//Zeus

	//Spawn Aviões
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

	//Play Video
	if(SeveN_Video) then {
		_opcaoFilha = {
			params ["_target", "_player", "_params"];

			private _videos = "true" configClasses (MissionConfigFile >> "Video");

			private _actions = [];

			{
				_action = [getText(_X >> "nome"), getText(_X >> "nome"), "", {[_this select 2] spawn SeveN_fnc_PlayVideo;}, {true}, {}, getText(_X >> "path")] call ace_interact_menu_fnc_createAction;
				_actions pushBack [_action, [], _target];
				
			} forEach _videos;

			_action = ["SkipVideo", "Skip Video", "", {[] remoteExec ["SeveN_fnc_SkipVideo", 0];}, {!(missionNamespace getVariable ["SkipVideo", true])}, {}, []] call ace_interact_menu_fnc_createAction;
			_actions pushBack [_action, [], _target];

			_actions
		};

		_action = ["PlayVideo","Play Video","",{},{true}, _opcaoFilha] call ace_interact_menu_fnc_createAction;

		[["ACE_ZeusActions"], _action] call ace_interact_menu_fnc_addActionToZeus;
	};
