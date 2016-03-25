eliminar_elemento([],[],_) :- !.
eliminar_elemento(A,B,C) :-
	delete(A,B,C).