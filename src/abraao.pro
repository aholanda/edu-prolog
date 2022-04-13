genitor(abraão,ismael).
genitor(abraão,isaque).
genitor(hagar,ismael).
genitor(sara,isaque).

genitor(isaque,jacó).
genitor(isaque,esaú).
genitor(rebeca,jacó).
genitor(rebeca,esaú).

sexo(abraão,masculino).
sexo(hagar,feminino).
sexo(sara,feminino).
sexo(isaque,masculino).
sexo(ismael,masculino).

sexo(rebeca,feminino).
sexo(esaú,masculino).
sexo(jacó,masculino).



irmão(X,Y) :- sexo(X,masculino),genitor(Z,X),genitor(Z,Y).
irmã(X,Y) :- sexo(X,feminino),genitor(Z,X),genitor(Z,Y).

% Y é descendente de X
descendente(X,Z) :- genitor(X,Z).
descendente(X,Z) :- genitor(X,Y), descendente(Y,Z).


