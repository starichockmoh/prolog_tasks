power(Base, 1, Base):-!.
power(Base, Exp, Res):-
    Exp1 is Exp-1,
    power(Base, Exp1, Res1),
    Res is Res1 * Base.
