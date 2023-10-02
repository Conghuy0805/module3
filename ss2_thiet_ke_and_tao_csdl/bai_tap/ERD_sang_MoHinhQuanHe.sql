create database erd_quanhe;

use erd_quanhe;

create table phieuxuat(
	so_phieuxuat int auto_increment,
    ngay_xuat date,
    primary key(so_phieuxuat)
);

create table vattu(
	ma_vattu int auto_increment,
    ten_vattu varchar(20),
    primary key(ma_vattu)
);

create table vattu_phieuxuat(
	so_phieuxuat int,
    ma_vattu int,
    dongia_xuat varchar(50),
    soluong_xuat int,
    primary key(so_phieuxuat, ma_vattu),
    foreign key(so_phieuxuat) references phieuxuat(so_phieuxuat),
    foreign key(ma_vattu) references vattu(ma_vattu)
);

create table phieunhap(
	so_phieunhap int auto_increment,
    ngay_nhap date,
    primary key(so_phieunhap)
);

create table vattu_phieunhap(
	so_phieunhap int,
    ma_vattu int,
    dongia_nhap varchar(50),
    soluong_nhap int,
    primary key(so_phieunhap, ma_vattu),
    foreign key(so_phieunhap) references phieunhap(so_phieunhap),
    foreign key(ma_vattu) references vattu(ma_vattu)
);

create table nhacungcap(
	ma_nhacungcap int auto_increment,
    ten_nhacungcap varchar(50),
    dia_chi varchar(255),
    primary key(ma_nhacungcap)
);

create table dondathang(
	id_donhang int auto_increment,
	so_donhang int,
    ngay_dathang date,
    ma_nhacungcap int,
    primary key(id_donhang),
    foreign key(ma_nhacungcap) references nhacungcap(ma_nhacungcap)
);

create table vattu_dondathang(
	ma_vattu int,
    id_donhang int,
    primary key(ma_vattu, id_donhang),
    foreign key(ma_vattu) references vattu(ma_vattu),
    foreign key(id_donhang) references dondathang(id_donhang)
);

create table sdt(
	id int,
	ma_nhacungcap int,
    sdt varchar(20),
    primary key(id),
    foreign key(ma_nhacungcap) references nhacungcap(ma_nhacungcap)
);









