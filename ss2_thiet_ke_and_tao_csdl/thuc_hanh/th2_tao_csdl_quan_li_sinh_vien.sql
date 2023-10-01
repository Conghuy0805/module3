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
    unique(sub_id, student_id),
    foreign key(sub_id) references subjects(sub_id),
    foreign key(student_id) references students(student_id)
);