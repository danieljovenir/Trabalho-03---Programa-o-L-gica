% Desenvolvido por: Daniel Jovenir Espindola
% Trabalho de Linguagem de Programação e Paradigmas
% Módulo 1: Diagnóstico Médico

% Base de sintomas
sintoma(febre).
sintoma(dor_de_cabeca).
sintoma(tosse).
sintoma(dor_de_garganta).
sintoma(dor_muscular).
sintoma(cansaco).
sintoma(nausea).
sintoma(falta_de_ar).

% Regras para diagnósticos
doenca(gripe) :- febre, tosse, cansaco.
doenca(infeccao_viral) :- febre, dor_de_garganta, dor_muscular.
doenca(enxaqueca) :- dor_de_cabeca, nausea, cansaco.
doenca(covid19) :- febre, tosse, falta_de_ar.

% Recomendação geral caso nenhum diagnóstico seja identificado
recomendacao(consulta_medica) :- \+ doenca(_).

% Interação com o usuário
diagnostico :- 
    write('Bem-vindo ao Sistema Especialista de Diagnóstico Médico!'), nl,
    write('Responda com "sim" ou "nao" para os sintomas seguintes:'), nl,
    perguntar(febre),
    perguntar(tosse),
    perguntar(cansaco),
    perguntar(dor_de_garganta),
    perguntar(dor_de_cabeca),
    perguntar(dor_muscular),
    perguntar(nausea),
    perguntar(falta_de_ar),
    (   doenca(D) 
    ->  format('Diagnóstico provável: ~w.~n', [D])
    ;   write('Não identificamos uma doença específica. Recomendamos consultar um médico.'), nl).

% Perguntar sintomas
perguntar(Sintoma) :- 
    format('Você está com ~w? (sim/nao) ', [Sintoma]),
    read(Resposta),
    (   Resposta == sim 
    ->  assertz(Sintoma)  % Adiciona o sintoma ao banco de dados
    ;   true).

% Limpar os dados após execução
limpar :- 
    retractall(febre),
    retractall(tosse),
    retractall(cansaco),
    retractall(dor_de_garganta),
    retractall(dor_de_cabeca),
    retractall(dor_muscular),
    retractall(nausea),
    retractall(falta_de_ar).
