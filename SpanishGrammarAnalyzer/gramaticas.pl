:- consult(diccionario).


oracion(o(OS)) -->oracion_simple(OS).     
oracion(o(OC)) -->oracion_compuesta(OC). %compuesta

    oracion_simple(os(GN,GV)) --> g_nominal(GN,Gen,Num), g_verbal(GV,Num).
    oracion_simple(os(GV)) --> g_verbal(GV,Num).
    
    %errores concordancia
    oracion_simple(os([GN|*],[GV|*])) --> g_nominal(GN,_GenE1,_NumE1), g_verbal(GV,_NumE2).

    %estructura oraciones compuestas
    oracion_subordinada(osub(NEXO,O)) --> nexo(NEXO),oracion_simple(O).
    oracion_compuesta(oc(GN,OSUB,GV)) --> g_nominal(GN,Gen,_Num2), oracion_subordinada(OSUB), g_verbal(GV,Num).
    oracion_compuesta(oc(GN,GV,OSUB)) --> g_nominal(GN,Gen,_Num2), g_verbal(GV,Num), oracion_subordinada(OSUB).
    oracion_compuesta(oc(O1,C,O2)) --> oracion(O1),conjuncion(C),oracion(O2).

    %estructura grupo nominal compuesto
    g_nominal(gn(GNOM1, CONJ, GNOM, GA),Gen,Num) --> g_nom(GNOM1,Gen1,Num1), conjuncion(CONJ), g_nom(GNOM,Gen2,Num2),g_adjetival(GA,Gen3,Num3).
    g_nominal(gn(GNOM1, CONJ, GNOM),Gen,Num) --> g_nom(GNOM1,Gen1,Num1), conjuncion(CONJ), g_nom(GNOM,Gen2,Num2).
    g_nominal(gn(GNOM, GPREP),Gen,Num) --> g_nom(GNOM,Gen,Num), g_preposicional(GPREP).
    g_nominal(gn(GNOM, GADJ),Gen,Num) --> g_nom(GNOM,Gen,Num), g_adjetival(GADJ,Gen,Num).
    g_nominal(gn(GNOM,NOMP),Gen,Num) --> g_nom(GNOM,Gen,Num),nombrepropio(NOMP,Gen,Num).
    g_nominal(gn(GNOM),Gen,Num) --> g_nom(GNOM,Gen,Num).

    %errores de concordancia
    g_nominal(gn([GNOM|*], [GADJ|*]),_GenE1,_NumE1) --> g_nom(GNOM,_GenE1,_NumE1), g_adjetival(GADJ,_GenE2,_NumE2).
    g_nominal(gn([GNOM|*],[NOMP|*]),_GenE1,_NumE1) --> g_nom(GNOM,_GenE1,_NumE1),nombrepropio(NOMP,_GenE2,_NumE2).

    %Grupos nominales simples

    g_nom(gnom(DET,ADJ,N),Gen,Num)--> determinante(DET,Gen,Num), adjetivo(ADJ,Gen,Num),nombre(N,Gen,Num).
    g_nom(gnom(N,ADJ),Gen,Num) --> nombre(N,Gen,Num), adjetivo(ADJ,Gen,Num).
    g_nom(gnom(DET,N,GA),Gen,Num) --> determinante(DET,Gen,Num), nombre(N,Gen,Num), g_adjetival(GA,Gen,Num).
    g_nom(gnom(DET,N),Gen,Num) --> determinante(DET,Gen,Num), nombre(N,Gen,Num).
    g_nom(gnom(N),Gen,Num) --> nombre(N,Gen,Num).
    g_nom(gnom(NP),Gen,Num) --> nombrepropio(NP,Gen,Num).
    g_nom(gnom(PN),Gen,Num) --> pronombre(PN,Gen,Num).

    %errores
    g_nom(gnom([DET|*],[ADJ|*],[N|*]),_GenE1,_NumE1)--> determinante(DET,_GenE1,_NumE1), adjetivo(ADJ,_GenE2,_NumE2),nombre(N,_GenE3,_NumE3).
    g_nom(gnom([DET|*],[N|*]),_GenE1,_NumE1) --> determinante(DET,_GenE1,_NumE1), nombre(N,_GenE2,_NumE2).
    g_nom(gnom([N|*],[ADJ|*]),_GenE1,_NumE1) --> nombre(N,_GenE1,_NumE1), adjetivo(ADJ,_GenE2,_NumE2).
    g_nom(gnom([DET|*],[N|*],[GA|*]),_GenE1,_NumE1) --> determinante(DET,_GenE1,_NumE1), nombre(N,_GenE2,_NumE2), g_adjetival(GA,_GenE3,_NumE3).

    %Grupos adjetivales

    g_adjetival(ga(ADJ, GPREP),Gen,Num) --> adjetivo(ADJ,Gen,Num), g_preposicional(GPREP).
    g_adjetival(ga(ADV,ADJ),Gen,Num) --> g_adverbial(ADV),adjetivo(ADJ,Gen,Num).
    g_adjetival(ga(ADJ1,ADJ),Gen,Num) --> adjetivo(ADJ1,Gen,Num), adjetivo(ADJ,Gen,Num).
    g_adjetival(ga(ADJ, N),Gen,Num) --> adjetivo(ADJ,Gen,Num), nombre(N,Gen,Num).
    g_adjetival(ga(ADJ),Gen,Num) --> adjetivo(ADJ,Gen,Num).

    %errores
    g_adjetival(ga([ADJ1|*],[ADJ|*]),_GenE1,_NumE1) --> adjetivo(ADJ1,_GenE1,_NumE1), adjetivo(ADJ,_GenE2,_NumE2).
    g_adjetival(ga([ADJ|*], [N|*]),_GenE1,_NumE1) --> adjetivo(ADJ,_GenE1,_NumE1), nombre(N,_GenE2,_NumE2).


    %Grupos preposicionales

    g_preposicional(gp(PREP,GN)) --> preposicion(PREP), g_nominal(GN,Gen,Num).
    g_preposicional(gp(PREP,GADV))--> preposicion(PREP), g_adverbial(GADV).
    g_preposicional(gp(PREP,GA)) --> preposicion(PREP), g_adjetival(GA,Gen,Num).
    g_preposicional(gp(PREP,GV)) --> preposicion(PREP), g_verbal(GV,Num).


    %Grupos adverbiales

    g_adverbial(gadv(ADV1,ADV)) --> adverbio(ADV1), adverbio(ADV).
    g_adverbial(gadv(ADV,N)) --> adverbio(ADV),g_nominal(N,Gen,Num).
    g_adverbial(gadv(ADV, GP)) --> adverbio(ADV), g_preposicional(GP).
    g_adverbial(gadv(ADV1,ADV,GP)) --> adverbio(ADV1), adverbio(ADV),g_preposicional(GP).
    g_adverbial(gadv(ADV)) --> adverbio(ADV).


    %Grupos verbales

    g_verbal(gv(V,GN),Num) --> verbo(V,Num), g_nominal(GN,Gen,Num2).
    g_verbal(gv(V,ADJ),Num) --> verbo(V,Num), g_adjetival(ADJ,Gen,_Num3).
    g_verbal(gv(V,ADV),Num) --> verbo(V,Num), g_adverbial(ADV).
    g_verbal(gv(V,PREP),Num) --> verbo(V,Num), g_preposicional(PREP).
    g_verbal(gv(V),Num) --> verbo(V,Num).
