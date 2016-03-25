personajes([albert,tiffany,paul,tom,natalie,derek,richard,roxanne,louis,michael,sarah,charles,sam,sabrina,steve,will,anthony,billy,cindy,emma,henry]).
atributos([chico,chica,gafas,pelo_negro,pelo_rubio,ojos_azules,ojos_marrones,ropa_roja,ropa_verde,triste,feliz]).
atributos1([chico,gafas,pelo_negro,ojos_azules,ropa_roja,triste]).
atributos2([chica,gafas,pelo_rubio,ojos_marrones,ropa_verde,feliz]).

chico([albert,paul,tom,derek,richard,louis,michael,charles,sam,steve,will,anthony,billy,henry]).
chica([tiffany,natalie,roxanne,sarah,sabrina,cindy,emma]).

gafas([albert,michael,charles,anthony,natalie,sabrina]).

pelo_negro([albert,tom,derek,richard,louis,charles,steve,henry,tiffany,sarah,sabrina,cindy]).
pelo_rubio([paul,michael,sam,will,anthony,billy,natalie,roxanne,emma]).

ojos_azules([albert,richard,louis,sam,will,billy,natalie,roxanne,sabrina]).
ojos_marrones([paul,tom,derek,michael,charles,steve,anthony,henry,tiffany,sarah,cindy,emma]).

ropa_roja([albert,paul,richard,louis,sam,steve,anthony,henry,natalie,sarah,cindy]).
ropa_verde([tom,derek,michael,charles,will,billy,tiffany,roxanne,sabrina,emma]).

feliz([albert,tom,richard,michael,charles,steve,will,anthony,tiffany,natalie,roxanne,sabrina,cindy,emma]).
triste([paul,derek,louis,sam,billy,henry,sarah]).

quienesquien(_):-
inicializar(J1,J2,L1,L2),
write('Elige la estrategia: 1 o 2.'),
nl,
read(E),
atributos1(CA),
Z=.. [estrategia,J1,J2,L1,L2,CA,N,E],
call(Z).