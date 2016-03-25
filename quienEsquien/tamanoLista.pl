longitud([_|Y],N):- longitud(Y,N1),
N is N1 + 1.
longitud([],N):- N is 0.

listar_longitudes(CA,CoP):-
[S|CA1]=CA,
atributos(AT),
member(S,AT),
S(X)
.