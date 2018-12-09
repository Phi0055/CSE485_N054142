DROP DATABASE traveling_db;
CREATE DATABASE traveling_db collate utf8mb4_unicode_ci;
Use traveling_db;

CREATE TABLE IF NOT EXISTS  `ci_sessions` (
    session_id varchar(40) DEFAULT '0' NOT NULL,
    ip_address varchar(45) DEFAULT '0' NOT NULL,
    user_agent varchar(120) NOT NULL,
    last_activity int(10) unsigned DEFAULT 0 NOT NULL,
    user_data text NOT NULL,
    PRIMARY KEY (session_id),
    KEY `last_activity_idx` (`last_activity`)
);

CREATE TABLE `taikhoan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tendangnhap` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `matkhau` char(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`, `level`) VALUES ('admin','admin','2');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach1','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach2','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach3','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach4','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach5','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach6','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach7','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach8','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach9','123456');
INSERT INTO `taikhoan`(`tendangnhap`, `matkhau`) VALUES ('khach10','123456');