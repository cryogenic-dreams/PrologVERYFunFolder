interseccion_conjuntos([],[],_) :- !.
interseccion_conjuntos(A,B,C) :-
	intersection(A,B,C).
