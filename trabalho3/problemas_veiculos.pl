% Desenvolvido por: Daniel Jovenir Espindola
% Módulo 2: Análise de Problemas de Veículos

% Base de problemas
problema(bateria_fraca) :- motor_nao_liga, luzes_fracas.
problema(freio_desgastado) :- barulho_ao_frear, pedal_freio_macio.
problema(oleo_baixo) :- motor_fuma, cheiro_oleo.

% Recomendação de soluções
solucao(recarregar_bateria) :- problema(bateria_fraca).
solucao(substituir_pastilhas_freio) :- problema(freio_desgastado).
solucao(adicionar_oleo) :- problema(oleo_baixo).

% Interação com o usuário
diagnostico_veiculo :- 
    write('Sistema de Diagnóstico de Veículos'), nl,
    write('Responda "sim" ou "nao" para os seguintes sintomas:'), nl,
    perguntar_problema(motor_nao_liga),
    perguntar_problema(luzes_fracas),
    perguntar_problema(barulho_ao_frear),
    perguntar_problema(pedal_freio_macio),
    perguntar_problema(motor_fuma),
    perguntar_problema(cheiro_oleo),
    (   problema(P) 
    ->  format('Problema identificado: ~w. A solução recomendada é: ~w.~n', [P, solucao(P)])
    ;   write('Não foi possível identificar um problema específico. Consulte um mecânico.'), nl).

% Perguntar sintomas do veículo
perguntar_problema(Problema) :- 
    format('O seu veículo apresenta o seguinte problema: ~w? (sim/nao) ', [Problema]),
    read(Resposta),
    (   Resposta == sim 
    ->  assertz(Problema)
    ;   true).

% Limpar os dados após execução
limpar_veiculo :- 
    retractall(motor_nao_liga),
    retractall(luzes_fracas),
    retractall(barulho_ao_frear),
    retractall(pedal_freio_macio),
    retractall(motor_fuma),
    retractall(cheiro_oleo).
