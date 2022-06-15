CREATE DATABASE quan_ly_don_hang;
USE quan_ly_don_hang;
CREATE TABLE nha_cung_cap
(
ma_nha_cung_cap INT PRIMARY KEY AUTO_INCREMENT,
ten_nha_cung_cap VARCHAR(45),
dia_chi VARCHAR(45)
);

CREATE TABLE sdt
(
id_sdt INT PRIMARY KEY AUTO_INCREMENT,
dt_ban VARCHAR(45),
dt_di_dong VARCHAR(45),
ma_nha_cung_cap INT,
FOREIGN KEY(ma_nha_cung_cap) REFERENCES nha_cung_cap(ma_nha_cung_cap)
);


CREATE TABLE don_dat_hang
(
so_don_hang INT AUTO_INCREMENT PRIMARY KEY,
ma_nha_cung_cap INT,
FOREIGN KEY (ma_nha_cung_cap) REFERENCES nha_cung_cap(ma_nha_cung_cap),
ngay_dat_hang DATE
);


CREATE TABLE vat_tu
(
ma_vat_tu INT AUTO_INCREMENT PRIMARY KEY,
ten_vat_tu VARCHAR(45)
);

CREATE TABLE chi_tiet_don_dat_hang
(
so_don_hang INT ,
ma_vat_tu INT,
PRIMARY KEY (so_don_hang,ma_vat_tu),
FOREIGN KEY (so_don_hang) REFERENCES don_dat_hang(so_don_hang),
FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu(ma_vat_tu)
);

CREATE TABLE phieu_nhap
(so_phieu_nhap INT AUTO_INCREMENT PRIMARY KEY,
ngay_nhap DATE
);

CREATE TABLE chi_tiet_phieu_nhap
(ma_vat_tu INT,
so_phieu_nhap INT,
PRIMARY KEY (ma_vat_tu, so_phieu_nhap),
FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu(ma_vat_tu),
FOREIGN KEY(so_phieu_nhap) REFERENCES phieu_nhap(so_phieu_nhap),
don_gia_nhap DOUBLE,
so_luong_nhap INT
);

CREATE TABLE phieu_xuat
(
so_phieu_xuat INT PRIMARY KEY AUTO_INCREMENT,
ngay_xuat DATE
);

CREATE TABLE chi_tiet_phieu_xuat 
(
ma_vat_tu INT,
so_phieu_xuat INT, 
PRIMARY KEY (ma_vat_tu, so_phieu_xuat),
FOREIGN KEY (ma_vat_tu) REFERENCES vat_tu(ma_vat_tu),
FOREIGN KEY(so_phieu_xuat) REFERENCES phieu_xuat(so_phieu_xuat),
don_gia_xuat DOUBLE,
so_luong_xuat INT
);