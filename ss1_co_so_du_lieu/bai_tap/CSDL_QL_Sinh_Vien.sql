create database class;

use class;

create table class_students(
	id_student int auto_increment,
    name_student varchar(50) not null,
    primary key(id_student)
);

insert into class_students values(1,"Công Huy"),(2,"Phú Nguyên");

-- select id_student from class_students;

select * from class_students;

create table teachers(
	id_teacher int auto_increment,
    name_teacher varchar(50) not null,
    age int,
    country varchar(100),
    primary key(id_teacher)
);

insert into teachers values (1,"John",28,"America"),(2,"Tom",30,"England");

select * from teachers;
