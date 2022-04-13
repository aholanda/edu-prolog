homem(alberto).
homem(eduardo).
mulher(alice).
mulher(sônia).
pais(eduardo,sônia,alberto).
pais(alice,sônia,alberto).

irmã(X,Y) :-
    mulher(X),
    pais(X,M,P),
    pais(Y,M,P).
