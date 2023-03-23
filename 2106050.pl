orang_tua(amy,john).
orang_tua(jack, susan).
orang_tua(david, liza).
orang_tua(susan, peter).
orang_tua(david, john).
orang_tua(karen, susan).
orang_tua(susan, mary).
orang_tua(john, peter).
orang_tua(karen, ray).

laki(john).
laki(peter).
laki(david).
laki(ray).
laki(jack).

perempuan(karen).
perempuan(liza).
perempuan(amy).
perempuan(mary).
perempuan(susan).

pasangan(david, amy).
pasangan(jack, karen).
pasangan(john, karen).

ortu(X,Y) :- orang_tua(X,Y).
anak(Y,X) :- orang_tua(X,Y).
saudara(X, Y) :- orang_tua(Z, X), orang_tua(Z, Y), X \= Y.
kakek(X,Z) :- orang_tua(X,Y), orang_tua(Y,Z), laki(X).
nenek(X,Z) :- orang_tua(X,Y), orang_tua(Y,Z), perempuan(x).
sah(menikah(X,Y)) :- pasangan(X,Y).
