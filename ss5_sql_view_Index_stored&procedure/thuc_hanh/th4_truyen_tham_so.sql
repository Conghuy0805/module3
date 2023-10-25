use ql_sinhvien;

-- Tham số loại IN
delimiter //
create procedure get_id(in idNum int(11) )
begin 
	select * from sinhvien where maSinhVien = idNum;
end; //
delimiter ;

call get_id(2);


