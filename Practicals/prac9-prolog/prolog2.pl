:- use_module(library(clpfd)).

puzzle([T,O,G,U]) :-
    Vars = [T,O,G,U],
    Vars ins 0..9,
    all_different(Vars),

    TO   #= T*10 + O,
    GO   #= G*10 + O,
    OUT  #= O*100 + U*10 + T,

    TO + GO #= OUT,

    T #\= 0,
    G #\= 0,
    O #\= 0,   % O is leading in OUT

    label(Vars).
