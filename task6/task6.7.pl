reverse(Lst, Rev):-
    revIter(Lst, [], Rev).

revIter([], Buff, Buff):-!.
revIter([Head|Tail], Buff, Rev):-
    revIter(Tail, [Head|Buff], Rev).
