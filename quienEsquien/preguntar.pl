preguntar(X) :- 
write('Escribe la pregunta que quieras formular acabada en punto (.): chico, chica, pelo_rubio, pelo_negro, gafas, ropa_roja, ropa_verde, ojos_azules, ojos_marrones, triste, feliz. '),
nl,
read(P),
atributos(AT),
member(P,AT),
Z=.. [P,X],
call(Z).

preguntar(CA,X,S) :- 
nl,
write('Ahora me toca a mi preguntar... '),
nl,
random_select(S,CA,_),
write('Es/Tiene.. '),
write(S),
write('?'),
nl,
atributos(AT),
member(S,AT),
Z=.. [S,X],
call(Z).

preguntar_av(CA,X,S) :- 
nl,
write('Ahora me toca a mi preguntar... '),
nl,
random_select(S,CA,_),
write('Es/Tiene.. '),
write(S),
write('?'),
nl,
atributos(AT),
member(S,AT),
Z=.. [S,X],
call(Z).