mdc(X, Y) :-
  X == 0, !, erro               ;
  Y == 0, !, erro.

mdc(X, Y) :-
    X < 0,
    Xnovo is -X,
    mdc(Xnovo, Y).

mdc(X, Y) :-
    Y < 0,
    Ynovo is -Y,
    mdc(X, Ynovo).

mdc(X, Y) :-
    X == Y, write('MDC='), write(X).

mdc(X, Y) :-
    X > Y, Xnovo is X - Y, mdc(Xnovo, Y).

mdc(X, Y) :-
    Y > X, Ynovo is Y - X, mdc(X, Ynovo).

erro() :-
    write('[erro] condição falhou: X e Y devem ser diferentes de 0!'), false.
