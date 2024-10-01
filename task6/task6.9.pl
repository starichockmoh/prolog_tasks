genl(N2,N2,[N2]):-!.
genl(N1,N2,[N1|L]):-N1>N2,N is N1-1, genl(N,N2,L). 

summ([], 0):-!.
summ([Head|Tail], Sum):-
   summ(Tail, TailSum),
   Sum is TailSum + Head.

goal(S):-
    genl(6, 2, L),
    write(L), nl,
    summ(L, S).