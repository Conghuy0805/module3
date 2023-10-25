drop database if exists student_management;

create database student_management;

use student_management;

create table instructor(
	id_instructor int auto_increment,
    name_instructor varchar(50),
    date_of_birth date,
    constraint pk_instructor primary key(id_instructor)
);

create table account_james(
	`account` varchar(70) primary key,
    `password` varchar(50)
);

create table type_of_class(
	id int primary key,
	`name` varchar(10)
);

create table class(
	id_class int auto_increment,
    name_class varchar(10),
    type_of_class_id int,
    primary key(id_class),
    foreign key(type_of_class_id) references type_of_class(id)
);  

create table student(
	id_student int auto_increment,
    name_student varchar(50),
    date_of_birth date,
    email varchar(50),
    account_james_account varchar(70),
    class_id_class int,
    primary key(id_student),
    foreign key(account_james_account) references account_james(`account`),
    foreign key(class_id_class)	references class(id_class)
);


create table instructor_teach_class(
	id_class int,
    id_instructor int,
    primary key(id_class, id_instructor),
    foreign key(id_class) references class(id_class),
    foreign key(id_instructor) references instructor(id_instructor)
);

insert into type_of_class
values(1, 'Full time'), (2, 'Part time');
insert into class(name_class, type_of_class_id)
values('C0421G1', 1),
      ('C0921G1', 2),
      ('A0423I1', 1),
      ('A0521G1', 2);
      
insert into account_james
values('huy.pham', '12345678'),      
      ('phuc.nguyen', '458963578'),     
      ('nguyen.dang', '523697541'),      
      ('hoang.bui', '789546114'),      
      ('thang.nguyen', '56987412'); 
      
insert into student(name_student, date_of_birth, email, account_james_account, class_id_class)
values('Huy', '2003-05-08', 'huy@gmail.com', 'huy.pham', 1),      
      ('Phúc', '2003-07-15', 'phuc@gmail.com', 'phuc.nguyen', 2),      
      ('Nguyên', '2003-11-27', 'nguyen@gmail.com', 'nguyen.dang', 1),      
      ('Hoàng', '2003-07-21', 'hoang@gmail.com', 'hoang.bui', 2),      
      ('Thắng', '2003-08-21', 'thang@gmail.com', 'thang.nguyen', 3);      
      
insert into instructor(name_instructor, date_of_birth)
values('Chánh', '1999-08-21'),      
      ('Trung', '1997-02-11'),      
      ('Hải', '2000-11-02'),      
      ('Long', '1998-01-21');      
      
insert into instructor_teach_class
values(1, 2),
	  (1, 1),
      (2, 1);
      
      
      
      
      
      insert into class values(1, 'C0421G1', 1),       (2, 'C0921G1', 2),       (3, 'A0423I1', 1),       (4, 'A0521G1', 2),       (5, 'A0621G2', 3)
