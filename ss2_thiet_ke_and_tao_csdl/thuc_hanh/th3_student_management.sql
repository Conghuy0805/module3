create database student_managerment;

use student_managerment;

create table students(
	id_student int auto_increment,
    name_student varchar(50),
    date_of_birth date,
    address varchar(100),
    education_student varchar(50),
    primary key(id_student)
);

insert into students(name_student, date_of_birth, address, education_student) 
values('Phạm Công Huy','2003-05-08','Đà Nẵng', 'Đại học'), 
	  ('Nguyễn Văn Phúc','2003-07-15','Đà Nẵng', 'Đại học'), 
	  ('Huỳnh Thị Thương', '2003-08-11', 'Đắk Lắk', 'Đại học');

alter table students
add email_student varchar(50);

update students 
set email_student = 'phamh@gmail.com'
where id_student = 1;


update students 
set email_student = 'huynht@gmail.com'
where id_student = 3;

select * from students;

delete from students
where id_student = 2;

select * 
from students 
where name_student regexp 'y|u';

drop table students;

drop database student_managerment;

