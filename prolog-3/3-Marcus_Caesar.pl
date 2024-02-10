roman(X) :-
    pompeian(X).

hate(X,caesar) :-
    roman(X),
    \+ loyal(X, caesar).

% loyal(_X, _Y).

loyal(X, Y) :-
    \+ assassinate(X, Y).

assassinate(marcus, caesar).
pompeian(marcus).
