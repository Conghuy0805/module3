create database ql_sinhvien;

use ql_sinhvien;

create table ChuongTrinhDaoTao(
	maChuongTrinhDaoTao varchar(50) not null,
	tenChuongTrinhDaoTao varchar(255) null,
    soTinChi float null,
    namBatDauDaoTao int null,
    primary key(maChuongTrinhDaoTao)
);

create table NhanVien(
	maNhanVien int auto_increment,
    hoDem varchar(50) null,
    ten varchar(50) not null,
    theLoai varchar(50),
    ngaySinh date,
    gioiTinh tinyint,
    primary key(maNhanVien)
);

create table SinhVien(
	maSinhVien int auto_increment,
    hoDem varchar(50) null,
    ten varchar(50) not null,
    ngaySinh date null,
    namNhapHoc int null,
    maChuongTrinhDaoTao varchar(50) null,
    gioiTinh tinyint null,
    primary key(maSinhVien),
    foreign key(maChuongTrinhDaoTao) references ChuongTrinhDaoTao(maChuongTrinhDaoTao)
);

create table MonHoc(
	maMonHoc varchar(50) not null,
    tenMonHoc varchar(255) null,
    soTinChi float null,
    namBatDauApDung int null,
    theLoai varchar(50) null,
    moTaTomTat varchar(255) null,
    moTaDayDu text null,
    taiLieu varchar(255) null,
    mucTieuDauRa varchar(255) null,
    hinhThucDanhGia varchar(255) null,
    maChuongTrinhDaoTao varchar(50) null,
    primary key(maMonHoc),
    foreign key(maChuongTrinhDaoTao) references ChuongTrinhDaoTao(maChuongTrinhDaoTao)
);

create table LopHocPhan(
	maLopHocPhan int auto_increment not null,
    namHoc int,
    hocKi varchar(50),
    maMonHoc varchar(50),
    maNhanVien int,
    ngonNguGiangDay varchar(50),
    gioiHanSoLuongSinhVien int,
    primary key(maLopHocPhan),
    foreign key(maMonHoc) references MonHoc(maMonHoc),
    foreign key(maNhanVien) references NhanVien(maNhanVien)
);

create table ThamGiaHoc(
	maLopHocPhan int not null,
    maSinhVien int not null,
    diemSo float,
    diemChu varchar(3),
    primary key(maLopHocPhan, maSinhVien),
    foreign key(maLopHocPhan) references LopHocPhan(maLopHocPhan),
    foreign key(maSinhVien) references SinhVien(maSinhVien)
);

insert into ChuongTrinhDaoTao(maChuongTrinhDaoTao, tenChuongTrinhDaoTao, soTinChi, namBatDauDaoTao)
values('CNTT', 'Công nghệ thông tin', 120, 2022), 
	  ('KT', 'Kế toán', 130, 2022),
      ('KHMT','Khoa học máy tính', 150, 2020),
      ('TC', 'Tài chính', 130, 2020),
      ('QYKD', 'Quản trị kinh doanh', 120, 2021);
      
insert into NhanVien(hoDem, ten, theLoai, ngaySinh,gioiTinh)
values('Phạm Công', 'Huy', 'Giảng viên', '2000-05-08', 1),
      ('Nguyễn Văn', 'Phúc', 'Giảng viên', '2000-07-15', 1),
      ('Bùi Ngọc', 'Hoàng', 'Giảng viên', '2000-07-21', 1);
      
insert into SinhVien(hoDem, ten, ngaySinh, namNhapHoc, gioiTinh)   
values('Nguyễn Văn', 'A', '2005-02-01', 2022, 1),
	  ('Nguyễn Văn', 'B', '2005-12-2', 2021, 1),
      ('Nguyễn Thị', 'C', '2005-03-05', 2020, 0);
      
insert into MonHoc
values('TRR', 'Toán rời rạc', 3, 2020, 'Bắt Buộc', 'Cung cấp kiến thức', 'Giáo trình toán ròi rạc', 'Năm được kiến thức', 'Thi viết', 'CNTT' ),   
	  ('CSKH', 'Chăm sóc khách hàng', 5, 2021, 'Tự chọn', 'Cung cấp kiến thức', 'Giáo trình chăm sóc khách hàng', 'Năm được kiến thức', 'Thi viết', 'QTKD' );   
      
 insert into LopHocPhan
 values(2022, 'Học kì 1', 'TRR', 1, 'Tiếng Việt', '50'),
	   (2022, 'Học kì 1', 'CSKH', 2, 'Tiếng Anh', '100');
 



      
      