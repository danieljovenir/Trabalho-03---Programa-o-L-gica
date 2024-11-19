% Desenvolvido por: Daniel Jovenir Espindola
% Módulo 4: Análise de Investigação Criminal

% Definindo evidencia como dinâmica para permitir alteração
:- dynamic evidencia/1.

% Base de evidências e testemunhos
evidencia(impressao_digital(lugar_crime)).
evidencia(motivo(financeiro)).
evidencia(testemunha(visto_discutindo)).
evidencia(relacao(intima)).

% Regras para identificação de suspeitos com base nas evidências
suspeito(jose) :- 
    evidencia(impressao_digital(lugar_crime)), 
    evidencia(motivo(financeiro)).

suspeito(anacoelho) :- 
    evidencia(testemunha(visto_discutindo)), 
    evidencia(relacao(intima)).

% Regras para teorias do crime com base nas evidências
teoria(crime_passional) :- 
    evidencia(testemunha(visto_discutindo)), 
    evidencia(relacao(intima)).

teoria(crime_financeiro) :- 
    evidencia(impressao_digital(lugar_crime)), 
    evidencia(motivo(financeiro)).

% Perguntar evidências com verificação de resposta
perguntar(Evidencia) :- 
    format('Há alguma evidência de ~w? (sim/nao) ', [Evidencia]),
    read(Resposta),
    (   Resposta == sim 
    ->  assertz(evidencia(Evidencia)),
        write('Evidência registrada.'), nl
    ;   Resposta == nao 
    ->  write('Evidência não registrada.'), nl
    ;   write('Resposta inválida! Por favor, digite "sim" ou "nao".'), nl,
        perguntar(Evidencia)  % Repetir a pergunta até receber uma resposta válida
    ).

% Interação com o usuário
investigacao :- 
    write('Bem-vindo ao Sistema de Análise de Investigação Criminal!'), nl,
    write('Responda com "sim" ou "nao" para as evidências seguintes:'), nl,
    perguntar(impressao_digital(lugar_crime)),
    perguntar(motivo(financeiro)),
    perguntar(testemunha(visto_discutindo)),
    perguntar(relacao(intima)),
    nl,
    (   suspeito(S) 
    ->  format('O suspeito provável é: ~w.~n', [S])
    ;   write('Não conseguimos identificar um suspeito com base nas evidências fornecidas.'), nl),
    nl,
    (   teoria(T) 
    ->  format('A teoria do crime mais provável é: ~w.~n', [T])
    ;   write('Não conseguimos identificar uma teoria do crime com base nas evidências fornecidas.'), nl),
    nl.

% Limpar os dados após execução
limpar :- 
    retractall(evidencia(_)),
    write('Dados limpos!'), nl.
