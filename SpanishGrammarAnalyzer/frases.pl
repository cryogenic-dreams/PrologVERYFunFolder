:-consult(gramaticas),consult(draw).
:-write('NOTA: El asterisco * significa que hay un error de concordancia').


inicio:- p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30.



p1 :- oracion(X,[el,hombre,come,una,manzana],[]),draw(X).
p2 :- oracion(X,[la,mujer,come,manzanas],[]),draw(X).
p3 :- oracion(X,[maria,come,una,manzana,roja],[]),draw(X).
p4 :- oracion(X,[juan,ama,a,maria],[]),draw(X).
p5 :- oracion(X,[el,gato,negro,come,un,raton,gris],[]),draw(X).
p6 :- oracion(X,[juan,estudia,en,la,universidad],[]),draw(X).
p7 :- oracion(X,[el,alumno,ama,la,universidad],[]),draw(X).
p8 :- oracion(X,[el,gato,come,ratones],[]),draw(X).
p9 :- oracion(X,[el,raton,que,cazo,el,gato,era,gris],[]),draw(X).
p10 :- oracion(X,[la,universidad,es,grande],[]),draw(X).

p11 :- oracion(X,[el,hombre,grande,come,la,manzana,roja],[]),draw(X).
p12 :- oracion(X,[el,hombre,con,un,tenedor,grande,come,la,manzana,roja],[]),draw(X).
p13 :- oracion(X,[juan,y,maria,comen,la,manzana,roja,con,un,tenedor,y,un,cuchillo],[]),draw(X).
p14 :- oracion(X,[ella,hace,la,practica,de,juan],[]),draw(X).
p15 :- oracion(X,[el,canario,de,juan,y,maria,canta],[]),draw(X).
p16 :- oracion(X,[la,blanca,paloma,alzo,el,vuelo],[]),draw(X).
p17 :- oracion(X,[esta,muy,lejos,de,madrid],[]),draw(X).
p18 :- oracion(X,[el,es,lento,de,reflejos],[]),draw(X).
p19 :- oracion(X,[juan,habla,muy,claramente],[]),draw(X).
p20 :- oracion(X,[la,esperanza,de,vida,de,un,nino,depende,de,su,lugar,de,nacimiento],[]),draw(X).
p21 :- oracion(X,[el,hombre,que,vimos,en,la,universidad,era,mi,profesor],[]),draw(X).
p22 :- oracion(X,[juan,que,es,muy,delicado,come,solamente,manzanas,rojas],[]),draw(X).
p23 :- oracion(X,[el,procesador,de,textos,que,es,una,herramienta,muy,potente,sirve,para,escribir,documentos],[]),draw(X).
p24 :- oracion(X,[juan,es,moreno,y,maria,es,alta],[]),draw(X).
p25 :- oracion(X,[juan,recoge,la,mesa,mientras,maria,toma,un,cafe],[]),draw(X).
p26 :- oracion(X,[compre,un,pantalon,y,una,corbata,negros],[]),draw(X).
p27 :- oracion(X,[juan,y,hector,comen,patatas,fritas,y,beben,cerveza],[]),draw(X).
p28 :- oracion(X,[irene,canta,y,salta,mientras,juan,estudia],[]),draw(X).
p29 :- oracion(X,[irene,canta,y,salta,y,sonrie,alegre],[]),draw(X).
p30 :- oracion(X,[el,procesador,de,textos,es,una,herramienta,muy,potente,que,sirve,para,escribir,documentos,pero,es,bastante,lento],[]),draw(X).
