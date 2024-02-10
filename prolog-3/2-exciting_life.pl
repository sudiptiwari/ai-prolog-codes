happy(X) :-
    person(X, smart),
    \+ person(X, poor).

stupid(X) :-
    \+ person(X, read).

person(X, smart) :-
    \+ stupid(X).

person(john, read).
person(john, wealthy).

exciting_life(X) :-
    happy(X).
