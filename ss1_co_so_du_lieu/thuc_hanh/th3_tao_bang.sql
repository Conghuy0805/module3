create database table_student;

use table_student;

create table students(
	code_student int auto_increment,
    name_student varchar(100) not null,
    date_of_birth date,
    gender bit(1),
    primary key(code_student)
);

insert into students values(1,"Công Huy","2003-05-08",b'1');

insert into students(name_student, date_of_birth) values("Văn Phúc","2003-07-15");

select * from students;

