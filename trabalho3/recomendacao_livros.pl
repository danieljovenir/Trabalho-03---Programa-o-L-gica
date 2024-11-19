% Desenvolvido por: Daniel Jovenir Espindola
% Módulo 3: Recomendações de Livros

% Base de livros e interesses
recomendar('1984') :- genero(ficcao), interesse(politica).
recomendar('Sapiens') :- genero(historia), interesse(ciencia).
recomendar('O Pequeno Príncipe') :- genero(ficcao), interesse(educacao).
recomendar('Mindset') :- genero(autoconhecimento), interesse(crescimento_pessoal).

% Interação com o usuário
recomendacao_livros :-
    write('Bem-vindo ao Sistema de Recomendações de Livros!'), nl,
    write('Responda com "sim" ou "nao" para os seguintes interesses:'), nl,
    perguntar_genero(ficcao),
    perguntar_genero(historia),
    perguntar_genero(autoconhecimento),
    perguntar_interesse(politica),
    perguntar_interesse(ciencia),
    perguntar_interesse(educacao),
    perguntar_interesse(crescimento_pessoal),
    nl,
    (   recomendar(Livro) 
    ->  format('Recomendamos o livro: ~w.~n', [Livro])
    ;   write('Desculpe, não conseguimos encontrar um livro para você neste momento.'), nl).

% Perguntar sobre o gênero
perguntar_genero(Genero) :-
    format('Você gosta de livros de ~w? (sim/nao) ', [Genero]),
    read(Resposta),
    (   Resposta == sim
    ->  assertz(genero(Genero)),
        write('Legal, vamos lembrar disso!'), nl
    ;   Resposta == nao
    ->  write('Ok, vamos seguir para o próximo!'), nl
    ;   write('Resposta inválida! Por favor, digite "sim" ou "nao".'), nl,
        perguntar_genero(Genero)  % Repete a pergunta caso a resposta seja inválida
    ).

% Perguntar sobre o interesse
perguntar_interesse(Interesse) :-
    format('Você tem interesse em ~w? (sim/nao) ', [Interesse]),
    read(Resposta),
    (   Resposta == sim
    ->  assertz(interesse(Interesse)),
        write('Ótimo, vamos anotar isso!'), nl
    ;   Resposta == nao
    ->  write('Entendido, seguimos para o próximo interesse!'), nl
    ;   write('Resposta inválida! Por favor, digite "sim" ou "nao".'), nl,
        perguntar_interesse(Interesse)  % Repete a pergunta caso a resposta seja inválida
    ).

% Limpar os dados após execução
limpar_livros :-
    retractall(genero(_)),
    retractall(interesse(_)),
    write('Dados limpos!'), nl.
