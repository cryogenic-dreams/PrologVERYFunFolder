inicializar(J1,J2,L1,L2) :- 
write('-----Juego Quien es Quien-----'),
nl,
personajes(X),
random_select(J1,X,L1),
random_select(J2,X,L2),
write('Tu personaje es: '),
write(J1),
nl,
write('Juguemos...').