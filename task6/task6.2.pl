len([],0).
len([_|Tail], Len):-
    len(Tail, TailLen), 
    Len is TailLen+1.