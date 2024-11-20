male(hari).
male(shyam).
male(gokul).
male(ranjan).
male(narayan).
female(sita).
female(debapriya).
female(mala).
parent(hari,ram).
parent(hari,shyam).
parent(hari,debapriya).
parent(ram,mala).
parent(ram,gokul).
parent(ram,ranjan).
parent(sita,mala).
parent(sita,gokul).
parent(sita,ranjan).
parent(debapriya,narayan).

mother(X,Y):-female(X),parent(X,Y).
father(X,Y):-male(X),parent(X,Y).
daughter(X,Y):-female(X),parent(Y,X).
son(X,Y):-male(X),parent(Y,X).
sister(X,Y):-female(X),parent(Z,X),parent(Z,Y),X\=Y.
brother(X,Y):-male(X),parent(Z,X),parent(Z,Y),X\=Y.
uncle(X,Y):-male(X),parent(Z,Y),brother(X,Z).
maternaluncle(X,Y):-male(X), female(Z),parent(Z,Y),brother(X,Z).
grandfather(X,Y):-male(X),parent(Z,Y),parent(X,Z).
grandmother(X,Y):-female(X),parent(Z,Y),parent(X,Z).