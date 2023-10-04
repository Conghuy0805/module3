create database quan_li_sinh_vien;

use quan_li_sinh_vien;

create table class(
	class_id int not null auto_increment,
    class_name varchar(60) not null,
    start_date datetime not null,
    status_class bit,
    primary key(class_id)
);

create table students(
	student_id int not null auto_increment,
    student_name varchar(30) not null,
    address varchar(50),
    phone varchar(20),
    status_student bit(1),
    class_id int not null,
    primary key(student_id)
);

create table subjects(
	sub_id int not null auto_increment,
    sub_name varchar(30) not null,
    credit tinyint not null default 1 check(credit >=1),
    status_sub bit default 1,
    primary key(sub_id)
);

create table mark(
	mark_id int not null auto_increment,
    sub_id int not null,
    student_id int not null,
    mark float default 0 check(mark between 0 and 100),
    exam_times tinyint default 1,
    primary key(mark_id)
);

insert into class 
values(1,'A1','2008-12-20',1);
insert into class 
values(2,'A2','2008-12-22',1);
insert into class 
values(3,'B3','2008-12-21',0);

insert into students(student_name,address,phone,status_student,class_id)
values ('Hung','Ha Noi','0912113113', 1, 1);
insert into students(student_name,address,status_student,class_id)
values ('Hoa','Hai phong', 1, 1);
insert into students(student_name,address,phone,status_student,class_id)
values ('Manh','HCM','0123123123', 0, 2);

insert into subjects
values(1,'CF',5,1),
	  (2,'C',6,1),
      (3,'HDJ',5,1),
      (4,'RDBMS',5,1);

insert into mark (sub_id,student_id,mark,exam_times)
values(1,1,8,1),
      (1,2,10,2),
      (2,1,12,1);

-- select * from class;      
select * from students;      
-- select * from subjects;      
-- select * from mark;      
	 

