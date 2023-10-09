create database quan_li_sinh_vien1;

use quan_li_sinh_vien1;

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
insert into class(class_name,start_date,status_class) 
values('A2','2008-12-22',1);
insert into class(class_name,start_date,status_class)
values('B3','2008-12-21',0);
insert into class(class_name,start_date,status_class)
values('B4','2008-11-21',0);

insert into students(student_name,address,phone,status_student,class_id)
values ('Hung','Ha Noi','0912113113', 1, 1);
insert into students(student_name,address,status_student,class_id)
values ('Hoa','Hai Phong', 1, 1);
insert into students(student_name,address,phone,status_student,class_id)
values ('Manh','HCM','0123123123', 0, 2);
insert into students(student_name,address,phone,status_student,class_id)
values ('Hong','HCM','0123123123', 1, 2);

insert into subjects
values(1,'CF',5,1),
	  (2,'C',11,1),
      (3,'HDJ',5,1),
      (4,'RDBMS',5,1);

insert into mark (sub_id,student_id,mark,exam_times)
values(1,1,8,1),
      (1,2,10,2),
      (2,3,12,1),
      (3,4,15,2);
      
-- Hiển thị số lượng sinh viên ở từng nơi     
select address, count(student_id) as 'Số lượng sinh viên'
from students
group by address;

-- Tính điểm trung bình các môn học của mỗi học viên
select s.student_id, s.student_name , avg(mark)
from students s 
join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name;

-- Hiển thị những bạn học viên co điểm trung bình các môn học lớn hơn 10
select s.student_id, s.student_name , avg(mark)
from students s 
join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name
having avg(mark) > 10;

-- Hiển thị thông tin các học viên có điểm trung bình lớn nhất.
select s.student_id, s.student_name, s.address, avg(mark)
from students s
join mark m on s.student_id = m.student_id
group by s.student_id, s.student_name, s.address
having avg(mark) >= all(select avg(mark) from mark group by mark.student_id);
      