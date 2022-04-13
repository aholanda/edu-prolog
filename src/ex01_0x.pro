% filho(filha, pai, mãe)
filho(camila, antônio, raquel).
filho(ronaldo, antônio, raquel).
filho(antônio, manoel, aparecida).
filho(rita, manoel, aparecida).

é_mãe(X) :- filho(_, _, X). % X é mãe
é_pai(X) :- filho(_, X, _). % X é pai
é_filho(X) :- filho(X, _, _). % X é filho
% X é irmão de Y, ambos podem ser masculino ou feminino
é_irmão(X, Y) :- filho(X, P, M), filho(Y, P, M).
% VM é avô de F e VF é avó, ambos por parte de pai P
são_avós_paternos(F, VM, VF) :- filho(P, VM, VF), filho(Filho, P, _).
% VM é avô de Filho e VF é avó, ambos por parte de mãe M
são_avós_maternos(F, VM, VF) :- filho(M, VM, VF), filho(F, _, M).


