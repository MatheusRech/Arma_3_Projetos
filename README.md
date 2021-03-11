# SeveN Scripts!

Ola eu meu nick é SeveN e programo scripts para o jogo arma 3. Este trabalho tem como objetivo criar scripts universais para missões de Arma 3 Milsim.

Meu discord: **SeveN#0090**

**Caso deseje utilizar o meu pacote é ncessario menssurar meu nick nos autores da missão!!**

# Configuração
Para adicionar o pacote de scripts em sua missão é necessário copiar o arquivo init.sqf para a pasta da sua missão, caso ja tenha um arquivo init em sua missão basta copiar e colocar a linha de código abaixo em qualquer lugar do arquivo:

    [] spawn  SeveN_fnc_Init;
Este script carrega todas as funções e variáveis do sistema. Também é necessário que a pasta SeveN esteja na pasta da missão.

Todos os scripts não precisam ser alterados, somente os arquivos de configuração localizados na pasta: **SeveN/Config/**

Nenhum arquivo pode ser renomeado. 

É necessário que a missão possua o mod do ACE para que alguns scripts funcionem.
## Script de paraquedismo:

Este script foi criado para implementar uma necessidade de um bot que pilote um avião para os jogadores saltarem em campos especificados.

A configuração é básica:

    class Paratroper {
	    AtivarFakeAviao = "true"; // Habilita que o ZeuS possa criar aviões de scenario sobreveoando o mesmo trajeto do avião dos paraquedistas.
	    ClasseAviao = "LIB_C47_Skytrain"; // Classe do avião que vai ser utilizado.
	    DelaySpawnAviao = 140; // Delay de spawn dos aviões scenario.
	    PosicaoIncialAviao[] = {3751.875,9563.077,800}; // Posição aonde o avião inicia o seu voo ja no ar.
	    PosicoesSalto[] = {{465.444,1508.82,800},{1396.81,2779.79,800},{1488.78,1514.37,800}, {2838.25,1459.72,800}, {3884.69,1677.87,800}}; // Posições desponiveis para o salto.
	    PosicoesContinuidadeAviao[] = {{437.999,331.986,800}, {1530.03,378.913,800}, {1530.03,378.913,800}, {2829.9,385.612,800}, {3941.82,385.612,800}}; // Posições para aonde o avião vai após começar a liberar os paraquedistas. Recomendado uma linha reta de 700 metros da direção do avião.
	};
Nome do arquivo de configuração: **ScriptParatroper.hpp**
Local do arquivo: **SeveN/Config/ScriptParatroper.hpp**

O script é inserido no init de qualquer objeto qualquer do editor(bot, carro, placa, casa, etc):

    this addAction["Entrar no avião",{[] spawn SeveN_fnc_MenuJump;},"", 15, false, false, '',''];
