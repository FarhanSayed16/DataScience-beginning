:- use_module(library(clpfd)).

puzzle([C,R,O,S,A,D,N,G,E]) :-
    Vars = [C,R,O,S,A,D,N,G,E],
    Vars ins 0..9,
    all_different(Vars),

    CROSS #= C*10000 + R*1000 + O*100 + S*10 + S,
    ROADS #= R*10000 + O*1000 + A*100 + D*10 + S,
    DANGER #= D*100000 + A*10000 + N*1000 + G*100 + E*10 + R,

    CROSS + ROADS #= DANGER,

    C #\= 0,
    R #\= 0,
    D #\= 0,

    label(Vars).
