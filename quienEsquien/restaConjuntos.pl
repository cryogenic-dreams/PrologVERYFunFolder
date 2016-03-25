resta_conjuntos([],[],_) :- !.
resta_conjuntos(A,B,C) :- subtract(A,B,C).