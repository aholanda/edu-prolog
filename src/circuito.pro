
% tabela-verdade

and(X, Y, Z) :-
    X == 0, Z is 0, !;
    Y == 0, Z is 0, !.

and(X, Y, Z) :-
    X == 1, Y == 1, Z is 1.

or(X, Y, Z) :-
    X == 1, Z is 1, !;
    Y == 1, Z is 1, !.

or(X, Y, Z) :-
    X == 0, Y == 0, Z is 0.

not(X, Z) :-
    X == 0, Z is 1, !;
    X == 1, Z is 0, !.


% circuito D = ~(A~B + BC)

circuito(A, B, C, D) :-
    not(B, NotB),
    and(A, NotB, U),
    and(B, C, V),
    or(U, V, W),
    not(W, D).

