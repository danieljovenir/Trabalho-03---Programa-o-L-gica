% Desenvolvido por: Daniel Jovenir Espindola
% Módulo 4: Recomendação de Treinos de Academia

% Base de dados de treinos e objetivos
treino(hipertrofia, 'Treino para ganhar massa muscular') :-
    objetivo(ganhar_massa),
    experiencia(avancado),
    disponibilidade(tempo_aberto).
    
treino(definicao, 'Treino para definição muscular') :-
    objetivo(definir),
    experiencia(intermediario),
    disponibilidade(tempo_aberto).

treino(emagrecimento, 'Treino para emagrecimento') :-
    objetivo(emagrecer),
    experiencia(iniciante),
    disponibilidade(tempo_limitado).

treino(condicionamento, 'Treino para melhorar o condicionamento físico') :-
    objetivo(melhorar_condicionamento),
    experiencia(avancado),
    disponibilidade(tempo_aberto).

% Regras para recomendar treinos
recomendar_treino :-
    write('Bem-vindo ao Sistema de Recomendação de Treinos!'), nl,
    write('Por favor, responda com "sim" ou "nao" para as questões a seguir:'), nl,
    perguntar_objetivo(ganhar_massa),
    perguntar_objetivo(definir),
    perguntar_objetivo(emagrecer),
    perguntar_objetivo(melhorar_condicionamento),
    perguntar_experiencia(iniciante),
    perguntar_experiencia(intermediario),
    perguntar_experiencia(avancado),
    perguntar_disponibilidade(tempo_aberto),
    perguntar_disponibilidade(tempo_limitado),
    recomendar_treino_selecionado.

% Pergunta ao usuário sobre o objetivo de treino
perguntar_objetivo(Objetivo) :-
    format('Você tem como objetivo ~w? (sim/nao) ', [Objetivo]),
    read(Resposta),
    (   Resposta == sim
    ->  assertz(objetivo(Objetivo))
    ;   true).

% Pergunta ao usuário sobre o nível de experiência
perguntar_experiencia(Nivel) :-
    format('Você se considera ~w? (sim/nao) ', [Nivel]),
    read(Resposta),
    (   Resposta == sim
    ->  assertz(experiencia(Nivel))
    ;   true).

% Pergunta ao usuário sobre a disponibilidade de tempo
perguntar_disponibilidade(Tipo) :-
    format('Você tem ~w disponível? (sim/nao) ', [Tipo]),
    read(Resposta),
    (   Resposta == sim
    ->  assertz(disponibilidade(Tipo))
    ;   true).

% Exibir treino recomendado
recomendar_treino_selecionado :-
    (   treino(Tipo, Descricao) 
    ->  format('Recomendamos o treino: ~w - ~w.~n', [Tipo, Descricao])
    ;   write('Desculpe, não conseguimos encontrar um treino adequado para você.'), nl).

% Limpar os dados após execução
limpar_academia :-
    retractall(objetivo(_)),
    retractall(experiencia(_)),
    retractall(disponibilidade(_)).
