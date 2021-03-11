/*

	Autor: SeveN

	Tocar musica em um objeto enquanto ele estiver vivo.

*/

params ["_musica", "_objeto", "_maxDistance", "_tempoMusica"];

while {Alive _objeto} do {
	[_musica, _objeto, _maxDistance] spawn SeveN_fnc_TocarMusica;

	sleep _tempoMusica;
};