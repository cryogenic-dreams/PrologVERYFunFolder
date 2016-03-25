averiguar(J,X,OP):-
member(J,X),
write('Si.'),
nl,
OP is 0;
write('No.'),
nl,
OP is 1.
