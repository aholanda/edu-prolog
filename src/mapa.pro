mapa([AL, BA, CE, MA, PB, PE, PI, RN, SE], Cores) :- 
    vizinho(BA, AL, Cores),
    vizinho(BA, PE, Cores),
    vizinho(BA, PI, Cores),
    vizinho(BA, SE, Cores),
    vizinho(SE, AL, Cores),
    vizinho(AL, PE, Cores),
    vizinho(PE, PB, Cores),
    vizinho(PE, CE, Cores),
    vizinho(PE, PI, Cores),
    vizinho(PB, RN, Cores),
    vizinho(PB, CE, Cores),
    vizinho(RN, CE, Cores),
    vizinho(CE, PI, Cores),
    vizinho(PI, MA, Cores).

vizinho(X, Y, Cores) :- 
    member(X, Cores),
    member(Y, Cores),
    X \== Y.

teste1 :- 
    mapa(Solucao, [azul, vermelho]),
    write(Solucao).

teste2 :- 
    mapa(Solucao, [azul, vermelho, verde]),
    write(Solucao).

