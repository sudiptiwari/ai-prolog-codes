% Base Case
display_ones_twos([],[]).

display_ones_twos([H|T],[H_R|T_R]):-
    (  H = H_R,  (H = 1; H = 2), display_ones_twos(T, T_R) );
    (  (H \= 1; H \= 2), display_ones_twos(T, [H_R|T_R])  ).

