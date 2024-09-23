max(A, B, A):- A >= B, ! . 
max(A, B, B) .

max3(A, B, C, D) :- max(A, B, AB), max(AB, C, D).

goal:- max3(3, 33, 6, Max), write("max="), write(Max), nl .
