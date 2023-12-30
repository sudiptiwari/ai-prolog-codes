teacher("Daya Sagar Baral","Rajesh").
teacher("Sharad Kumar Ghimire","Nirmal").
colleagues(A, B):-
    teacher(A, _C), % singleton variable(that appears only once) is used with _ 
    teacher(B, _D);
    teacher(_C, A),
    teacher(_D, B).