:- dynamic верно/2, ложно/2.


фильм("Седьмая печать"):- это("Ужасы"),
    свойство("Режиссер", "Ингмар Бергман"),
    свойство("В ролях", "Макс фон Сюдов"),
    свойство("Период", "50ые").

фильм("The Exorcist"):- это("Ужасы"),
    свойство("Режиссер", "Уильям Фридкин"),
    свойство("В ролях", "Макс фон Сюдов"),
    свойство("Период", "70ые").


фильм("Сияние") :- это("Ужасы"),
    свойство("Режиссер", "Стэнли Кубрик"),
    свойство("В ролях", "Джек Николсон"),
    свойство("Период", "80ые").


фильм("Пролетая над гнездом кукушки") :- это("Драма"),
    свойство("Режиссер", "Милош Форман"),
    свойство("В ролях", "Джек Николсон"),
    свойство("Период", "70ые").


фильм("Форрест Гамп") :- это("Приключения"),
    свойство("Режиссер", "Роберт Земекис"),
    свойство("В ролях", "Том Хэнкс"),
    свойство("Период", "90ые").


фильм("Изгой") :- это("Приключения"),
    свойство("Режиссер", "Роберт Земекис"),
    свойство("В ролях", "Том Хэнкс"),
    свойство("Период", "90ые"),
    нет_свойства("У фильма", "есть оскар").


фильм("Земляничная поляна") :- это("Драма"),
    свойство("Режиссер", "Ингмар Бергман"),
    свойство("В ролях", "Виктор Шёстрём"),
    свойство("Период", "50ые").

фильм("Хороший, плохой, злой") :- это("Вестерн"),
    это("Спагетти-вестерн"),
    свойство("Режиссер", "Серджо Леоне"),
    свойство("В ролях", "Клинт Иствуд"),
    свойство("Период", "60ые").

фильм("Хороший, плохой, злой") :- это("Вестерн"),
    это("Спагетти-вестерн"),
    свойство("Режиссер", "Серджо Леоне"),
    свойство("В ролях", "Клинт Иствуд"),
    свойство("Период", "60ые вторая половина").

фильм("За пригоршню долларов") :- это("Вестерн"),
    это("Спагетти-вестерн"),
    свойство("Режиссер", "Серджо Леоне"),
    свойство("В ролях", "Клинт Иствуд"),
    свойство("Период", "60ые первая половина").

фильм("Омерзительная восьмёрка") :- это("Вестерн"),
    свойство("Режиссер", "Квентин Тарантино"),
    свойство("В ролях", "Сэмюэл Л. Джексон"),
    свойство("Период", "2010ые").


это("Ужасы"):- свойство("Оно", "устрашает").

это("Драма"):- свойство("Оно", "содержит элементы трагедии").

это("Приключения"):- свойство("В нем", "герои выходят из сложных ситуаций").

это("Приключения"):- свойство("В нем", "герои используют смекалку").

это("Вестерн"):- свойство("В нем", "про дикий запад").

это("Спагетти-вестерн"):- это("Вестерн"),свойство("Был снят", "в италии в 60ые-70ые").

свойство(Арг, Арг2) :- верно(Арг, Арг2), !.
свойство(Арг, Арг2) :- not(ложно(Арг, Арг2)), узнать(Арг, Арг2, Ответ), Ответ=да.
нет_свойства(Арг, Арг2) :- ложно(Арг, Арг2), !.
нет_свойства(Арг, Арг2) :- not(верно(Арг, Арг2)), узнать(Арг, Арг2, Ответ), Ответ=нет.

узнать(Арг, Арг2, Ответ) :- write(Арг),write(" "), 
    write(Арг2), read(Ответ), 
    запомнить(Арг, Арг2, Ответ).

запомнить(Арг, Арг2, да) :- assert(верно(Арг,Арг2)).
запомнить(Арг, Арг2, нет) :- assert(ложно(Арг,Арг2)).

очистить:- retract(верно(_,_)), fail. 
очистить:- retract(ложно(_,_)), fail.


цель:- фильм(Арг),!,
    write("Загаданный фильм "),writeln(Арг),очистить.
цель:- write("К сожалению, этот фильм мне не известно."), очистить.
