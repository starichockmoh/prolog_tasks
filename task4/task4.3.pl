hanoi(A, B, C, 1):- write(A), write('->'), write(C), nl, !.
hanoi(A, B, C, N):-
    N1 is N-1,
    hanoi(A, C, B, N1),
    write(A), write('->'), write(C), nl,
    hanoi(B, A, C, N1).