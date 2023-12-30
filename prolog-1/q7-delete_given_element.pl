% Base Case
delete_element([A|T],A,T).

delete_element([H|T], A, [H_Result|T_Result]):-
    ( H \= A, H = H_Result, delete_element(T, A, T_Result)  );
    ( H = A, H \= H_Result, delete_element(T, A, T_Result)  ).
    