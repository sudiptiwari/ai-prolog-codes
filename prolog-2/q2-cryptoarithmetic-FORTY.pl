% FORTY TEN TEN = SIXTY
% run with query ?- solution([F,O,R,T,Y,E,N,S,I,X]).

:- use_module(library(clpfd)). % for constraint operation #=

solution([F,O,R,T,Y,E,N,S,I,X]):-
    C4=1, %c4 must be 1 as it is obtained by adding C3 and O only.
    
    % Uncomment the lines below one by one till it does not show "Time Limit Exceeded"
    T = 8,
    E = 5,
    N = 0,
    Y = 6,
    % O = 9,
    % R = 7,
    % F = 2,
    % I = 1,
    % S = 3,
    % X = 4,
    
    % member is a built in predicate in SWI Prolog with definition:
    % member(X, [X|_]).
	% member(X, [_|T]) :- member(X, T).
    
    member(C1,[0,1,2]), 
    member(C2,[0,1,2]),
    member(C3,[0,1,2]),
    % C1, C2, C3 will have values 0 or 1 or 2
    member(F,[0,1,2,3,4,5,6,7,8,9]),
    member(O,[0,1,2,3,4,5,6,7,8,9]),
    member(R,[0,1,2,3,4,5,6,7,8,9]),
    member(T,[0,1,2,3,4,5,6,7,8,9]),
    member(Y,[0,1,2,3,4,5,6,7,8,9]),
    member(E,[0,1,2,3,4,5,6,7,8,9]),
    member(N,[0,1,2,3,4,5,6,7,8,9]),
    member(S,[0,1,2,3,4,5,6,7,8,9]),
    member(I,[0,1,2,3,4,5,6,7,8,9]),
    member(X,[0,1,2,3,4,5,6,7,8,9]),
    
    % S,E,N, D, M, O, R, Y will have values between 0 and 9.
    % The values of S,E,N, D, M, O, R, Y must not be equal.
    all_different([F,O,R,T,Y,E,N,S,I,X]),
    % Computation for solution
    Y + 2*N #= Y + 10*C1, % if you write =(Assignment operator), it gives false
    C1 + T + 2*E #= T + 10*C2,
    C2 + R + 2*T #= X + 10*C3,
    C3 + O #= I + 10*C4,
    C4 + F #= S.

