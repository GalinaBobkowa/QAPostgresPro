-- Заполним таблицу Students
INSERT INTO Students VALUES (1, 'Ivanov', 2020), (2, 'Petrov', 2021), (3, 'Sidorov', 2020), (4, 'Sipchuck', 2021), (5, 'Nesterov', 2022);

-- Заполним таблицу Courses
INSERT INTO Courses VALUES (1, 'Math', 180), (2, 'Physics', 200), (3, 'Chemistry', 180), (4, 'English', 200), (5, 'Informatics', 180);

-- Заполним таблицу Exams
INSERT INTO Exams (S_ID, Name_S,NO_C,Name_C) select Students.ID, Students.Name, Courses.C_NO, Courses.title from students, Courses;
UPDATE exams SET score=CASE when (RANDOM() < 0.25) then 0 ELSE FLOOR(3 + RANDOM()*3) END;
UPDATE exams SET score = 0 where s_id = 2;