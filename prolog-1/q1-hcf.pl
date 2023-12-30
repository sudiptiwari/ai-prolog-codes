%base case If Remainder = 0 when divided by that number, then HCF is X.
hcf(X, 0, X).

hcf(Big, Small, Result):-
    Small > 0,
    Z is Big mod Small,
    hcf(Small, Z, Result).
    
