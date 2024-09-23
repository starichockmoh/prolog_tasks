родитель("Алексей", "Феодор") .
родитель("Алексей", "Софья") .
родитель("Алексей", "Иоанн") .
родитель("Алексей", "Петр") .
родитель("Алексей", "Тестовая") .

родитель("Наталья", "Петр") .
родитель("Наталья", "Тестовая") .

родитель("Тестовая", "ТестоваяПлям") .

родитель("Мария", "Феодор") .
родитель("Мария","Софья") .
родитель("Мария", "Иоанн") .

родитель("Петр", "Анна") .
родитель("Петр", "Елизавета") .

родитель("Екатерина", "Анна") .
родитель("Екатерина", "Елизавета") .

родитель("Михаил", "Алексей") .

родитель("Евдокия", "Алексей") .


мужчина("Алексей") .
мужчина("Феодор") .
мужчина("Петр") .
мужчина("Иоанн") .
мужчина("Михаил") .
женщина("Евдокия") .
женщина("Наталья") .
женщина("Мария") .
женщина("Екатерина") .
женщина("Анна") .
женщина("Елизавета") .
женщина("Софья") .
женщина("Тестовая") .
женщина("ТестоваяПлям") .

мать(Кто, Кого):-родитель(Кто, Кого), женщина(Кто).

отец(Кто, Кого):-родитель(Кто, Кого), мужчина(Кто).
сын(Кто, Кого):-родитель(Кого, Кто), мужчина(Кто).
дочь(Кто, Кого):-родитель(Кого, Кто), женщина(Кто).
дед(Прародитель, Потомок):-родитель(Прародитель, Родитель), родитель(Родитель, Потомок), мужчина(Прародитель).
бабушка(Прародитель, Потомок):-родитель(Прародитель, Родитель), родитель(Родитель, Потомок), женщина(Прародитель).
брат(Кто, Кого):- родитель(Родитель1, Кто), родитель(Родитель1, Кого), родитель(Родитель2, Кто), мужчина(Кто), Родитель1 @< Родитель2, Кто \== Кого .
сестра(Кто, Кого):- родитель(Родитель1, Кто), родитель(Родитель1, Кого), родитель(Родитель2, Кто), женщина(Кто), Родитель1 @< Родитель2, Кто \== Кого .
племянница(Кто, Кого):- брат(Брат, Кого), дочь(Кто, Брат); сестра(Сестра, Кого), дочь(Кто, Сестра).

родители(Родитель1, Родитель2):-родитель(Родитель1, Ребенок), родитель(Родитель2, Ребенок), Родитель1\==Родитель2.
родителиОдинРаз(Родитель1, Родитель2):-отец(Родитель1, Ребенок), мать(Родитель2, Ребенок), Родитель1\==Родитель2.

внук(Кто, Кого):-родитель(Кого, Ребенок), родитель(Ребенок, Кто), мужчина(Кто).
