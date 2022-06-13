
-- 1. Таблица employees
--    Создать таблицу employees
--  - id. serial,  primary key,
--  - employee_name. Varchar(50), not null
--   Наполнить таблицу employee 70 строками.


create table employees(
id serial primary key,
employee_name varchar (50) not null
)

select * from employees;

insert into employees(employee_name)
values ('Xavia Edwards'),
       ('Paulette Powell'),
       ('Jazlyn Gonzales'),
       ('Ocean Thomas'),
       ('Evangeline Reed'),
       ('Julia King'),
       ('Zaida Robinson'),
       ('Jazmine Anderson'),
       ('Haylee Richardson'),
       ('Jasmine Martin'),
       ('Alice Butler'),
       ('Kyla Cox'),
       ('Blessing Miller'),
       ('Elise Long'),
       ('Odessa Kelly'),
       ('Onida Morgan'),
       ('Luna Simmons'),
       ('Samara Cook'),
       ('Zarah Ramirez'),
       ('Ysobel Adams'),
       ('Elaine Foster'),
       ('Kyleigh Cook'),
       ('Esther Roberts'),
       ('Flora Barnes'),
       ('Millie Peterson'),
       ('Brenda Morgan'),
       ('Melissa Gonzales'),
       ('Oriana Barnes'),
       ('Genevieve Rogers'),
       ('Esmealda Foster'),
       ('Katherine Roberts'),
       ('Bridget Flores'),
       ('Unique Rogers'),
       ('Izabel Baker'),
       ('Flora Gonzalez'),
       ('Raina Martinez'),
       ('Zaida Washington'),
       ('Fern Walker'),
       ('Jane King'),
       ('Honesty Gonzales'),
       ('Fabiana Cooper'),
       ('Hana Taylor'),
       ('Tatum Jones'),
       ('Kiara Parker'),
       ('Ofelia Jenkins'),
       ('Gia Rodriguez'),
       ('Farrah Hill'),
       ('Queen Martin'),
       ('Cecelia Gray'),
       ('Iva Bennett'),
       ('Xinia Howard'),
       ('Raina Sanders'),
       ('Thalia Foster'),
       ('Isobel Barnes'),
       ('Savanna Price'),
       ('Selena Campbell'),
       ('Fredy James'),
       ('Opal Turner'),
       ('Lydia Mitchell'),
       ('Isabell Flores'),
       ('Xantha Powell'),
       ('Isabelle Patterson'),
       ('Xamira Smith'),
       ('Faith Long'),
       ('Olga Cook'),
       ('Alexandra Foster'),
       ('Amelia King'),
       ('Viola Taylor'),
       ('Lana Diaz'),
       ('Olida Ramirez');

-- 2.Таблица salary
--  Создать таблицу salary
--  - id. Serial  primary key,
--  - monthly_salary. Int, not null
--  Наполнить таблицу salary 15 строками:


create table salary_1(
id serial primary key,
montly_salary int not null
)

insert into salary_1(montly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400);
      
-- 3. Таблица employee_salary
--   Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null
--   Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id


create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
)

select * from employee_salary order by id;

insert into employee_salary(employee_id, salary_id)
values (63, 7),
       (59, 4),
       (58, 9),
       (40, 8),
       (23, 4),
       (11, 2),
       (52, 10),
       (15, 11),
       (26, 4),
       (16, 1),
       (33, 7), 
       (12, 8),
       (13, 9),
       (14, 6),
       (60, 15),
       (4, 2),
       (17, 3),
       (18, 6),
       (19, 11),
       (20, 14),
       (21, 12),
       (22, 5),
       (45, 4),
       (24, 1),
       (25, 2),
       (2, 3),
       (27, 4),
       (28, 5),
       (29, 6),
       (30, 7),
       (80, 8),
       (79, 9),
       (78, 10),
       (77, 10),
       (76, 11),
       (75, 10),
       (74, 9),
       (73, 10),
       (72, 7),
       (71, 6);
      
      
-- 4. Таблица roles
--   Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique
-- Поменять тип столба role_name с int на varchar(30)
-- Наполнить таблицу roles 20 строками:
     
create table roles_1(
id serial primary key,
role_name int not null unique);

alter table roles_1
alter column role_name type varchar (30);

insert into roles_1(role_name)
values  ('Junior Python developer'),
        ('Middle Python developer'),
        ('Senior Python developer'),
        ('Junior Java developer'),
        ('Middle Java developer'),
        ('Senior Java developer'),
        ('Junior JavaScript developer'),
        ('Middle JavaScript developer'),
        ('Senior JavaScript developer'),
        ('Junior Manual QA engineer'),
        ('Middle Manual QA engineer'),
        ('Senior Manual QA engineer'),
        ('Project Manager'),
        ('Designer'),
        ('HR'),
        ('CEO'),
        ('Sales manager'),
        ('Junior Automation QA engineer'),
        ('Middle Automation QA engineer'),
        ('Senior Automation QA engineer');
       
-- 5. Таблица roles_employee
--    Создать таблицу roles_employee
--    - id. Serial  primary key,
--    - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--    - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--    Наполнить таблицу roles_employee 40 строками:

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) 
references employees(id), 
foreign key (role_id)
references roles_1(id)
)    
   

insert into roles_employee(employee_id, role_id)
values (11, 13),
       (12, 4),
       (13, 6),
       (14, 7),
       (15, 2),
       (16, 13),
       (17, 20),
       (18, 1),
       (19, 3),
       (1, 17),
       (2, 8),
       (3, 4),
       (4, 5),
       (5, 7),
       (6, 18),
       (7, 9),
       (8, 8),
       (9, 7),
       (10, 17),
       (20, 8),
       (21, 5),
       (22, 8),
       (23, 4),
       (24, 3),
       (25, 1),
       (26, 11),
       (27, 9),
       (28, 7),
       (29, 7),
       (30, 5),
       (31, 8),
       (32, 6),
       (33, 19),
       (34, 8),
       (35, 9),
       (36, 11),
       (37, 1),
       (38, 9),
       (39, 1),
       (40, 3);








