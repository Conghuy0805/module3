use ql_sinhvien;

-- Tạo View
create view students as
select maSinhVien, hoDem, ten
from SinhVien;

select * from students;

-- Cập nhật View
create or replace view students as
select maSinhVien, hoDem, ten, ngaySinh
from SinhVien
where ten ='A';

create or replace view students as
select maSinhVien, hoDem, ten, ngaySinh
from SinhVien;

-- Xóa View
drop view students;



