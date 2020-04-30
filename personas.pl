mujer(ana).
mujer(maria).
mujer(ursula).
mujer(paulina).
mujer(eva).
mujer(diana).
mujer(martha).
mujer(gabriela).
mujer(karina).
mujer(carla).
mujer(celia).
hombre(ivan).
hombre(diego).
hombre(jaime).
hombre(daniel).
hombre(mario).
hombre(julio).
hombre(javier).
hombre(juan).
hombre(jose).
hombre(miguel).

padre_madre(ivan,karina).
padre_madre(ivan,julio).
padre_madre(ivan,juan).
padre_madre(ivan,miguel).
padre_madre(ana,karina).
padre_madre(ana,julio).
padre_madre(ana,juan).
padre_madre(ana,miguel).
padre_madre(mario,paulina).
padre_madre(mario,gabriela).
padre_madre(mario,celia).
padre_madre(mario,jaime).
padre_madre(eva,paulina).
padre_madre(eva,gabriela).
padre_madre(eva,celia).
padre_madre(eva,jaime).
padre_madre(paulina,maria).
padre_madre(paulina,ursula).
padre_madre(paulina,javier).
padre_madre(miguel,maria).
padre_madre(miguel,ursula).
padre_madre(miguel,javier).
padre_madre(karina,martha).
padre_madre(karina,diana).
padre_madre(karina,carla).
padre_madre(diego,martha).
padre_madre(diego,diana).
padre_madre(diego,carla).

