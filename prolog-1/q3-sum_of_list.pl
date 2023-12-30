% Base case, sum of empty list is 0
sum([],0).

sum([H|T],Sum):-
    sum(T,SubSum),
    Sum is SubSum + H.
