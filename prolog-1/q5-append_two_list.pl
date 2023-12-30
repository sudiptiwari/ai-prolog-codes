% List are immutable, so use a third list

% Base Case
append_list([], L2, L2).

% Think in what case it will be true and all you have to do is pass variable(X) in place of third list
append_list([H|T1], L2, [H|T_result]):-
    append_list(T1, L2, T_result).