%Reglas
abuelo(X) :- hombre(X),padre_madre(X,Y),padre_madre(Y,Z). % X es abuelo
abuelo(X,Z) :- hombre(X),padre_madre(X,Y),padre_madre(Y,Z). % X es abuelo de Z
abuela(X) :- mujer(X),padre_madre(X,Y),padre_madre(Y,Z). % X es abuela
abuela(X,Z) :- mujer(X),padre_madre(X,Y),padre_madre(Y,Z). % X es abuela de Z
persona(X) :- hombre(X);mujer(X). % X es persona
nieto(X) :- hombre(X),padre_madre(Z,Y),padre_madre(Y,X). % X es nieto
nieto(X,Z) :- hombre(X),padre_madre(Z,Y),padre_madre(Y,X). % X es nieto de Z
nieta(X) :- mujer(X),padre_madre(Z,Y),padre_madre(Y,X). % X es nieta
nieta(X,Z) :- mujer(X),padre_madre(Z,Y),padre_madre(Y,X). % X es nieta de Z
hermana(X) :- mujer(X),padre_madre(Y,X),padre_madre(Y,Z). % X es hermana
hermana(X,Z) :- mujer(X),padre_madre(Y,X),padre_madre(Y,Z),X\=Z. % X es hermana de Z
hermano(X) :- hombre(X),padre_madre(Y,X),padre_madre(Y,Z). % X es hermano
hermano(X,Z) :- hombre(X),padre_madre(Y,X),padre_madre(Y,Z),X\=Z. % X es hermano de Z
pareja(X,Y) :- hombre(X),mujer(Y),padre_madre(X,Z),padre_madre(Y,Z). % X y Y son pareja
%* Consultas
/*
abuelo(X).
	X = ivan ;
	X = ivan ;
	X = ivan ;
	X = ivan ;
	X = ivan ;
	X = ivan ;
	X = mario ;
	X = mario ;
	X = mario ;
abuelo(X,Y).
	X = ivan,
	Y = martha ;
	X = ivan,
	Y = diana ;
	X = ivan,
	Y = carla ;
	X = ivan,
	Y = maria ;
	X = ivan,
	Y = ursula ;
	X = ivan,
	Y = javier ;
	X = mario,
	Y = maria ;
	X = mario,
	Y = ursula ;
	X = mario,
	Y = javier ;
abuela(X).
	X = ana ;
	X = ana ;
	X = ana ;
	X = ana ;
	X = ana ;
	X = ana ;
	X = eva ;
	X = eva ;
	X = eva ;
abuela(X,Y).
	X = ana,
	Y = martha ;
	X = ana,
	Y = diana ;
	X = ana,
	Y = carla ;
	X = ana,
	Y = maria ;
	X = ana,
	Y = ursula ;
	X = ana,
	Y = javier ;
	X = eva,
	Y = maria ;
	X = eva,
	Y = ursula ;
	X = eva,
	Y = javier ;
persona(X).
	X = ivan ;
	X = diego ;
	X = jaime ;
	X = daniel ;
	X = mario ;
	X = julio ;
	X = javier ;
	X = juan ;
	X = jose ;
	X = miguel ;
	X = ana ;
	X = maria ;
	X = ursula ;
	X = paulina ;
	X = eva ;
	X = diana ;
	X = martha ;
	X = gabriela ;
	X = karina ;
	X = carla ;
	X = celia.
nieto(X).
	X = javier ;
	X = javier ;
	X = javier ;
	X = javier ;
nieto(X,Y).
	X = javier,
	Y = ivan ;
	X = javier,
	Y = ana ;
	X = javier,
	Y = mario ;
	X = javier,
	Y = eva ;
nieta(X).
	X = maria ;
	X = maria ;
	X = maria ;
	X = maria ;
	X = ursula ;
	X = ursula ;
	X = ursula ;
	X = ursula ;
	X = diana ;
	X = diana ;
	X = martha ;
	X = martha ;
	X = carla ;
	X = carla ;
nieta(X,Y).
	X = maria,
	Y = ivan ;
	X = maria,
	Y = ana ;
	X = maria,
	Y = mario ;
	X = maria,
	Y = eva ;
	X = ursula,
	Y = ivan ;
	X = ursula,
	Y = ana ;
	X = ursula,
	Y = mario ;
	X = ursula,
	Y = eva ;
	X = diana,
	Y = ivan ;
	X = diana,
	Y = ana ;
	X = martha,
	Y = ivan ;
	X = martha,
	Y = ana ;
	X = carla,
	Y = ivan ;
	X = carla,
	Y = ana ;
hermano(X).
	X = jaime ;
	X = jaime ;
	X = jaime ;
	X = jaime ;
	X = jaime ;
	X = jaime ;
	X = jaime ;
	X = jaime ;
	X = julio ;
	X = julio ;
	X = julio ;
	X = julio ;
	X = julio ;
	X = julio ;
	X = julio ;
	X = julio ;
	X = javier ;
	X = javier ;
	X = javier ;
	X = javier ;
	X = javier ;
	X = javier ;
	X = juan ;
	X = juan ;
	X = juan ;
	X = juan ;
	X = juan ;
	X = juan ;
	X = juan ;
	X = juan ;
	X = miguel ;
	X = miguel ;
	X = miguel ;
	X = miguel ;
	X = miguel ;
	X = miguel ;
	X = miguel ;
	X = miguel.
hermano(X,Y).
	X = jaime,
	Y = paulina ;
	X = jaime,
	Y = gabriela ;
	X = jaime,
	Y = celia ;
	X = jaime,
	Y = paulina ;
	X = jaime,
	Y = gabriela ;
	X = jaime,
	Y = celia ;
	X = julio,
	Y = karina ;
	X = julio,
	Y = juan ;
	X = julio,
	Y = miguel ;
	X = julio,
	Y = karina ;
	X = julio,
	Y = juan ;
	X = julio,
	Y = miguel ;
	X = javier,
	Y = maria ;
	X = javier,
	Y = ursula ;
	X = javier,
	Y = maria ;
	X = javier,
	Y = ursula ;
	X = juan,
	Y = karina ;
	X = juan,
	Y = julio ;
	X = juan,
	Y = miguel ;
	X = juan,
	Y = karina ;
	X = juan,
	Y = julio ;
	X = juan,
	Y = miguel ;
	X = miguel,
	Y = karina ;
	X = miguel,
	Y = julio ;
	X = miguel,
	Y = juan ;
	X = miguel,
	Y = karina ;
	X = miguel,
	Y = julio ;
	X = miguel,
	Y = juan ;
hermana(X).
	X = maria ;
	X = maria ;
	X = maria ;
	X = maria ;
	X = maria ;
	X = maria ;
	X = ursula ;
	X = ursula ;
	X = ursula ;
	X = ursula ;
	X = ursula ;
	X = ursula ;
	X = paulina ;
	X = paulina ;
	X = paulina ;
	X = paulina ;
	X = paulina ;
	X = paulina ;
	X = paulina ;
	X = paulina ;
	X = diana ;
	X = diana ;
	X = diana ;
	X = diana ;
	X = diana ;
	X = diana ;
	X = martha ;
	X = martha ;
	X = martha ;
	X = martha ;
	X = martha ;
	X = martha ;
	X = gabriela ;
	X = gabriela ;
	X = gabriela ;
	X = gabriela ;
	X = gabriela ;
	X = gabriela ;
	X = gabriela ;
	X = gabriela ;
	X = karina ;
	X = karina ;
	X = karina ;
	X = karina ;
	X = karina ;
	X = karina ;
	X = karina ;
	X = karina ;
	X = carla ;
	X = carla ;
	X = carla ;
	X = carla ;
	X = carla ;
	X = carla ;
	X = celia ;
	X = celia ;
	X = celia ;
	X = celia ;
	X = celia ;
	X = celia ;
	X = celia ;
	X = celia.
hermana(X,Y).
	X = maria,
	Y = ursula ;
	X = maria,
	Y = javier ;
	X = maria,
	Y = ursula ;
	X = maria,
	Y = javier ;
	X = ursula,
	Y = maria ;
	X = ursula,
	Y = javier ;
	X = ursula,
	Y = maria ;
	X = ursula,
	Y = javier ;
	X = paulina,
	Y = gabriela ;
	X = paulina,
	Y = celia ;
	X = paulina,
	Y = jaime ;
	X = paulina,
	Y = gabriela ;
	X = paulina,
	Y = celia ;
	X = paulina,
	Y = jaime ;
	X = diana,
	Y = martha ;
	X = diana,
	Y = carla ;
	X = diana,
	Y = martha ;
	X = diana,
	Y = carla ;
	X = martha,
	Y = diana ;
	X = martha,
	Y = carla ;
	X = martha,
	Y = diana ;
	X = martha,
	Y = carla ;
	X = gabriela,
	Y = paulina ;
	X = gabriela,
	Y = celia ;
	X = gabriela,
	Y = jaime ;
	X = gabriela,
	Y = paulina ;
	X = gabriela,
	Y = celia ;
	X = gabriela,
	Y = jaime ;
	X = karina,
	Y = julio ;
	X = karina,
	Y = juan ;
	X = karina,
	Y = miguel ;
	X = karina,
	Y = julio ;
	X = karina,
	Y = juan ;
	X = karina,
	Y = miguel ;
	X = carla,
	Y = martha ;
	X = carla,
	Y = diana ;
	X = carla,
	Y = martha ;
	X = carla,
	Y = diana ;
	X = celia,
	Y = paulina ;
	X = celia,
	Y = gabriela ;
	X = celia,
	Y = jaime ;
	X = celia,
	Y = paulina ;
	X = celia,
	Y = gabriela ;
	X = celia,
	Y = jaime.
pareja(X,Y).
	X = ivan,
	Y = ana ;
	X = ivan,
	Y = ana ;
	X = ivan,
	Y = ana ;
	X = ivan,
	Y = ana ;
	X = diego,
	Y = karina ;
	X = diego,
	Y = karina ;
	X = diego,
	Y = karina ;
	X = mario,
	Y = eva ;
	X = mario,
	Y = eva ;
	X = mario,
	Y = eva ;
	X = mario,
	Y = eva ;
	X = miguel,
	Y = paulina ;
	X = miguel,
	Y = paulina ;
	X = miguel,
	Y = paulina ;
*/
