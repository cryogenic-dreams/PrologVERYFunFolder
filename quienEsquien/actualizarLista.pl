actualizar(A,B,C,0) :- interseccion_conjuntos(A,B,C).
actualizar(A,B,C,1) :- resta_conjuntos(A,B,C).
actualizar(A,B,C,2) :- eliminar_elemento(A,B,C).
