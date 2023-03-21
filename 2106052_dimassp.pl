/* fakta */
orang_tua(jack, susan).
orang_tua(jack, ray).
orang_tua(david, liza).
orang_tua(david, john).
orang_tua(jhon, peter).
orang_tua(jhon, mary).
orang_tua(karen, susan).
orang_tua(karen, rey).
orang_tua(amy, liza).
orang_tua(amy, jhon).
orang_tua(susan, peter).
orang_tua(susan, mary).

pria(david).
pria(jhon).
pria(peter).
pria(jack).
pria(rey).

wanita(amy).
wanita(liza).
wanita(susan).
wanita(mary).
wanita(karen).

/* aturan */
orang_tua(X, Y) :- orang_tua(X, Y).
saudara(X, Y) :- orang_tua(Z, X), orang_tua(Z, Y), X\=Y.
anak(Y, X) :- orang_tua(X, Y).
kakek(X, Z) :- orang_tua(X, Y), orang_tua(Y, Z), pria(X).
nenek(X, Z) :- orang_tua(X, Y), orang_tua(Y, Z), wanita(Y).
















