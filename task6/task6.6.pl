genl(N2,N2,[N2]):-!.
genl(N1,N2,[N1|L]):-N1<N2,N is N1+3, genl(N,N2,L). 

insert(Lst, Acc, Acc, X, [X|Lst]):-!.
insert([Head|Tail], Index, Acc, X, [Head|TailRes]):-
    Acc1 is Acc+1,
    insert(Tail, Index, Acc1, X, TailRes).
    

goal(X, Index, Res):-
    genl(3, 18, L),
    write(L), nl, 
    insert(L, Index, 0, X, Res).