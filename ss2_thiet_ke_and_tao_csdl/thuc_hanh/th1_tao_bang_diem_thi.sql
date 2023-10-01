create database quan_li_diem_thi;

use quan_li_diem_thi;

create table if not exists hocsinh(
	ma_hs varchar(20),
    ten_hs varchar(50),
    ngay_sinh datetime,
    lop varchar(50),
    gioi_tinh varchar(20),
    primary key(ma_hs)
);

create table monhoc(
	ma_mh varchar(20),
    ten_mh varchar(50),
    primary key(ma_mh)
);

create table bangdiem(
	ma_hs varchar(20),
    ma_mh varchar(20),
    diem_thi int,
    ngay_kt datetime,
    primary key(ma_hs, ma_mh),
    foreign key(ma_hs) references hocsinh(ma_hs),
    foreign key(ma_mh) references monhoc(ma_mh)
);

create table giaovien(
	ma_gv varchar(20),
    ten_gv varchar(20),
    sdt varchar(10),
    primary key(ma_gv)
);

alter table monhoc add ma_gv varchar(20);

alter table monhoc add constraint fk_magv foreign key(ma_gv) references giaovien(ma_gv);