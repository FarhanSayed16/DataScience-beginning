:- use_module(library(clpfd)).

puzzle([B,A,S,E,L,G,M]) :-
    Vars = [B,A,S,E,L,G,M],
    Vars ins 0..9,
    all_different(Vars),

    BASE #= B*1000 + A*100 + S*10 + E,
    BALL #= B*1000 + A*100 + L*10 + L,
    GAMES #= G*10000 + A*1000 + M*100 + E*10 + S,

    BASE + BALL #= GAMES,

    G #\= 0,
    B #\= 0,

    label(Vars).
