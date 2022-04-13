% Fonte: Clocksin
primos(Limite, Primos) :-
    inteiros(2, Limite, Inteiros),
    peneirar(Inteiros, Primos).

inteiros(Menor, Maior, [Menor|Resto]) :-
    Menor =< Maior,
    !,
    M is Menor + 1,
    inteiros(M, Maior, Resto).

inteiros(_, _, []).

peneirar([], []).

peneirar([I|Inteiros], [I|Primos]) :-
    remover(I,Inteiros, Novo),
    peneirar(Novo, Primos).

remover(P, [], []).
remover(P, [I|Inteiros], [I|Nis]) :-
\+ 0 is I mod P,
!,
remover(P, Inteiros, Nis).
remover(P, [I|Inteiros], Nis) :-
    0 is I mod P,
    !,
    remover(P,Is,Nis).
