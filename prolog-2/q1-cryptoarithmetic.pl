% SEND MORE MONEY problem

:- use_module(library(clpfd)).

solution([S,E,N,D,M,O,R,Y]):-
    C4=1, %c4 must be 1 otherwise no need to mention M.
    E=5,
    O=0,
    % Uncomment the lines below one by one till it does not show "Time Limit Exceeded"
    % D=7,
    % M=1,
    % N=6,
    % R=8,
    % S=9,
    % Y=2,
    member(C1,[0,1]),
    member(C2,[0,1]),
    member(C3,[0,1]),
    % C1, C2, C3 will have values 0 or 1
    member(E,[0,1,2,3,4,5,6,7,8,9]),
    member(N,[0,1,2,3,4,5,6,7,8,9]),
    member(D,[0,1,2,3,4,5,6,7,8,9]),
    member(M,[0,1,2,3,4,5,6,7,8,9]),
    member(O,[0,1,2,3,4,5,6,7,8,9]),
    member(R,[0,1,2,3,4,5,6,7,8,9]),
    member(Y,[0,1,2,3,4,5,6,7,8,9]),
    member(S,[0,1,2,3,4,5,6,7,8,9]),
    % S,E,N, D, M, O, R, Y will have values between 0 and 9.
    % The values of S,E,N, D, M, O, R, Y must not be equal.
    all_different([S,E,N,D,M,O,R,Y]),
    % Computation for solution
    D+E #= Y + 10*C1,
    N+R+C1 #= E + 10*C2,
    E+O+C2 #= N + 10*C3,
    S+M+C3 #= O + 10*C4,
    M #= C4.

