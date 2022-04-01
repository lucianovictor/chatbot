% Projeto Interdisciplinar Em Ciência da Computação
% Autor: Luciano Victor
% Projeto: ChatBot de Perguntas e Respostas.
% Linguagem: Prolog.


:-include(base_dados_rede).
:-include(base_dados2_rede).
		
bot_rede:-
	format('Saudações! Eu sou o Bot_Rede.'),nl,
	format('Voce deseja saber sobre: '),nl,
	  				
	repeat,
	nl, format('- '),
	read(Entrada),
	consulta_base_dados(Entrada, Resposta),
	format(Resposta), nl,
	encerra_sessao(Entrada).
	
  consulta_base_dados(Entrada, RespostaCorreta) :-
  definida_por(Entrada, RespostaCorreta), !.	
	
  encerra_sessao(Entrada):-
	Entrada = ('fim').