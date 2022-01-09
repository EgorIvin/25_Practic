    /*HOMEWORK SQL 2*/
    
create table employees (
id serial primary key,
employee_name varchar(50) not null
)

insert into employees(employee_name)
values ('Egor'),
       ('Ivan'),
       ('Dalton Bryant'),
       ('Winifred Roth'),
       ('Lance Cummings'),
       ('Chastity Holt'),
       ('Berly Haley'),
       ('Bylvester Cooper'),
       ('Karly Reid'),
       ('Plato Whitley'),
       ('Fallon Rosario'),
       ('Larissa Hickman'),
       ('Laurel Watson'),
       ('Skyler Bray'),
       ('Macey Lara'),
       ('Daquan Durham'),
       ('Tamekah Lambert'),
       ('Holmes Tyler'),
       ('Hayley Ferguson'),
       ('Brady Franco'),
       ('Brenna Giles'),
       ('Quynn Mckee'),
       ('Alana Dorsey'),
       ('Alan Wilcox'),
       ('Mona Trevino'),
       ('Mufutau Wolfe'),
       ('Bruce Solomon'),
       ('Merritt Butler'),       ('Demetrius Flores'),
       ('Francis Britt'),
       ('Delilah Byrd'),
       ('Francesca Holman'),
       ('Indigo Farley'),
       ('Harlan Diaz'),
       ('Ross Terry'),
       ('Kristen Robertson'),
       ('Kane Wilkerson'),
       ('Whoopi Fuller'),
       ('Jacob Goodman'),
       ('Barry Farley'),
       ('Ivor Chandler'),       ('Abra Connor'),
       ('Risa Rowe'),
       ('Lisandra Rivera'),
       ('Yetta Brewer'),
       ('Harlan Trevino'),
       ('Kyla Barker'),
       ('Demetria Ramos'),
       ('Jared Finch'),
       ('Camden Pittman'),
       ('Dora Shelton'),
       ('Melodie Wallace'),
       ('Brandon Sanford'),
       ('Tiger Bernard'),
       ('Chaim Sherman'),
       ('Kirk Fischer'),
       ('Blossom Eaton'),
       ('Dominic Pearson'),
       ('Neville Robbins'),
       ('Charles Parrish'),
       ('Unity Barker'),
       ('Myles Marsh'),
       ('Rahim Norton'),
       ('Zahir Bentley'),
       ('John Patel'),
      ('Thomas Anderson'),
       ('Lara Mooney'),
       ('Lavanda Armen'),
       ('Lumin Soul'),
       ('Arik Sos'),
       ('Shusy Pust');
       

select * from employees;

/*При удалении сотрудников и добавлении новых ID начинается не с 1 а с конца последнего ID (TRUNCATE не решает проблему)*/

                         truncate table employees;

create table salary(
id serial primary key,
monthly_salary int not null
);

select * from salary;

/*add in table salary 15 string*/

insert into salary(monthly_salary)
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
       (2400),
       (2500);
      
create table employee_salary(
id serial primary key,
employee_id int unique not null,
salary_id int not null
)

insert into employee_salary (employee_id, salary_id)
values (3,7),
       (1,4),
       (5,9),
       (50,14),
       (51,13),
       (52,12),
       (53,11),
       (54,10),
       (55,1),
       (56,2),
       (57,3),
       (58,4),
       (10,5),
       (13,6),
       (15,7),
       (16,8),
       (17,9),
       (21,14),
       (22,12),
       (23,13),
       (24,11),
       (31,10),
       (32,14),
       (33,1),
       (34,3),
       (35,2),
       (36,4),
       (41,5),
       (42,3),
       (43,2),
       (81,1),
       (82,6),
       (83,8),
       (84,9),
       (85,4),
       (86,6),
       (87,2),
       (88,11),
       (89,12),
       (90,7);
       
select * from employee_salary;

create table roles (
id serial primary key,
role_name int unique not null
);

select * from roles;
 
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

select * from roles;

insert into roles (role_name)
values ('Junior Python developer'),
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
      
select * from roles;

create table roles_employee (
id serial primary key,
employee_id int unique not null,
role_id int not null,
foreign key (employee_id)
       references employees(id),
foreign key (role_id)
       references roles(id)
);

select * from roles_employee;

insert into roles_employee(employee_id,role_id)
values (1,13),
       (2,6),
       (3,6),
       (4,9),
       (5,10),
       (6,11),
       (7,13),
       (8,7),
       (9,4),
       (10,5),
       (11,1),
       (12,2),
       (13,3),
       (14,4),
       (16,5),
       (15,1),
       (17,2),
       (18,3),
       (19,4),
       (21,5),
       (20,1),
       (27,2),
       (22,3),
       (33,4),
       (32,5),
       (31,1),
       (35,2),
       (36,3),
       (37,4),
       (39,5),
       (40,12),
       (41,12),
       (43,10),
       (44,11),
       (46,7),
       (45,9),
       (47,6),
       (48,11),
       (49,2),
       (50,3);


       