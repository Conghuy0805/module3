use ql_sinhvien;

create index ten_idx on NhanVien (ten);
explain select * from NhanVien where ten = "Huy";