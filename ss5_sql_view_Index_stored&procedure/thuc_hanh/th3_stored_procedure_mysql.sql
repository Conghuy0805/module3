use ql_sinhvien;

delimiter //
create procedure findAllEmloyee()
begin
	select * from nhanvien;
end; //
delimiter ;

call findAllEmloyee();