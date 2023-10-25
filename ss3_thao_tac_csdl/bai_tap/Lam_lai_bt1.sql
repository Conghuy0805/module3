use quan_li_sinh_vien;

select * 
from students
where student_name like 'h%';

select *
from class
where month(start_date) = 12;

select * 
from subjects 
where credit >= 3 and credit <= 5;

update students
set class_id = 2
where student_name = 'Hung';

select s.student_name, su.sub_name, m.mark 
from students s 
join mark m on s.student_id = m.student_id
join subjects su on m.sub_id = su.sub_id
order by mark desc, mark asc;

