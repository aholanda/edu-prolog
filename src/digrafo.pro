arco(a,b).
arco(b,e).
arco(a,c).
arco(c,d).
arco(e,d).
arco(d,f).
arco(d,g).
arco(g,d).

% Esta regra inicializa a lista de vertices visitados
caminho(X, Y) :- caminho(X,Y,[]).

caminho(X, Y, _) :- arco(X,Y).
caminho(X, Y, V) :- \+ member(X, V), arco(X, Z), caminho(Z, Y, [X|V]).
