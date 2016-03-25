estrategia(_,J2,[J2|[]],_,_,1,_) :- 
write('Has ganado! Mi personaje es: '),
write(J2).

estrategia(J1,_,_,[J1|[]],_,1,_) :- 
write('He ganado, tu personaje es: '),
write(J1).

%J1 es el personaje del usuario
%J2 es el personaje de la maquina
%L1 es la lista del usuario de posibles personajes que pueden ser J2
%L2 es la lista del ordenador de posibles personajes que pueden ser J1
%CA es el conjunto de atributos
%N es el minimo de longitud de L1 y L2
estrategia(J1,J2,L1,L2,CA,N,1) :-
preguntar(P1),
nl,
averiguar(J2,P1,OP1),
actualizar(L1,P1,Laux1,OP1),
longitud(Laux1,Naux1),
escribirCandidatos(Laux1),
nl,
write('Recuerda, tu personajes es: '),
write(J1),
nl,
preguntar(CA,P2,AU),
averiguar(J1,P2,OP2),
actualizar(L2,P2,Laux2,OP2),
actualizar(CA,AU,CA1,2),
write('Dudo entre: '),
longitud(Laux2,Naux2),
write(Naux2),
Conj1=[Naux1,Naux2],
sort(Conj1,Conj2),
[Naux3|X1]=Conj2,
nl,
nl,
nl,
nl,
estrategia(J1,J2,Laux1,Laux2,CA1,Naux3,1).

estrategia(J1,J2,L1,L2,CA,N,2) :- 
preguntar(P1),
nl,
averiguar(J2,P1,OP1),
actualizar(L1,P1,Laux1,OP1),
longitud(Laux1,Naux1),
escribirCandidatos(Laux1),
nl,
write('Recuerda, tu personajes es: '),
write(J1),
nl,
listar_longitudes(CA,CoP),
[P2|X1]=CoP,
preguntar_av(CA,P2,AU),
averiguar(J1,P2,OP2),
actualizar(L2,P2,Laux2,OP2),
actualizar(CA,AU,CA1,2),
write('Dudo entre: '),
longitud(Laux2,Naux2),
write(Naux2),
Conj1=[Naux1,Naux2],
sort(Conj1,Conj2),
[Naux3|X1]=Conj2,
nl,
nl,
nl,
nl,
estrategia(J1,J2,Laux1,Laux2,CA1,Naux3,2).
