%Diccionario

%Determinantes (det)
determinante(det(X),m,s) --> [X], {member(X, [el,mi,su,un])}.
determinante(det(X),f,s) --> [X], {member(X, [la,mi,su,una])}.

det(el).
det(mi).
det(su).
det(un).

det(la).
det(mi).
det(su).
det(una).

%Nombres (n)

nombre(n(X),m,s) --> [X], {member(X, [hombre,gato,raton,alumno,tenedor,cuchillo,canario,pantalon,cafe,procesador,profesor,nino,lugar,nacimiento,vuelo])}.
nombre(n(X),f,s) --> [X], {member(X, [manzana,mujer,practica,paloma,esperanza,corbata,herramienta,mesa,vida,universidad,cerveza])}.
nombre(n(X),m,p) --> [X], {member(X, [ratones,reflejos,textos,documentos])}.
nombre(n(X),f,p) --> [X], {member(X, [patatas,manzanas])}.

n(hombre).
n(gato).
n(raton).
n(alumno).
n(tenedor).
n(cuchillo).
n(canario).
n(pantalon).
n(cafe).
n(procesador).
n(profesor).
n(nino).
n(lugar).
n(nacimiento).
n(vuelo).

n(manzana).
n(mujer).
n(practica).
n(paloma).
n(esperanza).
n(corbata).
n(herramienta).
n(mesa).
n(vida).
n(cerveza).
n(universidad).

n(ratones).
n(reflejos).
n(textos).
n(documentos).

n(patatas).
n(manzanas).

%Nombre Propio (np)

nombrepropio(np(X),m,s) --> [X],{member(X, [juan,madrid,hector])}.
nombrepropio(np(X),f,s) --> [X],{member(X, [maria,irene])}.

np(juan).
np(madrid).
np(hector).

np(maria).
np(irene).


%Pronombres (pr)

pronombre(pron(X),m,s) --> [X], {member(X, [el])}.
pronombre(pron(X),f,s) --> [X], {member(X, [ella])}.

pron(el).
pron(ella).

%Verbos (v)

verbo(v(X),s) --> [X], {member(X, [come,ama,estudia,cazo,es,hace,canta,alzo,esta,habla,depende,era,sirve,sonrie,salta,toma,recoge,compre])}.
verbo(v(X),p) --> [X], {member(X, [comen,beben,vimos])}.
verbo(v(X),sc) --> [X], {member(X, [escribir])}.

v(come).
v(ama).
v(estudia).
v(cazo).
v(es).
v(hace).
v(canta).
v(alzo).
v(esta).
v(habla).
v(depende).
v(era).
v(sirve).
v(sonrie).
v(salta).
v(toma).
v(recoge).

v(comen).
v(beben).

v(compre).

v(vimos).

v(escribir).

%Adjetivos (adj)

adjetivo(adj(X),m,s) --> [X], {member(X, [negro,grande,gris,lento,alegre,potente,delicado,moreno])}.
adjetivo(adj(X),f,s) --> [X], {member(X, [roja,grande,gris,alegre,blanca,alta,potente])}.
adjetivo(adj(X),m,p) --> [X], {member(X, [negros])}.
adjetivo(adj(X),f,p) --> [X], {member(X, [rojas,fritas])}.

adj(negro).
adj(grande).
adj(gris).
adj(lento).
adj(alegre).
adj(potente).
adj(delicado).
adj(moreno).

adj(roja).
adj(grande).
adj(gris).
adj(alegre).
adj(blanca).
adj(alta).
adj(potente).

adj(negros).

adj(rojas).
adj(fritas).


%Adverbios (adv)

adverbio(adv(X)) --> [X], {adv(X)}.
adv(lejos).
adv(muy).
adv(claramente).
adv(bastante).
adv(solamente).


%Conjunciones (conj)

conjuncion(conj(X)) --> [X], {conj(X)}.
conj(y).
conj(pero).
conj(que).
conj(mientras).


%Preposiciones (prep)

preposicion(prep(X)) --> [X], {prep(X)}.
prep(a).
prep(con).
prep(de).
prep(en).
prep(para).


%Nexos (nexo)
nexo(nexo(X)) --> [X], {nexo(X)}.
nexo(que).
nexo(y).
