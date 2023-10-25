drop database if exists chuyen_doi_erd;

create database chuyen_doi_erd;

use chuyen_doi_erd;

create table PHIEUXUAT(
	So_PX int auto_increment,
    Ngay_Xuat date,
	primary key(So_PX)
);

create table VATTU(
	Ma_VTU int auto_increment,
    Ten_VTU varchar(20),
    primary key(Ma_VTU)
);

create table PHIEUNHAP(
	So_PN int auto_increment,
    Ngay_Nhap date,
	primary key(So_PN)
);

create table SĐT(
	Id_Phone int auto_increment,
    `name` varchar(50),
    primary key(Id_Phone)
);

create table NHACUNGCAP(
	Ma_NCC int auto_increment,
    Ten_NCC varchar(50),
    Dia_Chi varchar(50),
    Id_Phone int,
    primary key(Ma_NCC),
    foreign key(Id_Phone) references SĐT(Id_Phone)
);


create table DONHANG(
	So_DH int auto_increment,
    Ngay_DH date,
    Ma_NCC int,
    primary key(So_DH),
    foreign key (Ma_NCC) references NHACUNGCAP(Ma_NCC)
);

create table PHIEUXUAT_VATTU(
	DG_Xuat varchar(50),
    SL_Xuat varchar(50),
    Ma_VTU int,
    So_PX int,
    primary key(Ma_VTU, So_PX),
    foreign key(Ma_VTU) references VATTU(Ma_VTU),
    foreign key(So_PX) references PHIEUXUAT(So_PX)
);

create table PHIEUNHAP_VATTU(
	DG_Nhap varchar(50),
    SL_Nhap varchar(50),
    Ma_VTU int,
    So_PN int,
    primary key(Ma_VTU, So_PN),
    foreign key(Ma_VTU) references VATTU(Ma_VTU), 
    foreign key(So_PN) references PHIEUNHAP(So_PN) 
);

create table VATTU_DONHANG(
	Ma_VTU int,
    So_DH int,
    primary key(Ma_VTU, So_DH),
    foreign key(Ma_VTU) references VATTU(Ma_VTU),
    foreign key(So_DH) references DONHANG(So_DH)
);


