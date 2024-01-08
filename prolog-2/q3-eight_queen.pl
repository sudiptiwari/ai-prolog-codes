solution([c(X,Y)|Others]):-
	solution(Others),
	member(Y,[1,2,3,4,5,6,7,8]),
	noattack(c(X,Y),Others).
	% solution(Others). Putting it here gives false.

solution([]).

noattack(_,[]).

noattack(c(X,Y),[c(X1,Y1)|Others]):-
	Y \= Y1,
	Y1-Y \= X1-X,
	Y1-Y \= X-X1,
	noattack(c(X,Y),Others).

% Query like this:
% solution([c(1,A),c(2,B),c(3,C),c(4,D),c(5,E),c(6,F),c(7,G),c(8,H)]).
         
    

