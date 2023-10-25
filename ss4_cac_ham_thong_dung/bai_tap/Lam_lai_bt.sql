use quan_li_sinh_vien1;

select *, max(credit)
from subjects
group by subjects.sub_id
having max(credit) >= all(select max(credit) from subjects);

select *, max(mark)
from mark
group by mark.mark_id
having max(mark) >= all(select max(mark) from mark);

select s.student_id, s.student_name, s.address, avg(mark)
from students s
join mark m on s.student_id = m.student_id
group by s.student_id
order by avg(mark) desc;