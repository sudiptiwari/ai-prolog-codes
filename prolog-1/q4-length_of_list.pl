% Base case, sum of empty list is 0
length_of_list([],0).

length_of_list([_H|T],Length):-
    length_of_list(T,SubLength),
    Length is SubLength + 1.
