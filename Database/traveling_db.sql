DROP DATABASE traveling_db;
CREATE DATABASE traveling_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
Use traveling_db;

create table tai_khoan(
id_tk int AUTO_INCREMENT primary key,
ten_dang_nhap varchar(30) not null,
mat_khau varchar(30) not null,
cap_do int default 1
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1;

create table thong_tin_tai_khoan(
id_tk int primary key,
ho_ten  text not null,
email varchar(50) not null,
ngay_sinh date,
gioi_tinh varchar(4),
dia_chi text,
sdt int,
foreign key(id_tk) references tai_khoan(id_tk)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table dd_du_lich(
id_dddl int AUTO_INCREMENT primary key,
ten_dddl text not null,
link_dddl varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1;

create table ctdddl(
id_dddl int primary key,
tieu_de_dddl text not null,
noi_dung_dddl longtext,
chu_de text,
foreign key(id_dddl) references dd_du_lich(id_dddl)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table ctdgdddl(
id_dddl int,
id_tk int,
so_sao_dddl int,
binh_luan_dddl text,
foreign key(id_dddl) references dd_du_lich(id_dddl),
foreign key(id_tk) references tai_khoan(id_tk),
primary key (id_dddl,id_tk,so_sao_dddl)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table dich_vu(
id_dv int AUTO_INCREMENT primary key,
ten_dv text not null,
link_dv varchar(50)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1;

create table ctdv(
id_dv int primary key,
tieu_de_dv text not null,
noi_dung_dv longtext,
loai text,
foreign key(id_dv) references dich_vu(id_dv)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table ctdgdv(
id_dv int ,
id_tk int ,
so_sao_dv int ,
binh_luan_dv text,
foreign key(id_dv) references dich_vu(id_dv),
foreign key(id_tk) references tai_khoan(id_tk),
primary key (id_dv,id_tk,so_sao_dv)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

create table cam_nang (
id_cn int AUTO_INCREMENT primary key,
id_tk int,
tieu_de_cn text not null,
noi_dung_cn longtext,
link_cn varchar (50),
foreign key(id_tk) references tai_khoan(id_tk)
)ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1;


insert into tai_khoan(ten_dang_nhap, mat_khau, cap_do) values('admin', 'admin', 2);
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach1', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach2', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach3', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach4', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach5', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach6', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach7', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach8', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach9', '123456');
insert into tai_khoan(ten_dang_nhap, mat_khau) values('khach10', '123456');

insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(1,'admin','admin@gmail.com','1998-02-13','Nam','Hà Nội',0123456789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(2,'a','a@gmail.com','1998-10-2','Nữ','Hà Nam',0923456719);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(3,'b','b@gmail.com','1997-02-26','Nam','Nam Định',0163456729);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(4,'c','c@gmail.com','1998-02-18','Nam','Huế',0963453589);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(5,'d','d@gmail.com','1998-03-06','Nữ','Thanh Hóa',0123396789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(6,'e','e@gmail.com','1995-12-03','Nam','Hồ Chí Minh',0823456709);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(7,'f','f@gmail.com','1998-02-01','Nữ','Ninh Bình',0166456789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(8,'g','g@gmail.com','1996-03-01','Nữ','Cẩm Phả',0123234789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(9,'h','h@gmail.com','1993-04-24','Nam','Bắc Ninh',01234556339);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(10,'i','i@gmail.com','1998-11-22','Nữ','Hà Giang',0963456789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(11,'k','k@gmail.com','1994-08-11','Nam','Lang Sơn',0973456779);

insert into dd_du_lich(ten_dddl, link_dddl) values('Vịnh Hạ Long','1.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cát Bà','2.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Đà Lạt','3.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cáp treo Vinpearl Nha Trang','4.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang Sơn Đoòng','5.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Đảo Phú Quốc','6.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('bán đảo Sơn Trà','7.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('núi đôi Quản Bạ','8.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Tòa thánh Cao Đài (Tây Ninh)','9.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Nhà hát lớn Hà Nội','10.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Quốc lộ 4D','11.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Than Uyên ','12.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Làng An Bằng','13.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Côn Đảo','14.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('thác Bản Giốc','15.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Nhà thờ Đức Bà (Sài Gòn)','16.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Jungle Beach (Khánh Hòa)','17.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Tràng An','18.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Chùa Linh Phước','19.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('TP Huế','20.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Ngô Đồng','21.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Vườn quốc gia Phong Nha - Kẻ Bàng','22.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thung lũng Bắc Sơn','23.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Lăng Khải Định','24.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Vườn quốc gia Cúc Phương','25.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Chùa Thiên Mụ','26.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hồ Hoàn Kiếm','27.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hội An','28.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Mũi Né','29.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Địa đạo Củ Chi','30.jpg');

insert into dd_du_lich(ten_dddl, link_dddl) values('Vùng núi Zhangye Danxia, tỉnh Cam Túc, Trung Quốc','31.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Nơi ‘tận cùng thế giới’ ở Banos, Ecuador','32.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Hố xanh vỹ đại ở Belize','33.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cánh đồng hoa tulip Hà Lan','34.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thiên đường hoa ở công viên Hitachi Seaside','35.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang động băng Mendenhall, Alaska, Mỹ:','36.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Ngọn núi Roraima nằm giữa Venezuela, Brazil và Guyana','37.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Khu vực Cappadocia, Thổ Nhĩ Kỳ','38.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Bãi biển sao trên đảo Vaadhoo, Mandives:','39.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thác nước Victoria','40.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Trolltunga ở Hordaland, Na Uy','41.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Bãi biển Whitehaven, Australia:','42.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Vườn quốc gia Grand Canyon, bang Arizona, Mỹ','43.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang động cẩm thạch Marble Cathedral, Chile','44.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Đường hầm tình yêu Tunnel of love','45.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cánh đồng muối tuyệt đẹp Salar de Uyuni ở Bolivia:','46.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Enchanted Well – Chapada Diamantina National Park (Brazil):','47.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hẻm núi Antelope, Mỹ','48.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang động Fingal, Scotland','49.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hồ bơi khổng lồ Tosua Ocean Trench, Samoa:','50.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Rừng tre Sagano ở Nhật Bản','51.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang động đom đóm ở New Zealand','52.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cầu thang Haiku, ở Oahu, Hawaii:','53.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Núi lửa ở bán đảo Kamchatka, Nga:','54.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hố sụt ở bán đảo Yucatan, Mexico','55.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hồ đổi màu trên đỉnh núi Kelimutu ở Indonesia:','56.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thành phố Amsterdam, Hà Lan','57.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Quần đảo Azores, Bồ Đào Nha','58.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values( 'Thủ đô Ljubljana, Slovenia','59.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thác Victoria, Cộng hoà Zimbabwe','60.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Ruộng bậc thang Sa Pa','61.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('Bán đảo Lofoten, Na Uy','62.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Đồng bằng sông Cửu Long','63.jpg');
insert into dd_du_lich(ten_dddl, link_dddl) values('xxx','42.jpg');

insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(1,'TP Hạ Long- TP Cẩm Phả -Quảng Ninh','Không chỉ đẹp bởi cảnh sắc “mây trời sóng nước”, vẻ đẹp nên thơ hay vô số những đảo đá vôi nổi trên mặt nước, Hạ Long còn đem lại cho du khách cảm giác bình yên khi hòa mình vào cảnh vật nơi đây. Được đánh giá là một trong 29 Vịnh đẹp nhất thế giới, cuối tháng 3/2012, tổ chức New Open World cũng đã chính thức công nhận vịnh Hạ Long là một trong bảy kỳ quan thiên nhiên mới của thế giới.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(2,'Huyện đảo Cát Bà -phía nam Vịnh Hạ Long','Huyện đảo Cát Bà là quần đảo có tới 367 đảo lớn nhỏ. Cát Bà là tên hòn đảo chính rộng khoảng 100 km2, cách cảng Hải Phòng 30 hải lý, nằm ở phía nam Vịnh Hạ Long, tạo nên một quần thể đảo và hang động trên biển làm mê hồn du khách. Đến đây du khách sẽ được tận hưởng không khí trong lành và hoà mình vào thiên nhiên tươi đẹp.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(3,'Thành phố Sương Mù','Đà Lạt được ví như một Tiểu Paris, Đà Lạt từng mộng mơ và nên thơ nhờ cái lạnh cao nguyên ban đêm, sương mù buổi sớm và những dải rừng thông bao quanh thành phố. Thiên nhiên ưu đãi cho xứ sở Đà Lạt khí hậu ôn hòa, là thiên đường của rất nhiều loài hoa.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(4,'Nha Trang-Hòn ngọc viễn Đông','Cáp treo Vinpearl Nha Trang là tuyến cáp treo vượt biển vịnh Nha Trang dài 3.320 m, nối Nha Trang với khu du lịch Hòn Ngọc Việt trên đảo Hòn Tre. Đây là tuyến cáp treo vượt biển dài nhất thế giới với sức chứa tám người trên một cabin. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(5,'Tân Trạch-Bố Trạch-Quảng Bình','Hang Sơn Đoòng rộng 150 m, cao hơn 200 m, kéo dài gần 9km. Với kích thước như thế, hang Sơn Đoòng đã vượt qua hang Deer ở Vườn quốc gia Gunung Mulu - Malaysia (với chiều cao 100 m, rộng 90 m, dài 2km) để chiếm vị trí là hang động tự nhiên lớn nhất thế giới.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(6,'Đảo Ngọc-Kiên Giang','Phú Quốc. Hòn đảo này còn được mệnh danh là Đảo Ngọc, là hòn đảo lớn nhất Việt Nam, cũng là đảo lớn nhất trong quần thể 22 đảo tại vùng vịnh Thái Lan. Đảo Phú Quốc cùng với các đảo khác tạo thành huyện đảo Phú Quốc trực thuộc tỉnh Kiên Giang. Toàn bộ huyện đảo có tổng diện tích 589,23 km vuông.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(7,'bán đảo Sơn Trà-Đà Nẵng','Được mệnh danh là “viên ngọc xanh” của Đà Nẵng, bán đảo Sơn Trà không chỉ cung cấp không khí trong lành thanh mát, mà còn là tấm bình phong khổng lồ chắn bão cho thành phố biển; là một điểm đến có sức cuốn hút và quyến rũ lớn đối với khách du lịch. Khám phá Sơn Trà, du khách có thể chinh phục cả “rừng vàng” và “biển bạc” với rất nhiều thắng cảnh thiên nhiên tuyệt mỹ.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(8,'Tam Sơn- Quản Bạ','Quản Bạ là huyện cửa ngõ nằm về phía tây nam của Công viên địa chất toàn cầu Cao nguyên đá Đồng Văn, tỉnh Hà Giang. Cách thành phố Hà Giang 46 km về phía bắc, vượt qua dốc Bắc Sum cao ngất trong mây là du khách đã đến với cổng trời Quản Bạ. Đứng từ đây có thể ngắm nhìn thị trấn Tam Sơn thơ mộng quanh năm mát mẻ, đặc biệt được tận mắt chiêm ngưỡng núi đôi Quản Bạ tròn trịa, đầy quyến rũ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(9,'Hòa Thành- Hòa Thành-Tây Ninh. ','Tòa thánh Cao Đài (Tây Ninh) được khánh thành vào năm 1955, ở xã Long Thành Bắc, phía bắc TP Hồ Chí Minh. Toàn bộ tòa thánh Cao Đài Tây Ninh bao gồm gần 100 công trình kiến trúc lớn nhỏ khác nhau, được xây bằng bê tông cốt tre. Tòa thánh có 12 cổng, các cổng đều được chạm khắc hình Tứ linh (Long, Lân, Quy, Phụng) và hoa sen. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(10,'01 Tràng Tiền-Hoàn Kiếm-Thủ đô Hà Nội','Nhà hát lớn Hà Nội được người Pháp khởi công xây dựng năm 1901 và hoàn thành vào năm 1911, theo mẫu Nhà hát Opéra Garnier (Paris) nhưng mang tầm vóc nhỏ hơn và sử dụng các vật liệu phù hợp với điều kiện khí hậu địa phương. Ngay khi hoàn thành, Nhà hát Lớn đã giữ vai trò như một trung tâm văn hóa quan trọng của thủ đô, diễn ra thường xuyên các hoạt động văn hóa, biểu diễn nghệ thuật.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(11,'Mường So-Phong Thổ-Lai Châu','Quốc lộ 4D xuất phát từ Pa So (điểm giao với quốc lộ 12, thuộc xã Mường So, huyện Phong Thổ, tỉnh Lai Châu), chạy qua Tam Đường (Phong Thổ, Lai Châu) tới Sa Pa (Lào Cai) qua thành phố Lào Cai, Mường Khương và kết thúc ở cửa khẩu Mường Khương (Lào Cai), chiều dài khoảng 160 km. Trên đường đi có thể tham quan một số địa điểm như: Thác Bạc, đèo Ô Quý Hồ... ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(12,'Mường Than-Tp Lai Châu','Đến với Tây Bắc, chắc chắn không thể bỏ qua cảnh quan tuyệt đẹp là ruộng bậc thang trải khắp các bản làng, thung lũng. Than Uyên không chỉ có ruộng bậc thang mà còn có cả những cánh đồng rộng lớn bạt ngàn, tạo nên những sắc mầu đa dạng cho mùa nước đổ nơi đây. Không giống như những vùng khác ở vùng núi phía Bắc, ở Than Uyên có hai vụ lúa trong năm, chính vì vậy du khách có thể ngắm mùa nước đổ vào khoảng tháng 12, tháng 1 hằng năm.','Trong Nước' );
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(13,'Vinh An-Phú Vang','Làng An Bằng là một làng sát Biển Đông, thuộc xã Vinh An, huyện Phú Vang, tỉnh Thừa Thiên-Huế. Làng An Bằng (nguyên là An Bình, vì kỵ huý nên đổi ra là An Bường), được hình thành cách đây khoảng 450 năm. Dân làng làm nghề đánh cá biển.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(14,'Côn Đảo: Từ địa ngục trần gian đến thiên đường du lịch','Côn Đảo thu hút du khách bởi những bãi biển tuyệt đẹp và quần thể sinh vật biển phong phú, đặc biệt là san hô. Đây còn là điểm đến lý tưởng để tận hưởng một cuộc sống yên bình cho những ai đang cảm thấy ngột ngạt với nhịp sống hối hả của thành thị.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(15,'Đàm Thủy- huyện Trùng Khánh-Cao Bằng.','Nhắc đến Bản Giốc là nhắc đến một trong những thác hùng vĩ và đẹp nhất Việt Nam, không những thế còn được xếp hạng vào top những thác thiên đường tuyệt đẹp trên thế giới. Một chuyến du lịch đến thác Bản Giốc sẽ cho du khách những trải nghiệm thú vị và tươi mới.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(16,'quận 1- TP.HCM','Nhà thờ Đức Bà (Sài Gòn) là một trong những công trình kiến trúc độc đáo nhất tại Sài Gòn, luôn thu hút sự quan tâm của du khách trong và ngoài nước. Toà thánh đường có chu vi 91 x 35,5 m, cao 21 m. Đây là một công trình kiến trúc thật sự có giá trị rất lớn về mặt lịch sử và nghệ thuật kiến trúc xây dựng.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(17,'Nằm trong bán đảo Hòn Hèo thuộc xã Ninh Phước-Ninh Hòa-Khánh Hòa','Jungle Beach (Khánh Hòa) là nơi nghỉ dưỡng với cảnh sắc hoang sơ với nước biển xanh và cát trắng trải dài. Dù chỉ cách Nha Trang 60 km nhưng Jungle Beach tách biệt hoàn toàn với sự ồn ào, bon chen của thành phố. Nằm trong bán đảo Hòn Hèo, thuộc xã Ninh Phước, huyện Ninh Hòa, tỉnh Khánh Hòa, Jungle Beach chính là sự hòa hợp tuyệt vời giữa rừng và biể','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(18,' khu du lịch sinh thái nằm trong Quần thể di sản thế giới Tràng An-Ninh Bình.','Tràng An là khu du lịch sinh thái nằm trong quần thể di sản thế giới Tràng An, thuộc tỉnh Ninh Bình. Nơi đây đã được Chính phủ Việt Nam xếp hạng di tích quốc gia đặc biệt quan trọng và UNESCO công nhận là di sản thế giới kép từ năm 2013, với hệ thống dãy núi đá vôi có tuổi địa chất khoảng 250 triệu năm, qua thời gian dài phong hóa bởi sự biến đổi của trái đất, khí hậu, biển tiến, biển thoái đã mang trong mình hàng trăm thung lũng, hang động, hồ đầm. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(19,'chùa Ve Chai-Tp Đà Lạt-Lâm Đồng','Chùa Linh Phước là một trong những danh thắng nổi tiếng của Đà Lạt, là công trình kiến trúc đậm đà bản sắc Á Đông. Với sự kết hợp hài hòa giữa chùa và tháp của lối kiến trúc phương Đông, từ nhiều năm qua, nơi đây luôn là điểm du lịch tâm linh hấp dẫn du khách trong và ngoài nước.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(20,'Huế-đô thị cấp quốc gia của Việt Nam và từng là kinh đô của Việt Nam ','Tọa lạc hai bên bờ sông Hương, TP Huế là di sản văn hóa thế giới, thuộc tỉnh Thừa Thiên - Huế, sở hữu nhiều di tích lịch sử có giá trị cao nằm trong quần thể di tích cố đô Huế như: Kinh thành Huế, lăng Minh Mạng, lăng Gia Long, chùa Thiên Mụ... Nhã nhạc cung đình là một trong những nét văn hóa đặc sắc của Huế, thu hút đông đảo du khách. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(21,'Ninh Hải, huyện Hoa Lư, tỉnh Ninh Bình, Việt Nam','Ngô Đồng là tên dòng sông nhỏ chảy qua địa phận xã Ninh Hải, huyện Hoa Lư, tỉnh Ninh Bình. Vắt ngang mình giữa hệ thống núi đá vôi xanh rờn. Sông Ngô Đồng là đường thủy duy nhất đưa du khách vào tham quan Tam Cốc - một vùng non nước từng được ví như “Hạ Long trên cạn”.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(22,' Bố Trạch, and Minh Hóa-tỉnh Quảng Bình','Vườn quốc gia Phong Nha - Kẻ Bàng là vườn quốc gia tại huyện Bố Trạch, và Minh Hóa (tỉnh Quảng Bình), cách thành phố Đồng Hới khoảng 50 km về phía tây bắc, cách thủ đô Hà Nội khoảng 500 km về phía nam. Được UNESCO công nhận là di sản thiên nhiên thế giới theo tiêu chí địa chất, địa mạo năm 2003; được UNESCO công nhận lần hai là di sản thiên nhiên thế giới với tiêu chí đa dạng sinh học, sinh thái vào năm 2015.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(23,'Bắc Sơn-Lạng Sơn','Thung lũng Bắc Sơn là điểm đến quen thuộc ở Lạng Sơn, thu hút du khách ghé thăm vào mùa cao điểm tháng 7. Thung lũng Bắc Sơn nằm gọn trong dãy núi đá vôi trải dài bên những nếp nhà của người dân tộc Tày, Nùng, Dao. Đứng trên đỉnh Nà Lay, du khách có thể ngắm toàn cảnh thung lũng bao phủ trong màn mây trùng điệp.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(24,' Châu Chữ - Hương Thủy - Thừa Thiên Huế','Lăng Khải Định hay Ứng Lăng là di tích trong quần thể di tích cố đô Huế, thuộc làng Châu Chữ, thị xã Hương Thủy, tỉnh Thừa Thiên - Huế. Đây là nơi yên giấc ngàn thu của Khải Định đế vị vua thứ 12 triều Nguyễn trong lịch sử phong kiến Việt Nam. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(25,'khu vực Tây Bắc, châu thổ Sông Hồng và Bắc Trung Bộ','Vườn quốc gia Cúc Phương nằm trên địa phận tỉnh Ninh Bình, cách Hà Nội 120 km về phía tây nam, cách thành phố Ninh Bình 45 km về phía tây bắc. Cúc Phương có diện tích 25 nghìn héc-ta, tiếp giáp ba tỉnh Ninh Bình, Hòa Bình và Thanh Hóa. Khu rừng như một bảo tàng thiên nhiên rộng lớn, nơi lưu giữ hệ động, thực vật rừng trên núi đá vôi phong phú nhất ở Việt Nam. Đến Cúc Phương, du khách được chiêm ngưỡng những cây cổ thụ nghìn năm, những loài chim quý tuyệt đẹp… ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(26,'Chùa Linh Mụ-Huế','Chùa Thiên Mụ. Còn gọi là chùa Linh Mụ, là ngôi chùa cổ nằm trên đồi Hà Khê, tả ngạn sông Hương, cách trung tâm thành phố Huế khoảng 5km về phía tây. Chùa Thiên Mụ chính thức được xây dựng vào năm Tân Sửu (năm 1601), đời chúa Tiên Nguyễn Hoàng, vị chúa Nguyễn đầu tiên ở Đàng Trong.Với cảnh đẹp tự nhiên và quy mô rộng lớn, chùa Thiên Mụ đã trở thành ngôi chùa đẹp nhất thời bấy giờ. Trải qua bao biến cố lịch sử, chùa Thiên Mụ từng được dùng làm đàn Tế Đất dưới triều Tây Sơn (khoảng năm 1788), rồi được trùng tu nhiều lần dưới các triều vua nhà Nguyễn. Ngày nay chùa vẫn được tiếp tục chỉnh trang ngày càng huy hoàng, tráng lệ và luôn hấp dẫn, thu hút đông đảo du khách gần xa.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(27,'Hồ Gươm-Hà Nội','Hồ Hoàn Kiếm. Còn được gọi là Hồ Gươm, là hồ nước ngọt tự nhiên của thành phố Hà Nội, hồ có diện tích khoảng 12 hecta. Trước kia, hồ còn có các tên gọi là: hồ Lục Thủy, hồ Thủy Quân, hồ Tả Vọng và Hữu Vọng, tên gọi Hoàn Kiếm xuất hiện vào đầu thế kỷ XV gắn với truyền thuyết vua Lê Thái Tổ trả gươm báu cho Rùa thần.Hồ Hoàn Kiếm được gắn liền với truyền thuyết huyền sử, là biểu tượng khát khao hòa bình, đức văn tài võ trị của dân tộc Việt Nam. Do vậy, đã có rất nhiều văn nghệ sĩ đã lấy hình ảnh Hồ Gươm làm nền tảng cho các tác phẩm của mình.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(28,'Bờ Bắc hạ lưu sông Thu Bồn-Đà Nãng','Thành phố Hội An nằm bên bờ Bắc hạ lưu sông Thu Bồn, cách thành phố Đà Nẵng khoảng 25km về phía Đông Nam, cách thành phố Tam Kỳ khoảng 50km về phía Đông Bắc. Từ thế kỷ XVI, XVII nơi đây đã nổi tiếng với tên gọi Faifoo, là nơi giao thương và là trung tâm buôn bán lớn của các thương nhân Nhật Bản, Trung Quốc, Bồ Ðào Nha, Italia… ở Đông Nam Á.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(29,'TP Phan Thiết- Bình Thuận','Mũi Né. Là một trung tâm du lịch nổi tiếng vùng Nam Trung Bộ, cách trung tâm thành phố Phan Thiết (tỉnh Bình Thuận) 22km về hướng Đông Bắc, nơi đây là một dải bờ biển xanh hoang vu với các đồi cát đỏ trải dài như sa mạc và những làng chài xứ biển thuần chất Việt Nam.Mũi Né còn hấp dẫn du khách bởi nhiều di tích lịch sử - văn hóa của một nền văn hóa đa dạng, đa dân tộc như Kinh, Chăm, Hoa, tiêu biểu có các tháp Chăm, tháp Nước, chùa Ông, chùa bà Thiên Hậu, Vạn Thủy Tú và nhiều di tích khác có giá trị về văn hóa, lịch sử, du lịch.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(30,' Phú Hiệp-  Phú Mỹ Hưng-  Củ Chi- Hồ Chí Minh','Địa đạo Củ Chi. Là hệ thống phòng thủ trong lòng đất ở huyện Củ Chi, vùng đất được mệnh danh là "đất thép", cách Thành phố Hồ Chí Minh 70km về hướng Tây - Bắc. Hệ thống này được Mặt trận Dân tộc Giải phóng miền Nam Việt Nam xây dựng trong thời kỳ Chiến tranh Đông Dương và Chiến tranh Việt Nam.','Trong Nước');

insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(31,'Vùng núi Zhangye Danxia- Cam Túc-Trung Quốc','Nếu không thật sự đặt chân tới địa điểm này, bạn sẽ cho rằng những hình ảnh trước mắt mình là một tác phẩm photoshop. Thế nhưng đây quả thật là phong cảnh tuyệt đẹp có một không hai mà mẹ thiên nhiên ưu ái ban tặng cho vùng núi Zhangye Danxia, Trung Quốc. Khách du lịch sẽ nhìn thấy những vệt đủ màu sắc từ đỏ, vàng, cam cho tới xanh lục, tím, nâu… Kiệt tác đẹp ngoài sức tưởng tượng này là do các yếu tố tự nhiên như mưa, gió, sự xói mòn, quá trình oxy hoá kết hợp với các yếu tố khoáng chất tạo ra những mảng màu sắc độc đáo khác nhau','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(32,' Nơi tận cùng thế giới ở Banos- Ecuador','Đây là một trong những điểm du lịch không dành cho người yếu tim bởi bạn sẽ được ngồi trên một chiếc xích đu tận cùng thế giới và đánh đu trên vực núi sâu mà không dùng bất cứ biện pháp bảo vệ nào. Nhưng trước khi ngồi được lên chiếc đu quay ‘tử thần’ này, bạn cần phải men theo con đường mòn đến Bellavista từ vách Banos, Ecuador để đến điểm quan sát tại một trạm theo dõi địa chấn có tên ‘La Casa del Arbel’ – một ngôi nhà nhỏ nằm trên một cái cây nhỏ sát bên hẻm núi.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(33,' Hố xanh vỹ đại ở Belize','‘Hố xanh vĩ đại’ là một hố sâu nằm dưới mặt biển ngoài khơi bờ biển Belize, là một phần của khu bảo tồn san hô Belize Barrier, khu vực được UNESCO công nhận là di sản thiên nhiên của nhân loại. Được bao quanh bởi một rặng san hô dài 70 km, hố này rộng đến 300m và sâu khoảng 124m. Sự kỳ vĩ và tráng lệ của nơi đây khiến mọi du khách đều phải trầm trồ, thán phục.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(34,'Cánh đồng hoa tulip Hà Lan','Hà Lan luôn được mệnh danh là quê hương của loài hoa kiêu sa tuyệt đẹp – tulip. Nơi đây có những cánh đồng hoa tulip ngập tràn màu sắc, trải dài bất tận tạo nên những bức tranh muôn màu sắc, đẹp ngoài sức tưởng tượng của con người. Mùa hoa tulip bắt đầu từ cuối tháng 3 tới khoảng đầu tháng 8. Vào thời điểm này, những bông hoa với đủ màu sắc tím, hồng, đỏ, vàng… đua nhau nở, giống như những suối hoa rực rỡ muôn màu. Cách tốt nhất để chiêm ngưỡng những cánh đồng hoa là ngắm toàn cảnh từ trực thăng.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(35,'Thiên đường hoa-công viên Hitachi Seaside','Công viên Hitachi Seaside là một trong những điểm du lịch “vàng” của đất nước Nhật Bản. Với diện tích 3,5ha, nơi đây có rất nhiều ngọn đồi, mỗi ngọn đồi là mỗi loại hoa khác nhau, thay phiên khoe sắc suốt 4 mùa trong năm. Công viên này đặc biệt nổi tiếng với hoa nemophilas – loài hoa năm cánh màu xanh trong suốt. Trong mùa xuân, hơn 4,5 triệu cây hoa nemophilas xanh sẽ đua nhau nở rộ trong công viên tạo nên cảnh đẹp “độc nhất vô nhị”.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(36,' Mendenhall- Alaska- Mỹ:','Nhắc tới Alaska, người ta không chỉ nghĩ tới những dòng sông băng trải dài bất tận, ẩn giấu trong mình vẻ đẹp kỳ ảo, lôi cuốn mà còn tưởng tượng tới những hang động băng huyền bí và đẹp  lung linh. Một trong số đó chính là hang động băng Mendenhall. Nơi đây là một trong những địa điểm mà bất kỳ ai cũng mong muốn được đặt chân tới và tận mắt ngắm nhìn vẻ đẹp kỳ vĩ của tạo hoá. Không chỉ mang một vẻ đẹp thuần túy của thiên nhiên, hang động băng này còn giúp các nhà khoa học có một cái nhìn tổng quát hơn về điều kiện khí hậu trong quá khứ, hiện tại và tương lai của những vùng đất cực bắc nước Mỹ.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(37,' nằm giữa Venezuela-Brazil và Guyana','Ngọn núi có đỉnh bằng kỳ lạ Roraima là ngọn núi có đỉnh bằng cao nhất và nổi tiếng nhất Venezuela, đồng thời ngọn núi này được xem như là biên giới giữa ba quốc gia Venezuela, Brazil và Guyana. Ngọn núi thuộc địa phận Vườn Quốc Gia Canaima với diện tích của toàn khu vực là 30.000km2, là nơi chứa và tạo ra nhiều địa chất lâu đời nhất thế giới; có niên đại vào khoảng 2 tỷ năm trước.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(38,'Cappadocia-Thổ Nhĩ Kỳ','Cappadocia là khu vực lịch sử thuộc khu vực trung tâm Anatolia của Thổ Nhĩ Kỳ, nổi tiếng về cảnh quan thiên nhiên ấn tượng nhất ở châu Âu. Nơi đây được hình thành từ lớp đá trầm tích và đá núi lửa – kết quả của vụ phun trào xảy ra khoảng 3 triệu năm trước đây. Trải qua hàng ngàn năm, những tác động của thiên nhiên: mưa, gió và nước sông đã khiến cho các lớp đá sa thạch và các khối đá mềm bị bào mòn dữ dội và tạo thành hàng trăm trụ cột đá ngoạn mục trong hình dạng của một tòa tháp, hình nón, hình ống khói, đạt đến tầm cao 40m, khiến nhìn từ trên cao, khu vực này trông tương tự như địa hình trên mặt trăng.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(39,'o Vaadhoo- Mandives','Nhiều người cho rằng cảnh tượng những sinh vật nhỏ xíu phát sáng trên bãi biển như hàng ngàn ngôi sao lấp lánh chỉ xuất hiện trong những bộ phim khoa học viễn tưởng hay những câu chuyện cổ tích. Song trên thực tế, bãi biển phát sáng trên hoàn toàn có thật ở Mandives. Nước biển phát sáng do các sinh vật phù du có khả năng phát quang xuất hiện với mật độ cao trong nước. Chính sự xuất hiện của những loài sinh vật này đã tạo nên một cảnh đẹp ngoài sức tưởng tượng cho bãi biển nơi đây.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(40,'Thác nước Victoria','Với độ cao khoảng 108m và nằm giữa biên giới Zimbabwe và Zambia, thác nước Victoria được biết tới là thác nước lớn nhất châu Phi. Nơi đây là một trong những điểm du lịch hấp dẫn và nổi tiếng nhất Zimbabwe mà du khách không thể bỏ qua khi có cơ hội đến châu Phi. Sự giao thoa giữa núi đá, sông nước, mây trời và những cánh rừng rậm bao quanh khu vực đã tạo nên một khung cảnh thiên nhiên đẹp hoàn hảo và ngoạn mục.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(41,'Trolltunga - Hordaland- Na Uy','Thêm một điểm du lịch nữa dành cho những du khách ưa mạo hiểm bởi Trolltunga là khu vực nằm trên rìa vách núi, cách mực nước biển hơn 600m và du khách chỉ có thể đi bộ ra ngoài khu vực này trong khoảng thời gian từ tháng 6 đến tháng 9.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(42,' Whitehaven- Australia','Bờ biển Whitehaven là một trong những địa điểm mà khách du lịch không thể bỏ qua khi tới với đất nước Australia. Làn nước trong xanh như pha lê và bãi cát trắng nhất thế giới, trải dài 7km là những viên ngọc quý mà tạo hóa ban tặng cho hòn đảo Whitsunday, đảo lớn nhất trong 74 đảo thuộc đất nước Kangaroo này.Từ trên cao nhìn xuống, bãi biển Whitehaven đẹp ngoài sức tưởng tượng của con người.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(43,' Grand Canyon- bang Arizona- Mỹ','Grand Canyon có diện tích gần 5.000 km2 là một trong những điểm du lịch nổi tiếng nhất thế giới. Nơi đây có những hẻm núi với đủ màu sắc từ nâu, đỏ, cam tới vàng tạo nên một khung cảnh rực rỡ và kỳ thú dưới ánh mặt trời.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(44,'Marble Cathedral- Chile','Động cẩm thạch Marble Cathedral tọa lạc  hồ General Carrera ở Pantagonia, Chile được hình thành từ hàng nghìn năm, nhờ quá trình bào mòn của tự nhiên, tạo nên những hẻm hốc và hang động vô cùng ấn tượng. Có thể nói rằng, hiếm có một tác phẩm nghệ thuật điêu khắc nào có thể so sánh với vẻ đẹp tuyệt mỹ của hang động được xem là một trong những kỳ quan thiên nhiên đẹp nhất thế giới này.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(45,'Klevan - Ukraine','Đây là một trong những đường hầm xe lửa đẹp nhất thế giới, thuộc thành phố Klevan của Ukraine. Nơi đây được bao phủ hoàn toàn bởi cây cối dày đặc tạo nên một khung cảnh tuyệt đẹp xuyên suốt 4 mùa trong năm. Ngay cả trong mùa đông lạnh giá, đường hầm tình yêu cũng mang một vẻ đẹp rất lãng mạn khi những bông tuyết trắng li ti bám lên những cành cây khẳng khiu. Phần lớn khách du lịch tới nơi đây đều là những cặp đôi đang yêu, họ đến để trao cho nhau những nụ hôn ngọt ngào giữa thiên nhiên, gửi gắm những điều ước cho tình yêu vĩnh cữu.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(46,' Salar de Uyuni-Bolivia','Salar de Uyuni là cánh đồng muối tự nhiên lớn nhất thế giới được hình thành do sự vận động của vỏ trái đất. Trong những tháng mùa đông, khu vực này hoàn toàn khô ráo. Tuy nhiên, khi mùa hè đến, cánh đồng lại luôn ngập nước, biến thành tấm gương soi khổng lồ.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(47,'Enchanted Well – Chapada Diamantina National Park -Brazil-','Enchanted Well nằm trong khuôn viên của công viên quốc gia Chapada Diamantina ở Bahia, Brazil. Nơi đây giống như một hồ bơi khổng lồ với độ sâu khoảng 41m, làn nước xanh ngắt. trong veo như một tảng băng tạo nên một khung cảnh tuyệt đẹp.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(48,' Antelop- Mỹ','Nằm ở vùng đất Navajo gần Page, Arizona, Antelope Canyon là một trong những hẻm núi thu hút nhiều người tham quan và chụp ảnh. Nơi đây được coi là một tác phẩm chạm khắc điêu luyện mà thiên nhiên ban tặng cho nước Mỹ và là viên ngọc có sức mạnh ma thuật, huyền bí, cuốn hút lớn đối với những ai đã từng được chiêm ngưỡng vẻ đẹp ấy.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(49,' Fingal- Scotland','Hang động biển Fingal nằm trên hòn đảo Staffa ở Scotland là một trong những điểm du lịch mà bạn không thể bỏ qua. Theo các nhà địa chất, hang Fingal được hình thành do dung nham nóng chảy kết hợp với hiện tượng xói mòn tạo nên một bức tranh điêu khắc cuốn hút đến kỳ lạ.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(50,'Tosua Ocean Trench- Samoa','Tosua Ocean Trench nằm gần Lotofaga, một ngôi làng trên bờ biển phía nam của hòn đảo Upolu, Samoa có độ sâu khoảng 30m. Điểm đặc biệt nhất của hồ bơi này chính là bạn cần phải leo xuống một cầu thang dài để tới với hồ bơi tự nhiên khổng lồ này.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(51,'Sagano - Nhật Bản','Nằm ở quận Arashiyama, Nhật Bản, rừng tre Sagano là một điểm đến tuyệt vời cho những người yêu thích vẻ đẹp của thiên nhiên. Với những rặng tre bạt ngàn và thẳng tắp, nơi đây thu hút hàng triệu lượt du khách trong và ngoài nước tới tham quan mỗi năm. Tới với nơi đây, bạn không chỉ được ngắm những rặng tre thẳng tắm, cao vút mà còn được tận hưởng bầu không khí trong lành và hoà mình vào với cuộc sống thiên nhiên tươi đẹp.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(52,' New Zealand','Hang động Waitomo Glowworm thuộc đảo Bắc, New Zealand nổi tiếng với vô vàn những con đom đóm phát sáng kỳ diệu. Ánh sáng kỳ ảo tuyệt đẹp như hàng ngàn ngôi sao bên trong động khiến bất cứ ai có dịp được đặt chân tới nơi đây đều phải ồ lên kinh ngạc.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(53,'Haiku-  Oahu- Hawaii:','Các bậc thang Haiku ở Hawaii được mệnh danh là “Nấc thang lên thiên đường”. Leo lên các bậc thang này là một trải nghiệm thú vị giữa chinh phục đỉnh cao với địa hình gồ ghề trơn trượt và khám phá thiên nhiên tươi đẹp.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(54,' Kamchatka- Nga','Bán đảo Kamchatka hiện chứa khoảng 160 núi lửa, trong số đó 29 núi vẫn còn hoạt động và 19 núi lửa đang hoạt động đã được UNESCO đưa vào danh sách Di sản thế giới. Núi lửa cao nhất Kljuchevskaia Sopka sở hữu “hình nón hoàn hảo” là một trong những ứng cử viên sáng giá cho vị trí núi lửa đẹp nhất thế giới.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(55,' Yucatan- Mexico','Hố sụt tự nhiên xuất hiện ở bán đảo Yucatan là kết quả của sự sụp đổ những tảng đá vôi xốp do tác động của nguồn nước ngầm ở phía dưới. Nguồn nước ở đây trong vắt, tinh khiết, bắt nguồn từ những trận mưa ngấm dần xuống lớp đá vôi hình thành những giọt nước rơi xuống.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(56,' Kelimutu -Indonesia','Kelimutu là một ngọn núi lửa nhỏ nổi tiếng ở đảo Flores, Indonesia. Điều ấn tượng nhất là trên đỉnh của ngọn núi lửa này có ba hồ được hình thành từ các miệng núi lửa có màu sắc rất độc đáo. Dù cùng nằm trên đỉnh của một ngọn núi lửa, nhưng nước trong các hồ này lại thay đổi màu sắc một cách định kỳ khác nhau từ đỏ và nâu sang màu ngọc lam và xanh lục tạo nên một cảnh sắc tuyệt đẹp.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(57,' Amsterdam-Hà Lan','Nếu bạn đã lên kế hoạch một chuyến đi châu Âu trong năm 2018 này, bạn chắc chắn không thể bỏ qua thành phố Amsterdam – một trong những thành phố xinh đẹp bậc nhất của đất nước Hà Lan.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(58,'Quần đảo Azores, Bồ Đào Nha','Azores là một quần đảo nằm giữa Đại Tây Dương. Vị trí địa lý tương đối hiểm trở nên nơi đây không đông đúc du khách như nhiều địa điểm du lịch khác. Cũng chính điều này, nếu bạn đang tìm kiếm một vùng đất mới để khám phá, Azores nên là cái tên “top-of-mind” đấy.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(59,' Ljubljana- Slovenia','Vùng Đông Âu của Slovenia ít nhiều chịu ảnh hưởng của sự lịch lãm nhưng phóng khoáng từ những người bạn nước Ý thân cận. Và thủ đô Ljubljana không nằm ngoài sự giao thoa văn hoá này.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(60,' Cộng hoà Zimbabwe','Thác Victoria được xem là một trong những kỳ quan tuyệt vời nhất của thiên nhiên với thảm nước hùng vĩ trên những vách đá cao đến 108 mét. Ngắm nhìn thác nước Victoria từ trên cao, bạn mới trải nghiệm được hết khung cảnh thiên nhiên đồ sộ và tuyệt vĩ này.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(61,' di sản danh thắng Quốc gia.','Sa Pa là một thị trấn vùng cao ở phía Tây Bắc Việt Nam, nơi có các thửa ruộng bậc thang tuyệt đẹp, trải dài như là những nấc thang vươn lên tận lưng trời. Với cảnh quang thiên nhiên hùng vĩ, thơ mộng, những phiên chợ tình bí ẩn và ẩm thực phong phú, đặc sắc, Sa Pa đã “mê hoặc” hầu hết những du khách khi đặt chân đến đây.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(62,'chiếc đuôi của một loài thuỷ quái đang bò lên bờ biển','Bán đảo Lofoten, Na Uy được xem là một trong những điểm tham quan nổi tiếng nhất của Iceland. Những dãy đá sừng sững bao quanh ôm gọn những thị trấn và người dân nơi đây. Khung cảnh hiện lên hùng vĩ nhưng yên bình dễ khiến người ta siêu lòng.','Ngoài Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(63,'đồng bằng Nam Bộ - miền Tây Nam Bộ','Đến đồng bằng sông Cửu Long ngoài việc thăm thú những vườn trái cây bạt ngàn, đi trên một trong 9 nhánh sông đổ ra biển của dòng sông Mê kông, nghe đờn ca tài tử và thưởng thức những món đặc sản vùng Nam Bộ, du khách cũng khó lòng bỏ qua việc tham quan các khu chợ nổi, một đặc trưng chỉ có ở miền Tây sông nước.','Trong Nước');

insert into dich_vu( ten_dv,link_dv) values ('Aria Hotel Budapest', '1.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Mandapa A Ritz-Carlton Reserve', '2.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Turin Palace Hotel', '3.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Hotel The Serras', '4.jpg');
insert into dich_vu( ten_dv,link_dv) values ('BoHo Prague Hotel', '5.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Portrait Firenze', '6.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Shinta Mani Resort', '7.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Tulemar Bungalows & Villas', '8.jpg');
insert into dich_vu( ten_dv,link_dv) values ('JA Manafaru', '9.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Kandolhu Maldives', '10.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khách sạn ibis Styles Nha Trang', '11.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khách Sạn Indochine Palace Huế', '12.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khách Sạn Lotte Hà Nộ', '13.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khu nghỉ dưỡng Ana Mandara Huế', '14.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khách sạn Rum Vàng 2 Đà Lạt ', '15.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Pelican Cruise Hạ Long', '16.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khách Sạn Hadana Boutique Đà Nẵng', '17.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khách Sạn Golden Central Sài Gòn', '18.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khu nghỉ dưỡng Novela Mũi Né', '19.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Khách Sạn Pullman Hà Nội', '20.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Singapore Airlines', '21.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Air New Zealand', '22.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Emirates.', '23.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Japan Airlines', '24.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Eva Air ', '25.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Southwest Airlines', '26.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Jet2.com', '27.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Qatar Airways', '28.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Azul Brazilian Airlines', '29.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Korean Air', '30.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Vietnam Airline', '31.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Jetstar', '32.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Vietjet Air', '33.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Air Mekong', '34.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Vasco', '35.jpg');
insert into dich_vu( ten_dv,link_dv) values ('Aria Hotel Budapest', '1.jpg');

insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (1,'Budapest, Hungary. ', 'Khách sạn Aria Hotel thuộc hệ thống khách sạn Library Hotel Collection nổi tiếng tại  Budapest, Hungary. Aria Hotel Budapest mang đến cho du khách những trải nghiệm thực sự hoàn hảo. Sự tiện nghi, thiết kế vô cùng hiện đại, địa điểm hoàn hảo, đội ngũ nhân viên tận tình, chu đáo, dịch vụ spa tuyệt vời tại Aria Hotel Budapest sẽ khiến bạn không muốn rời đi. Tận hưởng bữa sáng và bữa chiều cùng với rượu và pho mát ngon miệng mỗi ngày sẽ là điều mà bạn không nên bỏ qua.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (2,' Ubud, Indonesia','Khách sạn Mandapa A Ritz-Carlton Reserve thuộc tỉnh Ubud, Indonesia được đánh giá là khách sạn tốt nhất của châu Á. Chính vì vậy, không khó để hiểu tại sao Mandapa A Ritz-Carlton Reserve lại là một trong những khách sạn hàng đầu thế giới. Ấn tượng chính là từ để miêu tả khách sạn Mandapa A Ritz-Carlton Reserve. Tất cả những gì mà du khách mong chờ đều được phục vụ vô cùng chu đáo tại đây.','khách sạn' );
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (3,'Turin , Italia', 'Turin Palace Hotel là một trong những khách sạn hàng đầu thế giới do Tạp chí du lịch nổi tiếng và uy tín của Mỹ TripAdvisor bình chọn. Turin Palace Hotel nằm tại Turin thuộc đất nước Italia xinh đẹp. Giống như hình ảnh phản chiếu của đất nước Italy, Turin Palace Hotel là một khách sạn thực sự xinh đẹp, với những nhân viên tốt bụng, hài hước và chân thật nhất. Chắc chắn, Turin Palace Hotel sẽ khiến cho kì nghỉ của bạn trở nên có ý nghĩa hơn rất nhiều.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (4,'Barcelona, Tây Ban Nha','Tuyệt vời là từ để miêu tả về Hotel The Serras tại Barcelona, Tây Ban Nha. Kiến trúc, sự bài trí, dịch vụ khách sạn, phong cách làm việc của đội ngũ nhân viên, sự sạch sẽ và thoải mái của khách sạn The Serras này đã đạt đến sự hoàn hảo. Chính vì vậy, sẽ không có gì phải ngạc nhiên nếu The Serras nằm trong top đầu những khách sạn hàng đầu thế giới, được du khách đặc biệt yêu thích và khen ngợi.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (5,' Prague, Cộng hòa Séc','BoHo Prague Hotel nổi tiếng vì sự sang trọng và đẳng cấp của mình. Khách sạn BoHo Prague Hotel này thuộc Prague, Cộng hòa Séc. Dù mang trong mình sự sang trọng và đẳng cấp nhưng không vì thế mà BoHo Prague Hotel trở nên lạnh lẽo và xa cách. Trái lại, sự thoải mái, tiện nghi và thân thiện tại đây được du khách quốc tế đánh giá rất cao. Bên cạnh đó, vị trí thuận lợi cho di chuyển đến nhiều điểm du lịch khác nhau của Cộng hòa Séc cũng là một điểm cộng cho BoHo Prague Hotel.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (6,'Florence , Ý','Nhắc đến những khách sạn hàng đầu thế giới được du khách quốc tế đánh giá cao sẽ thực sự thiếu sót nếu bỏ qua khách sạn Portrait Firenze. Nằm tại Florence của đất nước Ý, Portrait Firenze giống như một thiên đường ánh sáng bên dòng sông Arno. Ngoài chất lượng dịch vụ tuyệt vời, không gian kiến trúc sang trọng, thoải mái, sẽ thật tuyệt vời nếu được chiêm ngưỡng cảnh hoàng hôn, mặt trời xuống núi từ cửa sổ phòng ngủ của Portrait Firenze. ','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (7,'Siem Reap, Campuchia', 'Shinta Mani Resort là một trong những khách sạn hàng đầu thế giới do Tạp chí du lịch nổi tiếng và uy tín của Mỹ TripAdvisor bình chọn. Shinta Mani Resort nằm tại Siem Reap, Campuchia. Chúng ta có thể miêu tả Shinta Mani Resort bằng từ đẹp và thanh bình. Ngoài mang đến cho du khách những dịch vụ khách sạn đầy đủ và tuyệt vời nhất, một điều để Shinta Mani Resort được đánh giá cao đó là đội ngũ nhân viên khách sạn. Các nhân viên tại đây luôn vui vẻ, nhiệt tình, sẵn sàng giúp đỡ dưới mọi hình thức, thậm chí là luôn sáng tạo trong cách thức giúp đỡ khách tới khách sạn. ','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (8,'Manuel Antonio, Costa Rica.' ,'Khách sạn Tulemar Bungalows & Villas nằm tại công viên quốc gia Manuel Antonio của Costa Rica. Hầu như tất cả mọi du khách khi đến Tulemar Bungalows & Villas đều đồng ý rằng kỳ nghỉ dưỡng tại đây là kỳ nghỉ tuyệt vời nhất mà họ từng có. Thật vậy, không gian kiến trúc tuyệt đẹp, chất lượng dịch vụ đều rất tuyệt vời. Tất cả những gì để nói về Tulemar Bungalows & Villas chỉ cần gói gọn trong một chữ "tuyệt" là đủ để hiểu tại sao đây lại nằm trong danh sách những khách sạn hàng đầu thế giới.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (9,'JA Manafaru', 'Trên cả tuyệt vời. Tôi thực sự cảm nhận được sự nồng hậu và hiếu khách tại đây trong suốt thời gian lưu trú". Đó chính là một lời nhận xét của một du khách quốc tế khi kết thúc kỳ nghỉ dưỡng của mình tại khách sạn JA Manafaru. Tại thiên đường Maldives, du khách quốc tế có thể dễ dàng chọn cho mình một khách sạn 5 sao quốc tế nhưng để chọn được một khách sạn ưng ý nhất về chất lượng dịch vụ thì quả thực không dễ dàng. JA Manafaru là một trong số những khách sạn hàng đầu với chất lượng dịch vụ tốt tuyệt đối. Đến với JA Manafaru, du khách sẽ có được tất cả những gì mà mình mong muốn cho một chuyến du lịch hoàn hảo nhất.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (10,'Bắc Ari','Lại là một khách sạn hàng đầu thuộc thiên đường Maldives. Trên đảo san hô vòng Bắc Ari, hãy tìm đến với khách sạn Kandolhu Maldives để được trải nghiệm những dịch vụ tốt nhất, chuyên nghiệp nhất từ sự phụ vụ nhiệt tình của nhân viên, dịch vụ khách hàng nhiệt tình 24/24, đồ ăn ngon cho đến sự êm ái của từng chiếc giường nghỉ hay bồn nước nóng. Thực sự, du khách quốc tế hầu như không thể chê bất cứ điều gì tại nơi đây. Dịch vụ thật sự hoàn hảo!','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (11, 'Số 86 Hùng Vương, phường Lộc Thọ, TP Nha Trang','Khách sạn ibis Style Nha Trang tọa lạc ở vị trí đẹp, tiện lợi: vừa gần biển lại ngay tại trung tâm thành phố. Hơn 300 phòng tiêu chuẩn 3 sao của ibis Style Nha Trang sở hữu kiến trúc hiện đại, màu sắc hài hòa và phòng nghỉ sang trọng, ấn tượng.Phòng hội nghị, hồ bơi ngoài trời, phòng thể dục, phòng xông hơi, spa, nhà hàng và quầy bar cũng hội tụ đủ trong khuôn viên khách sạn. Mọi chi tiết của ibis Style Nha Trang đều được chọn lọc, bài trí tỉ mỉ tạo ra không gian ấm cúng, nhằm đáp ứng tốt nhu cầu lưu trú của quý khách hàng.Ibis Styles Nha Trang được tập đoàn Accor quản lý. Các dịch vụ khách sạn như: an ninh 24 giờ, truy cập wifi khu vực công cộng, tư vấn tour, dịch vụ giặt là, dịch vụ taxi, giữ hành lý, nhân viên hướng dẫn, thu đổi ngoại tệ, thủ tục nhận phòng/ trả phòng nhanh chóng, thuận tiện.Với đội ngũ nhân viên nhiệt tình và chuyên nghiệp, khách sạn ibis Style Nha Trang hứa hẹn mang đến cho quý khách sự thoải mái, hài lòng nhất trong thời gian lưu trú.', 'khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (12, '105A Hùng Vương , Thành phố Huế, Thừa Thiên Huế','Khách Sạn Indochine Palace được xây dựng theo tiêu chuẩn 5 sao quốc tế, tọa lạc ở vị trí đắc địa, ngay trung tâm thành phố Huế. Chỗ nghỉ này cho phép bạn dễ dàng tiếp cận các điểm tham quan nổi tiếng ở Cố Đô như Cầu Tràng Tiền, Sông Hương, Chợ Đông Ba, nhà thờ Đức Bà, Cung An Định hoặc nhà văn hóa Trung Tâm…Indochine Palace nổi tiếng về chất lượng lẫn dịch vụ và đội ngũ nhân viên thân thiện. Khi đặt phòng khách sạn nghỉ ngơi tại đây, bạn sẽ được tận hưởng các dịch vụ tiện nghi cao cấp như quán cà phê, dịch vụ du lịch, Wi-Fi ở khu vực công cộng, thiết bị phòng họp và quầy nước….Đặc biệt, chất lượng khách sạn Indochine Palace được phản ánh qua từng phòng. Mỗi phòng đều trang bị đầy đủ thiết bị hiện đại: TV màn hình phẳng, Wifi tốc độ cao, điện thoại, máy sấy tóc, phòng tắm riêng, áo choàng cùng những dụng cụ thiết yếu. Bên cạnh đó, khách sạn còn cung cấp nhiều phương tiện giải trí độc đáo như câu lạc bộ dành cho trẻ em, bể bơi ngoài trời, bồn tắm nóng và phòng tắm hơi… đảm bảo quý khách sẽ luôn hài lòng trong thời gian lưu trú.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (13, '54 Liễu Giai, Phường Cống Vị, Quận Ba Đình, Hà Nội','Khách Sạn Lotte Hà Nội được xây dựng theo tiêu chuẩn 5 sao quốc tế, nằm giao ở khu phố Đào Tấn và Liễu Giai – nơi tổng hòa giữa nét truyền thống của khu phố cổ với sự hiện đại của đô thị mới. Khách sạn này giống như làn gió mới bởi chất lượng tuyệt hảo và dịch vụ chuyên nghiệp. Chính vị thế thuận lợi sẽ giúp bạn dễ dàng hơn trong việc di chuyển đến các địa điểm tham quan nổi tiếng như Trung tâm Triển Lãm Giảng Võ, Chùa Một Chột, Bảo tàng dân tộc học… Lotte Hà Nội Hotel cũng chỉ cách sân bay Quốc tế Nội Bài 27 Km và mất chừng 30 phút lái xe để tới ga Hà Nội mà thôi.Điểm nổi bật của khách sạn là tất cả các phòng nghỉ đều nằm ở trên cao của tòa nhà 65 tầng. Do đó, với những ai muốn trải nghiệm những điều thú vị thì Lotte Ha Noi Hotel chính là lựa chọn hoàn hảo mang đến cho bạn điểm nhìn ngoạn mục về toàn cảnh thành phố. Hơn nữa, mỗi phòng nghỉ đều trang bị đầy đủ tiện nghi hiện đại cùng phong cách bài trí khác nhau, tạo dấu ấn riêng trong lòng mỗi du khách.Dịch vụ khách sạn Lotte Hà Nội cũng rất hoàn hảo, 318 phòng cao cấp được thiết kế hài hòa từ màu sắc đến chi tiết… Như một sự khẳng định về đẳng cấp và chất lượng của mình, khách sạn Hà Nội 5 sao này còn sở hữu hệ thống nhà hàng, phòng tiệc và quán bar xa hoa… đáp ứng mọi nhu cầu của quý khách. Bên cạnh đó, bạn cũng sẽ tìm thấy những giây phút thư giãn trong không gian giải trí nơi đây như khu spa, phòng tập thể dục và bể bơi trong nhà…','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (14,'An Hai Village, Thôn An Hải, thị trấn Thuận An, huyện Phú Vang, Việt Nam','Khu nghỉ dưỡng Ana Mandara Huế nằm ngay làng Thuận An, Huế. Từ Huế, bạn phải mất khoảng 20 phút lái xe bằng xe ô tô hoặc xe máy theo con đường biển mới mở để đến đây. Nét đặc sắc và thu hút khách du lịch ở nơi đây đó chính là khu nghỉ dưỡng được bao quanh bởi những ruộng lúa, phá Tam Giang đã tạo nên một cảnh đẹp như mơ. Hơn thế nữa, resort này lại nằm trong khu vườn nhiệt đới  với cây trái, hoa lá.Khu nghỉ dưỡng Ana Mandara Huế có diện tích là 2.8 ha với tổng số 78 phòng nghỉ. Trong đó có 4 phòng bao gồm: biệt thự có hồ bơi riêng, biệt thự hướng biển, các phòng đôi, phòng nghỉ cao cấp... Mỗi phòng trong khu nghỉ dưỡng đều được cung cấp đầy đủ các tiện nghi hiện đại, tốt nhất, đáp ứng được yêu cầu của những vị khách khó tính.Bên cạnh đó, khi đặt phòng khách sạn tại đây, du khách cũng có thể tìm thấy tất cả tiện nghi và dịch vụ tốt nhất tại khu nghỉ dưỡng bao gồm cửa hàng mua sắm, tầng cao cấp, mát xa, quán cà phê, dịch vụ giặt ủi, tiện nghi phòng họp. Sau một ngày làm việc hoặc du lịch khám phá, du khách có thể sử dụng dịch vụ mát xa, bể tắm Jacuzzi, phòng tập thể dục, tắm hơi, bể bơi để thư giãn.Khu nghỉ dưỡng Ana Mandara Huế hứa hẹn là sự lựa chọn rất hoàn hảo mang đến du khách sự thoải mái và thuận tiện nhất.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (15,'24 Lê Đại Hành, Thành phố Đà Lạt, Việt Nam','Khách sạn Rum Vàng tọa lạc tại vị trí đắc địa nằm ngay trung tâm thành phố Đà Lạt. Khách sạn chỉ cách hồ Xuân Hương thơ mộng khoảng 05 phút đi bộ và du khách chỉ cần di chuyển đến nhà thờ Con Gà khoảng 5 phút lái xe.Khách sạn Rung Vàng được thiết kế theo phong cách hiện đại, gồm có tổng cộng là 50 phòng nghỉ đạt tiêu chuẩn 3 sao. Tất cả các phòng trong khách sạn đều được cung cấp cửa sổ lớn với hướng nhìn ra toàn thành phố, công viên hoặc hồ Xuân Hương. Tiện nghi phòng nghỉ bao gồm két sắt an toàn, bồn tắm, nước nóng lạnh, TV LCD với số lượng kênh truyền hình cáp đa dạng, dụng cụ pha trà và pha cà phê cũng được cung cấp tại khách sạn.Với sức chứa khoản hơn 150 khách, nhà hàng Rum Vàng nằm trên tầng sân thượng của khách sạn, mở cửa từ 06:00 sáng đến 10:00 đêm sẽ là sự lựa chọn lý tưởng để khách có thể thưởng thức các món Âu Á theo yêu cầu. Còn Rum Vàng Bar & Café phục vụ khách từ 06:00 sáng đến 10:00 đêm hằng ngày sẽ phục vụ khách các loại rượu và đồ uống phong phú. Khu vực quầy bar được bố trí tại khu vực có tầm nhìn đẹp ra hồ Xuân Hương, trung tâm thành phố, đồi thông sẽ là sự lựa chọn đầy lý tưởng để bạn tìm lại khoảng lặng cho riêng mình.Nếu du khách đặt phòng khách sạn với mục đích công việc hoặc muốn tổ chức các cuộc hội họp, hội nghị lớn thì du khách cũng có thể lựa chọn phòng họp Mimosa với khả năng phục vụ 120 khách được trang bị đầy đủ dụng cụ tiện nghi cần thiết hội họp như máy chiếu, màn hình chiếu cùng với dịch vụ hỗ trợ hội họp luôn sẵn sàng làm hài lòng khách du lịch.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (16,'Số 32 - Anh Đào – Bãi Cháy – Hạ Long – Quảng Ninh, Việt Nam','Pelican Cruise Hạ Long nằm ở vị trí đắc địa thuộc Hạ Long, đây là nơi nghỉ chân tuyệt vời để du khách có thể tiếp tục khám thành phố trẻ sôi động ở mọi góc cạnh khác nhau.Pelican Cruise Hạ Long được thiết kế theo phong cách cổ điển, nhằm mục đích gợi nên cảm giác thân thuộc, ấm áp nhưng không hề kém phần thanh lịch, tinh tế trong cách thiết kế. Khách sạn gồm có tổng số là 22 phòng với 4 lầu mang đến du khách khi nghỉ chân tại đây có cảm giác ấm cúng và dễ chịu như đang được ở nhà. Mỗi phòng trong khách sạn được trang bị đầy đủ các thiết bị, tiện nghi hiện đại bao gồm máy sấy tóc, két sắt, vòi sen, tủ đồ ăn nhẹ, ban công, TV màn hình phẳng...Cho dù bạn là người thích vui vẻ hay chỉ thích muốn thư giãn sau một ngày làm việc bận rộn, mệt mỏi, bạn sẽ cảm thấy vô cùng thoải mái khi sử dụng các tiện nghi của khách sạn. Đó là một loạt tiện nghi giải trí như giải trí spa, thể thao dưới nước, mát xa. Không dừng lại khi đặt phòng khách sạn giá rẻ và nghỉ chân tại đây, khách sạn còn gợi ý đến bạn những hoạt động vui chơi giải trí đảm bảo bạn luôn cảm thấy vô cùng hứng thú trong suốt kì nghỉ dưỡng của mình.', 'khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (17,'H1-04, H1-05, H1-06 Phạm Văn Đồng, Quận Sơn Trà, Đà Nẵng','Hadana Boutique Hotel Danang nằm ở trục đường chính Phạm Văn Đồng thuận tiện cho việc đi lại của du khách. Vị trí lý tưởng giúp những ai đặt phòng khách sạn dễ dàng thăm quan các điểm du lịch nổi tiếng ở Đà Nẵng như cầu Sông Hàn, bãi biển Mỹ Khê, bán đảo Sơn Trà, núi Ngũ Hành Sơn,…Hadana Boutique Hotel Danang được thiết kế đơn giản nhưng hiện đại, chỗ nghỉ này trở thành sự lựa chọn tuyệt vời cho việc lưu trú lâu dài của các chuyên gia nước ngoài cũng như đây là nơi dừng chân lý tưởng dành cho những du khách muốn đến để khám phá thành phố Đà Nẵng xinh đẹp,...Khách sạn có tất cả 54 phòng khép kín được xây dựng theo tiêu chuẩn 4 sao quốc tế với đầy đủ tiện nghi bao gồm internet - wifi miễn phí, máy lạnh, truyền hình cáp chất lượng HD với tivi LCD 42 inch, trang thiết bị vệ sinh cao cấp, két sắt mini, tủ lạnh trong phòng.Nhà hàng sân thượng & Sky bar Sơn Trà là mô hình nhà hàng kiêm quầy bar độc đáo của khách sạn. Được thiết kế ở tầng 11, với khu vực trong nhà lẫn ngoài trời, hướng nhìn ra sông Hàn và bãi biển thơ mộng. Nhà hàng phục vụ buffet sáng với các món ăn phong phú cũng như phục vụ du khách cả ngày với các món ăn Âu Á ngon miệng khác.Hadana Boutique Hotel Danang cung cấp các dịch vụ phục vụ mọi nhu cầu của du khách như: phòng gia đình, dịch vụ đưa đón sân bay, xe đạp có sẵn, hồ bơi, phòng trăng mật,...Với đội ngũ nhân viên chuyên nghiệp, nhiệt tình, lễ tân phục vụ 24/24 giờ sẽ đem đến sự hài lòng cho du khách, mang lại sự thoải mái như ở nhà.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (18,'140 Lý Tự Trọng, Phường Bến Thành, Quận 1, TP Hồ Chí Minh', 'Khách sạn Golden Central Sài Gòn cách sân bay quốc tế Tân Sơn Nhất 6 km, trong bán kính vài phút tản bộ là chợ Bến Thành. Ngoài ra, quý khách có thể dễ dàng đi bộ tới các điểm du lịch nổi tiếng khác của thành phố như: Dinh Thống Nhất, chợ Bến Thành, công viên văn hoá Đầm Sen, hệ thống trung tâm mua sắm Parkson và Lotte…Khách sạn Golden Central Sài Gòn là khách sạn 4 sao theo tiêu chuẩn quốc tế với 120 phòng đầy đủ tiện nghi và các dịch vụ bổ trợ hoàn hảo. Với phương châm hoạt động “Lấy khách hàng làm trọng tâm”, tất cả nhân viên khách sạn Golden Central Sài Gòn luôn tâm niệm sẽ cố gắng hết mình để đem lại cho quý khách những dịch vụ tốt nhất, những món ăn ngon nhất, những đêm nghỉ tuyệt vời nhất trong một không gian nồng ấm và sang trọng.Khách sạn được thiết kế tinh tế giữa nghệ thuật Á Đông và kiến trúc Tây Âu sang trọng, tiện nghi và hiện đại. Tất cả các phòng đều có phòng không hút thuốc, điều hòa nhiệt độ, báo hàng ngày, áo choàng tắm, máy sấy tóc…Các dịch vụ như quán bar, nhà hàng, dịch vụ phòng hội họp, trung tâm thương vụ là một phần trong chuỗi dịch vụ cao cấp của khách sạn Golden Central Sài Gòn. Ngoài ra, khách sạn giá tốt này còn mang đến cho du khách nhiều dịch vụ giải trí như hồ bơi ngoài trời, phòng tập thể dục với những dụng cụ tiên tiến. Sau phút giây căng thẳng, mệt mỏi, bạn đừng quên đến với spa của khách sạn. Với đội ngũ chuyên viên chuyên nghiệp, được đào tạo bài bản, bạn sẽ được chăm sóc tốt nhất cũng như được đắm chìm trong không gian thư giãn thực sự. Nhằm mang đến cho khách sự an tâm, thoải mái, Golden Central Sài Gòn còn mang đến một dịch vụ đặc biệt là bác sĩ theo yêu cầu.Với vị trí thuận lợi, du khách có thể tự thiết kế riêng cho mình một lịch trình tham quan, nghỉ dưỡng hoặc đặt tour du lịch khám phá các địa danh nổi tiếng tại quầy khách sạn để có được chuyến đi đáng nhớ nhất','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (19,'96A Nguyễn Đình Chiểu, TP. Phan Thiết, Việt Nam','Khu nghỉ dưỡng Novela Mũi Né trải mình trên bãi biển Mũi Né (Bình Thuận) xinh đẹp, nơi luôn được khách du lịch tôn vinh là “thiên đường nghỉ dưỡng” hứa hẹn sẽ mang đến bạn và gia đình bạn một kỳ nghỉ thật sôi động và đáng nhớ. Quý khách có thể di chuyển đến với Novela Resort & Spa Mũi Né từ TP Hồ Chí Minh bằng tàu hỏa, sau đó đi taxi hoặc sẽ được khu nghỉ dưỡng đưa đón. Nếu Quý khách đi bằng xe bus từ trung tâm TP HCM quý khách có thể đến tận nơi. Khu nghỉ dưỡng Novela cách ga Phan Thiết 15 km.Khu nghỉ dưỡng được xây dựng vào năm 2008 và đạt tiêu chuẩn chất lượng 04 sao đẳng cấp. Bao quanh khu nghỉ dưỡng là một khu vườn dừa và cọ mang đến tầm nhìn tuyệt đẹp ra cảnh quan khu rừng. Nội thất chủ yếu của khu nghỉ dưỡng là được trang trí bằng gạch và gỗ tôn thêm vẻ xa hoa, quyến rũ.Novela Resort & Spa Mũi Né sở hữu hệ thống 96 phòng nghỉ hạng sang với rất nhiều trang thiết bị và tiện nghi hiện đại theo tiêu chuẩn 4 sao như: máy lạnh, truyền hình cáp vệ tinh, minibar, két sắt, điện thoại IDD, máy sấy tóc, dụng cụ pha trà/pha cà phê. Phòng tắm riêng tại khu nghỉ dưỡng bao gồm dép tắm, áo choàng tắm và bồn tắm.Nhà hàng được xây dựng nằm ở trung tâm khu nghỉ dưỡng, chuyên phục vụ các món Âu – Á và Việt Nam. Được thiết kế 02 tầng nhà hàng không chỉ là nơi để thưởng thức các món ăn hấp dẫn mà còn là vị trí để chiêm ngưỡng vẻ đẹp của bãi biển với những con sóng trập trùng và những bờ cát trắng trải dài tinh khôi.Đặc biệt với tầm nhìn ra hồ bơi và bãi biển, Bar and Coffee của Novela Resort & Spa Mũi Né được trang trí theo phong cách Việt Nam truyền thống, phục vụ đồ ăn nhẹ cùng nhiều thức uống hấp dẫn. Tại đây, bạn cũng có thể tranh thủ cập nhật thông tin, lướt web với đường truyền internet tốc độ cao.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (20,'40 Cát Linh, Quận Đống Đa, Hà Nội, Việt Nam','Khách sạn Pullman Hà Nội tọa lạc gần với trung tâm thương mại và kinh doanh, nhà chính phủ và các văn phòng ngoại giao. Khách sạn cách sân bay Quốc tế Nội Bài khoảng 45 phút lái xe. Từ khách sạn, du khách cũng có thể di chuyển đến trung tâm triển lãm Giảng Võ, hồ Tây cũng như các địa điểm tham quan lịch sử và văn hóa lớn.Khách sạn Pullman Hà Nội là một thành viên trong hệ thống Swiss-Belhotel quốc tế. Khách sạn được thiết kế đảm bảo mang tới sự thuận tiện và thoải mái cho du khách khi nghỉ tại Hà Nội.Gồm có tổng cộng là 242 phòng nghỉ sang trọng với nội thất trang nhã và tiện nghi hiện đại, du khách có thể nghỉ dưỡng tuyệt đối một trong các phòng phù hợp. Tất cả các phòng nghỉ tại đây được trang bị máy lạnh, truyền hình cáp, két an toàn cá nhân và máy pha trà/cà phê. Các phòng tắm riêng đi kèm với tiện nghi vòi sen nước nóng.Về ẩm thực, khi đặt phòng tại khách sạn Pullman Hà Nội bạn sẽ được thưởng thức nét ẩm thực độc đáo tại hai nhà hàng chuyên phục vụ các món ăn Á và quốc tế. Đồ uống được cung cấp tại quầy Mint Bar ở sảnh đợi.Bên cạnh đó khách sạn còn cung cấp cho khách hàng các dịch vụ tiện lợi khác bao gồm một bể bơi, trung tâm thể hình và sân tennis. Và dịch vụ Internet Wifi sẽ rất tiện lợi cho khách doanh nhân.Không những thể, để khiến bạn luôn cảm thấy hứng thú trong suốt kỳ nghỉ của mình, khách sạn còn gợi ý đến bạn những hoạt động vui chơi thú vị.','khách sạn');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (21,'Trụ sở chính: Airline House 25 Airline Road, Singapore 819829 Singapore','Hãng hàng không quốc gia Singapore, Singapore Airlines (SQ) là một trong những hãng hàng không lớn nhất thế giới. Từ trung tâm trung chuyển của hãng tại Sân bay Changi Singapore (SIN), Singapore Airlines bay đến hơn 60 điểm tại 35 quốc gia trên sáu lục địa. Là thành viên của Star Alliance, hãng cũng có các thỏa thuận liên danh với khoảng 10 hãng hàng không khác. Singapore có đội tàu toàn máy bay thân rộng với bốn hạng dịch vụ: Singapore Airlines Suites, Hạng Nhất, Hạng Thương gia và Hạng Phổ thông. Hãng hàng không khai thác ba phòng chờ cho hành khách cao cấp. Phòng chờ SilverKris có địa điểm tại 15 sân bay. Ngoài ra, sân bay Changi còn là mái nhà của Private Room và KrisFlyer Gold Lounge.','Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (22,'Trụ sở chính:185 Fanshawe Street , Miền Trung Auckland, Vùng Auckland 01010 New Zealand','Là hãng hàng không quốc gia của New Zealand, Air New Zealand (NZ) có cơ sở tại Auckland cung cấp các chuyến bay thẳng cho khoảng 50 điểm đến. Các điểm đến này bao gồm 25 điểm đến trong nước và khoảng 25 điểm đến quốc tế tại 15 quốc gia ở châu Đại Dương, châu Á, châu Âu và Bắc Mỹ. Hãng cũng có ba công ty – Air Nelson, Eagle Airways và Mount Cook Airline – phục vụ các điểm đến nhỏ hơn trong New Zealand. Air New Zealand có ba trung tâm tại Sân bay Auckland (Auk), Sân bay Quốc tế Wellington (WLG) và Sân bay Quốc tế Christchurch (CHC); Sân bay Quốc tế Los Angeles (LAX) và Sân bay Sydney (SYD) đóng vai trò là các điểm đến quan trọng. Hãng hàng không này là một phần của Star Alliance.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (23,'Trụ sở chính:PO Box 686 , Dubai Các Tiểu vương quốc Ả Rập Thống nhất','Emirates (EK) có trụ sở tại Các Tiểu vương quốc Ả Rập Thống nhất là hãng hàng không lớn nhất Trung Đông và là một trong hai hãng hàng không quốc gia của đất nước. Hãng khai thác các chuyến bay thẳng đến hơn 140 điểm tại 78 quốc gia từ trung tâm trung chuyển của hãng tại Sân bay Quốc tế Dubai (DXB). Hãng là một trong số ít các hãng hàng không có đường bay đến sáu châu lục. Đội tàu bay của hãng chủ yếu có bố trí khoang hành khách gồm 3 hạng (Hạng Nhất, Hạng Thương gia và Hạng Phổ thông) cũng như một số máy bay hai hạng (Hạng Thương gia và Hạng Phổ thông). Trong khoang hành kháchhạng nhất của hãng, có nhiều loại chỗ ngồi, bao gồm dãy phòng, giường phẳng và ghế sofa. Emirates khai thác 33 Phòng chờ Emirates cho hành khách Hạng Nhất, Hạng Thương gia và các thành viên Vàng Skyward.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (24,'Trụ sở chính:2-4-11 Higashi-Shinagawa, 2-chome Shinagawa-ku, 140-8637 Quận Tokyo','Hãng hàng không lớn nhất của quốc gia, Japan Airlines (JL) có trụ sở tại Tokyo. Hãng có các chuyến bay thẳng đến khoảng 60 điểm đến trong nước và hơn 30 điểm đến quốc tế tại châu Á, châu Âu, châu Đại Dương, Bắc Mỹ và Nam Mỹ. JL là thành viên liên minh một thế giới và cũng có thỏa thuận liên danh với khoảng 30 hãng hàng không. Hãng có các loại dịch vụ: Hạng Nhất, Executive Class (tương đương với Hạng Thương gia), Hạng Phổ thông Cao cấp, Hạng J (chỗ ngồi Hạng Phổ thông với ghế lớn hơn) và Hạng Phổ thông. Hạm đội máy bay của hãng có nhiều loại hai khoang, ba khoang và bốn khoang. Trung tâm chính của Japan Airlines nằm tại Sân bay Haneda ở Tokyo (HND) và Sân bay Quốc tế Narita (NRT).', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (25,'Trụ sở chính:376 Hsin-Nan Rd. Sec. 1, Taoyuan 33801 Đài Loan','EVA Air (BR) có trụ sở tại Sân bay quốc tế Đào Viên (TPE) gần Đài Bắc. Đó là hãng hàng không lớn thứ hai của Đài Loan sau China Airlines. EVA bay đến 70 điểm trong phạm vi Đài Loan, ở những nơi khác ở châu Á, và ở Úc, châu Âu và Bắc Mỹ. Hãng là một thành viên của Star Alliance. Đội tàu bay của hãng bao gồm máy bay được bố trí cả ba khoang hành khách lẫn hai khoang hành khách. Hạng Thương gia được gọi là Hạng Royal Laurel hay Hạng Premium Laurel, tùy thuộc vào loại máy bay. Hạng Elite là khoang hành khách Phổ thông Đặc biệt. Và Hạng Phổ thông được cung cấp trên tất cả các chuyến bay. EVA Air cũng sở hữu một công ty con Uni Air (B7) khai thác các chuyến bay quốc nội và khu vực.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (26,'Trụ sở chính: PO Box 36647-1CR , Dallas, TX 75235 ','Southwest Airlines có trụ sở ở Dallas (WN) là hãng hàng không giá rẻ lớn nhất thế giới. Southwest khai thác các chuyến bay thẳng đến hơn 90 điểm tại 41 tiểu bang, Bahamas, vùng Caribbe và Mexico. Không giống như nhiều hãng hàng không lớn, Southwest không sử dụng trạm trung chuyển, mà là một hệ thống từ điểm đến điểm. Khoảng 15 sân bay với số lượng chuyến bay WN đáng kể được chỉ định làm các thành phố trọng điểm. Đội tàu bay của hãng được bố trí với chỉ một khoang hành khách Hạng Phổ thông duy nhất. Trái ngược với nhiều hãng hàng không giá rẻ, Southwest không thu phí đối với hai hành lý ký gửi trở xuống; đồ uống không cồn và bánh quy hoặc đậu phộng cũng miễn phí trên máy bay. Có sẵn vé lên máy bay sớm, tự động làm thủ tục trực tuyến và đồ uống có cồn để mua.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (27,'Trụ sở chính:Dart Group PLC Leeds Bradford International Airport, Leeds LS19 7TU England','Hãng hàng không giá rẻ của Anh tên Jet2.com (LS) có trụ sở tại Sân bay Quốc tế Leeds Bradford (LBA). Ngoài Leeds, hãng có bảy cơ sở điều hành khác tại Sân bay Alicante–Elche (ACL), Sân bay Quốc tế Belfast (BFS), Sân bay East Midlands (EMA), Sân bay Edinburgh (EDI), Sân bay Glasgow (GLA), Sân bay Manchester (MAN) và Sân bay Newcastle (NCL). Hãng đã lên kế hoạch chở khách và các chuyến bay thuê bao đến khoảng 60 điểm trên khắp châu Âu. Là một hãng hàng không giá rẻ, hành khách sẽ phải trả thêm phí dịch vụ như hành lý ký gửi, ghế ngồi có thêm chỗ để chân, và các bữa ăn trên chuyến bay cùng các loại thức uống có cồn.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (28,'Trụ sở chính: Qatar Airways Tower Airport Road , Doha Qatar','Qatar Airways (QR) là hãng hàng không quốc gia của Qatar và là một thành viên của liên minh Oneworld (Một thế giới). Từ trạm trung chuyển chính tại Sân bay Quốc tế Hamad (DOH), hãng cung cấp các chuyến bay tới khoảng 145 địa điểm trên khắp sáu lục địa có người ở. Đội bay của Qatar Airways gồm các tàu bay thuộc loại hai khoang hành khách (Hạng Thương gia và Hạng Phổ thông) và ba khoang (Hạng Nhất, Hạng Thương gia và Hạng Phổ thông). Ghế ngồi trong cả khoang Thương gia và khoang Hạng Nhất đều có thể chuyển thành giường. Với những hành khách hạng ghế đặc biệt bay từ Sân bay Quốc tế Hamad, Qatar Airways cung cấp dịch vụ Phòng chờ Thương gia Al Mourjan. Một phòng chờ thứ hai của hãng được đặt tại Sân bay London Heathrow (LHR).', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (29,'Trụ sở chính: Av. Marcos Penteado de Ulhôa Rodrigues 939 Barueri, Sao Paulo, Bang Sao Paulo 06460-040 Brazil','Azul (AD) là một hãng hàng không giá rẻ của Brazil có đường bay đến khoảng 100 điểm đến trong nước. Mặc dù hãng hàng không phục vụ các thị trường lớn như Belo Horizonte, Rio de Janeiro, Salvador da Bahia và Selo Paulo, phần lớn các điểm đến của hãng là các thị trường xa xôi và nhỏ hơn. Hãng cũng có một chuyến bay đến Fort Lauderdale, và các thỏa thuận liên danh với Star Alliance và United Airlines (UA). Trung tâm của hãng được đặt tại Sân bay Quốc tế Viracopos (VCP), Sân bay Quốc tế Tancredo Neves (CNF) và Sân bay Santos Dumont (SDU). Đội bay của hãng có khoảng 150 máy bay, bao gồm máy bay Airbus, ATR và Embraer. Hầu hết các máy bay có một khoang Hạng Phổ thông duy nhất, mặc dù một số máy bay cũng có một khoang Hạng Thương gia.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (30,'Trụ sở chính: Korean Air Operations Center 1370 Gonghang-Dong, Seoul 157712 Hàn Quốc','Với tư cách là hãng hàng không quốc gia của Hàn Quốc, Korean Air (KE) là hãng hàng không lớn nhất đất nước. Có trụ sở tại Seoul, hãng hàng không bay thẳng đến 20 điểm đến trong nước và khoảng 100 điểm đến quốc tế trên khắp châu Á, Úc, Châu Phi, Châu Âu, Bắc Mỹ và Nam Mỹ. Hãng hàng không, là một phần của liên minh SkyTeam, cũng có các thỏa thuận liên danh với khoảng 40 hãng hàng không. Đội bay của hãng gồm các máy bay với thiết kế hai khoang (Prestige Class, phiên bản của Hạng Thương gia, và Hạng Phổ thông) và ba khoang (Hạng Nhất, Hạng Thương gia và Hạng Phổ thông). Korean Air có các trung tâm điều hành tại Sân bay Quốc tế Seoul Gimpo (GMP) và Sân bay Quốc tế Seoul Incheon (ICN).','Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (31,'Vietnam Airlines-Hãng hàng không nội địa hàng đầu Việt Nam','Đây là hãng hàng không của quốc gia Việt Nam và cũng nằm trong trong danh sách hãng hàng không lớn nhất tại Việt Nam, hoạt động dựa theo mô hình truyền thống nên khi bạn đi máy bay bạn sẽ được gửi đồ 20kg miễn phí, được phục vụ ăn uống trong máy bay. Bên cạnh đó máy bay của hãng to, rộng hơn.Hãng Vietnam Airline bay đến cả 3 miền Bắc, Trung, Nam của Việt Nam. Nhiều đường bay hiện nay chỉ có hãng quốc gia này hoạt động và khách hàng không có lựa chọn nào khác', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (32,'Jetstar Pacific-Hãng hàng không Việt Nam nội địa lớn thứ 2 Việt Nam','Hãng hàng không Việt Nam nội địa lớn thứ 2 là Jetstar Pacific, hoạt động theo mô hình hàng không giá rẻ. Bạn có thể miễn phí hành lý xách tay 7kg, không được 20kg như như hãng hàng không nội địa.Ưu điểm của hãng hàng không nội địa Jetstar Pacific này chính  là vé máy bay rẻ hơn Vietnam Airlines. Vào thứ 6 hằng tuần thì hãng hàng không này lại tung ra chương trình khuyến mãi rất hấp dẫn.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (33,'Hàng Không nội địa-Vietjet Air','Nằm trong các hãng hàng không Việt Nam tiếp theo đó là Vietjet Air, đơn vị này mới xuất hiện trong thị trường Việt Nam hiện nay, với giá rẻ rất cạnh tranh với hãng Jetstar, ngoài ra giá vé còn có thể giảm xuống từ 19.000 đồng đến 99.000 đồng.Đường bay chủ lực của hãng hàng không này cũng là Hà Nội – TP HCM, ngoài ra trong những thời gian gần đây hãng đã mở đường bay TP HCM đi Nha Trang, Hải Phòng cùng các tỉnh thành khác.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (34,'Hàng Không nội địa-Air Mekong','Hãng hàng không nội địa Air Mekong được ra đời vào năm 2012 không có khuyến mãi sốc như hai hãng hàng không phía trên bên cạnh đó, các máy bay đều rất nhỏ và chỉ sử dụng trong các chuyến bay đặc thù như Hà Nội đi đến Phú Quốc, Côn Đảo.Vì có thiết kế nhỏ nên hãng hàng không này có vinh dự phục vụ mộtvợ chồng siêu tài tử Brad Pitt – Angela khi họ đã thuê riêng một chuyến bay của hãng hàng không này ra Côn Đảo.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (35,'Hàng không nội địa- Vasco','Hãng hàng không Việt Nam trong nội địa thứ 5 đó là Vasco, chính xác đây là một hãng hàng không xuất phát từ Công ty của hãng VietnamAirlines có thể gọi là công ty con của hãng hàng không quốc gia.Máy bay của Vasco có thiết kế nhỏ vì công ty này chỉ bay và phục vụ cho các tuyến bay hàng không ở Việt Nam trong nội địa ngắn và được xuất phát từ TP Hồ Chí Minh.', 'Phương tiện');
insert into ctdv( id_dv,tieu_de_dv,noi_dung_dv,loai) values (36,'Hàng không nội địa- Vasco','Hãng hàng không Việt Nam trong nội địa thứ 5 đó là Vasco, chính xác đây là một hãng hàng không xuất phát từ Công ty của hãng VietnamAirlines có thể gọi là công ty con của hãng hàng không quốc gia.Máy bay của Vasco có thiết kế nhỏ vì công ty này chỉ bay và phục vụ cho các tuyến bay hàng không ở Việt Nam trong nội địa ngắn và được xuất phát từ TP Hồ Chí Minh.', 'Phương tiện');

INSERT INTO `ctdgdv` (`id_dv`, `id_tk`, `so_sao_dv`, `binh_luan_dv`) VALUES
(1, 1, 5, 'Rất Tốt, dịch vụ tuyệt'),
(1, 2, 1, 'Không Tốt,chả có gì, không khí không thoáng mát'),
(1, 2, 4, 'Tốt,Hài lòng'),
(1, 2, 5, 'Hài lòng, tôi dễ tính mà!'),
(1, 6, 5, 'Tốt, cần phát huy nhé!'),
(1, 7, 4, 'không đặc biệt nhưng Khá ổn'),
(2, 1, 3, 'không Tốt,không có gì đặc biệt'),
(2, 1, 5, 'Tốt, Rất ưng ý'),
(2, 2, 5, 'Tốtlắm, hồ bơi sang chảnh'),
(2, 4, 1, 'Rất kém,chả có gì '),
(2, 5, 5, 'hoàn hảo, mọi thứ ở mức tuyệt vời'),
(2, 6, 5, 'Rất tuyệt vời'),
(2, 7, 5, 'giá rẻ dịch vụ lại tốt'),
(2, 9, 3, 'ở mức trung bình khá thôi'),
(2, 9, 4, 'Tôi thấy ở đâu cũng vậy!'),
(2, 11, 3, 'Bình thường mà'),
(3, 6, 3, 'tạm chấp nhận được'),
(4, 10, 3, 'dịch vụ không tốt lắm'),
(5, 5, 5, 'nên nới lỏng hơn về việc ra vào cò lại mọ thứ đều tuyệt vời'),
(6, 4, 3, 'tôi là một khách hàng khó tính, nên cải thiện nhiều hơn'),
(7, 2, 5, 'các bạn cần tiếp tục phát huy mọi dịch vụ và triển khai nhiều ưu đãi hơn nữa'),
(8, 10, 3, 'dịch vụ ở đây chưa thực sự tốt'),
(9, 10, 1, 'kém, không hài long chút nào'),
(10, 6, 5, 'khách sạn hoàn hảo cả về chất lượng,không gian và dịch vụ'),
(11, 2, 4, 'khá ổn, phát triển thêm nhé!'),
(11, 7, 3, 'ở mức trung bình, cần tu sủa lại không gian'),
(11, 7, 5, 'Tuyệt vời, các dịch vụ trong khách sạn rất tốt'),
(12, 9, 4, 'view trong khách sạn khá đẹp'),
(13, 1, 5, 'Nhân viên nhiệt tình, dịch vụ tốt'),
(14, 1, 1, 'kém, không nên ở đây'),
(15, 8, 2, '  phục vụ không tốt,'),
(16, 5, 5, 'hoàn hảo'),
(17, 2, 5, 'Hài lòng, nhân viên thân thiện, nhiệt tình'),
(18, 6, 5, 'Tốt, nên phát huy'),
(19, 10, 5, 'khu nghỉ dưỡng quá hoàn hảo, không có gì để chê trách'),
(20, 8, 5, 'sứng đáng là khách sạn 5 sao'),
(21, 10, 3, 'trung bình, cần phát triển nâng cao hơn'),
(22, 2, 3, 'nhân viên không nhiệt tình'),
(22, 6, 5, 'Rất tuyệt vời'),
(23, 4, 3, 'chất luộng dịch vụ khá ổn, nhưng không gian hơi hẹp'),
(23, 11, 2, 'khách sạn cao cấp hay nhà nghỉ bình dân không phân biệt nổi nữa'),
(24, 3, 1, 'nhân viên ở đây bị kỳ thị người Việt Nam à'),
(25, 6, 5, 'lần đầu tiên biết say máy bay là gì, nhưng mà vui'),
(25, 8, 2, ' chuyến đi tồi'),
(26, 3, 4, 'không biết quy định, tý nữa thì bị cho ở lại khỏi bay'),
(26, 4, 1, 'dịch vụ trên chuyến đi rất kém'),
(26, 4, 2, 'không hài lòng về cách cư xử của tiếp viên'),
(27, 3, 5, 'chuyến bay an toàn'),
(27, 6, 4, 'dịch vụ ổn, nhân viên thân thiện'),
(28, 8, 5, 'ngủ một mạch cả lộ trình bay luôn'),
(28, 11, 5, 'cảm ơn vì cho tôi hạ cánh an toàn'),
(29, 4, 4, 'ngày xưa chỉ ước được đi máy bay một lần ý.giờ được đi sợ đến già'),
(29, 7, 3, 'lần thứ xxx đi máy bay nhưng lần này không thực sự hài lòng'),
(30, 1, 4, 'khá ổn'),
(30, 4, 1, 'nên cải thiện chất lượng dịch vụ'),
(31, 3, 4, 'mức giá cũng được,view bình thường'),
(31, 3, 5, 'đã quá nổi tiếng, không chỉ về dịch vụ mà chất lượng chuyến bay cũng hoàn hảo'),
(31, 7, 5, 'xứng đáng nhận 5 sao cho một hãng hàng không nội địa'),
(31, 8, 2, ' không Tốt, nhân viên bị khó ở !'),
(32, 4, 5, 'hệ thống nhân viên vui vẻ, thân thiện, nhiệt tình'),
(33, 2, 4, 'khá tốt, nên tiếp tục phát huy'),
(33, 2, 5, 'tuyệt vời, chuyến đi thuận lợi quá'),
(33, 8, 5, 'hàng không nội địa mà dịch vụ rất chuyên nghiệp'),
(34, 1, 5, 'mọi thứ hoàn hảo'),
(34, 7, 3, 'Tôi không thoải mái'),
(34, 10, 1, 'tôi sợ  đi máy bay đến già luôn'),
(35, 2, 1, 'không thể chấp nhận được cách phục vụ'),
(35, 10, 5, 'bay cao bay xa bay bay , giờ vẫn run');



INSERT INTO `ctdgdddl` (`id_dddl`, `id_tk`, `so_sao_dddl`, `binh_luan_dddl`) VALUES
(1, 1, 4, 'một chuyến đi vui cùng bạn bè!!'),
(1, 2, 4, 'Đây là một nơi rất thích. Đây là một địa điểm thích hợp với những bạn thích đi du lịch'),
(1, 11, 4, 'khá hài lòng, cũng vui'),
(2, 1, 3, 'không có gì vui!'),
(2, 10, 3, 'Bình thường, mọi thứ đều ổn nhưng không có gì đặc biệt.'),
(3, 5, 5, 'tôi rất thích nơi này'),
(4, 2, 3, 'không lý tưởng như tôi nghĩ, mông đợi nhiều hơn thế'),
(5, 2, 1, 'tôi thất vọng khi đến đây'),
(6, 9, 5, 'một địa điểm tuyệt vời để hẹn hò'),
(7, 10, 4, 'nhiều khỉ lắm hihi haha'),
(8, 6, 5, 'nếu có điều kiệ, hãy đến đây một lần'),
(9, 10, 1, 'tồi tệ quá, buồn, chả đẹp gì cả'),
(10, 10, 3, 'bình thường mà sao mọi người khen nhiều vậy?'),
(11, 7, 5, 'nếu có cơ hội, tôi sẽ quay lại lần nữa cũng gia đình, quá tuyệt'),
(12, 6, 5, 'Rất tuyệt vời,'),
(12, 9, 4, 'nói chung là ổn , không phí công sức , thời gian , tiền bạc khi đến đây'),
(13, 1, 5, 'quá tuyệt vời, đẹp lắm!'),
(14, 1, 5, 'khung cảnh ở đây đẹp lắm '),
(14, 7, 3, 'Chẳng có gì đặc biệt cả'),
(15, 8, 2, ' không Tốt, chán ghê'),
(16, 5, 5, 'đẹp, chuyến đi ý nghĩa'),
(17, 6, 5, 'có tiền thì quay lại bao nhiêu lần cũng không chán'),
(18, 6, 5, 'sẽ quay lại. hihi'),
(19, 5, 5, 'hoàn hảo, không có gì để chê'),
(19, 10, 1, 'phi mất một chuyến đi, buồn quá!'),
(20, 11, 4, 'huế mộng mơ thiệt đó'),
(21, 9, 4, ' tên ngô đồng mà sao không có ngô, tính qua đó vặt ngô mà'),
(22, 6, 5, 'Rất tuyệt vời,rất ý nghĩa'),
(23, 5, 3, 'có gì hay đâu,chán òm'),
(24, 6, 5, 'vua biết ăn chơi quá ha'),
(25, 8, 2, ' đừng phí tiền đến đây'),
(26, 9, 4, 'chùa này thiêng lắm,không gian yên tĩnh thanh tịnh'),
(27, 2, 5, 'Hài lòng, vui lắm mọi người ạ'),
(28, 10, 2, 'chỉ thấy mệt khi đến đây thôi, có gì vui đâu'),
(29, 10, 5, 'mũi né tưởng đâu là mũi nghé'),
(30, 11, 4, 'nhiều thứ hay ho lắm '),
(31, 9, 4, 'cảnh quan tuyệt vời,nơi khá thích hợp để nghỉ dưỡng'),
(32, 7, 3, 'có ai thấy gì đặc biệt ở đây không'),
(33, 2, 4, 'Khá ổn, không khí trong lành'),
(34, 7, 3, 'đi 3 hôm mưa 2 !!'),
(35, 2, 1, 'sai lầm khi đến đây'),
(36, 11, 3, 'nhạt, bình thường quá mà'),
(37, 3, 2, 'mỏi chân chứ được cái quái gì đâu'),
(38, 9, 2, 'mất tiền, mất thời gian, mất công sức  để đến đây haizzz'),
(39, 7, 5, 'đẹp mê hồn luôn, cứ phải gọi là hoàn hảo'),
(40, 6, 3, 'tất cả chỉ là nghệ thuạt sắp đặt, quảng cáo thì rõ hay, rõ đẹp'),
(40, 10, 3, 'thời tiết không ủng hộ cho lắm!'),
(41, 8, 1, 'nếu có ước muốn cho thời gian trở lại, tôi sẽ ko mất tiền ngu'),
(42, 2, 3, 'Trung bình, tôi không thấy nơi này có nhiều thứ thú vị'),
(42, 9, 4, 'vui lắm!'),
(43, 2, 4, 'Khá ổn, không có gì đặc sắc nhưng mọi thứ đều tốt'),
(45, 5, 5, 'Fa thì đừng đến đây nhá, tủi thân lắm ý'),
(46, 9, 4, 'vui, đẹp mỗi tội về đen hết da, như kiểu đi làm đồng ý'),
(47, 2, 5, 'hoàn hảo, một địa điểm lý tưởng'),
(48, 3, 1, 'có ai thyaas nó đẹp không, cứ mình thì không thấy một chút xíu gì gọi là đẹp cả'),
(49, 9, 5, 'trải nghiệm khó quên, hang động đẹp lắm luôn'),
(50, 8, 5, 'nhìn cái hồ ai dám bơi, tui sợ chết đuối, uống no nước luôn'),
(50, 11, 4, 'khá tuyệt'),
(51, 5, 5, 'vào đó mà đi một mình chắc khỏi ra quá'),
(51, 6, 4, 'kiếm hoài  không  được cây tre trăm đốt'),
(51, 7, 5, 'một địa điẻm du lịch hoàn hảo'),
(52, 3, 3, 'chắc tại mình không hợp phong thủy, đi đến đó chán òm'),
(52, 6, 3, 'tôi muốn nhiều hơn thế khi đến đây'),
(53, 4, 2, 'mai tự xây cái cầu thnag như vậy'),
(53, 6, 2, 'chưa tìm ra sự đặc biệt '),
(53, 8, 3, 'ai nói cho tôi biết có gì vui ở đây'),
(54, 1, 5, 'đẹp lắm các bạn ạ!'),
(54, 7, 2, 'có gì vui đâu chứ'),
(54, 8, 4, 'về đến nhà mới biết mình còn sống, chỉ sợ núi lửa nó phun là toi đời. haha'),
(54, 9, 5, 'hihi, ngoài sự mong đợi luôn, tận mắt đc thấy ko phải xem qua ảnh qua báo nữa, thích ghê'),
(54, 11, 3, 'tích tiền đưa gia đình đến đây chơi một bữa nữa'),
(55, 3, 3, 'thấy bình thường à'),
(55, 4, 5, 'tự nhiên có tạo hóa lạ lùng thiệt'),
(55, 6, 2, 'chán òm, quảng cáo thì rõ đẹp, đến dó có gì đâu'),
(56, 4, 1, 'không bao giờ quay lại lần nữa'),
(56, 7, 1, ' ở đó không khí ô nhiễm quá'),
(56, 8, 4, 'chỡ mãi chả thấy nó đổi màu gì cả'),
(57, 2, 2, 'quá bình thường'),
(57, 3, 4, 'thành phố mộng mơ'),
(57, 8, 4, 'khá thú vị khi đến đây, nhiều chỗ chơi chỗ ăn, thoải mái '),
(58, 2, 2, 'đi về mệt muốn chết, lại chả có gì hay ho'),
(58, 8, 3, 'chán kinh'),
(58, 9, 4, 'khá ổn, dù sao cũng có một kỳ nghỉ vui vẻ'),
(59, 3, 3, 'có gì hay đâu, lượn một ngày thấy chán'),
(59, 3, 4, 'quá nhiều điều để khám phá'),
(60, 1, 4, 'cảnh đẹp lắm'),
(60, 7, 5, 'cái thác đó là nơi sống ảo cho mọi chị em '),
(60, 9, 3, 'thác đẹp hầy'),
(61, 5, 5, 'chờ mãi mới có cơ hội được đi, cảm ơn vì đã ko phụ sự kỳ vọng của tôi'),
(62, 2, 3, 'không đẹp như mình nghĩ'),
(63, 11, 5, 'Rất Tốt, đây là nơi hoàn hảo để hẹn hò');

insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'QUÀ DU LỊCH 3 MIỀN ĐẤT NƯỚC VIỆT NAM','Sau mỗi chuyến du lịch, những đặc sản là món quà nhỏ bé mang đậm hương vị vùng miền mà bạn muốn gửi tặng đến những người thân yêu. Vì thế, quà cho người nhà sau mỗi chuyến đi là điều khiến nhiều người lưu tâm.','1.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'CẨM NANG DU LỊCH ẤN ĐỘ, MUMBAI, DELHI TỪ A ĐẾN Z','Sông Hằng huyền thoại, những đỉnh núi tuyết vĩnh cửu, thành phố sôi động và những bãi biển hoang sơ khiến Ấn Độ luôn nằm trong những điểm đến hấp dẫn nhất hành tinh.','2.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'NHỮNG ĐỊA ĐIỂM SỐNG ẢO CỰC CHẤT TẠI HÀ NỘI','Nếu bạn có dự định đến du lịch Hà Nội và là tín đồ của hoạt động "sống ảo", "checkin" thì hãy ghi nhớ ngay những địa điểm sau đây. Bởi dưới đây là những địa chỉ "sống ảo" cực chất mà không phải ai cũng biết','3.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'NHỮNG HÀNH ĐỘNG CẦN CHÚ Ý KHI DU LỊCH MALAYSIA','Malaysia là một quốc gia sở hữu nhiều danh thắng đẹp, nền văn hóa đa dạng, đa ngôn ngữ và đa sắc tộc. Chính vì vậy mà quốc gia này đang trở thành một điểm đến được yêu thích. Tuy nhiên, vì tính chất đa ngôn ngữ và sắc tộc, nên Malaysia có rất nhiều quy tắc ứng xử riêng biệt, những điều cậm kỵ và sẵn sàng phạt rất nặng nếu du khách vi phạm.', '4.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'LITHUANIA, VIÊN NGỌC ẨN MÌNH NƠI BỜ BIỂN BALTIC','Nằm bên bờ biển Baltic, đất nước Lithuania bình yên với những lâu đài cổ xinh đẹp như trong một câu chuyện thần thoại. Bên cạnh đó là vẻ đẹp giao thoa giữa nét cổ kính của những công trình rêu phong và nét hiện đại của các tòa tháp chọc trời, cùng lối sống hiền hòa, dung dị mà không phải đất nước châu Âu nào cũng có được.', '5.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'NGÔI LÀNG NHƯ HỌA BÙA ĐỦ MÀU SẮC Ở ĐÀI LOAN','Tại Đài Loan có một ngôi làng rất đặc biệt, được mệnh danh là Làng Cầu Vồng. Tại đây mọi bức tường nhà đều phủ đầy màu sắc, từng cánh cửa cũng như có hồn riêng và con đường làng sống động mở ra trước mắt du khách.', '6.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'NHẬT BẢN TƯNG BỪNG NGÀY HỘI CUỐI NĂM','Nhật Bản – Đất nước mặt trời mọc không chỉ nổi tiếng với hoa Anh Đào, núi Phú Sĩ mà còn là cái nôi của một nền văn hóa đặc sắc, đa dạng với những con người thân thiện, hiếu khách và nền khoa học tiên tiến. Cuối năm còn là thời gian diễn ra nhiều lễ hội đặc sắc thu hút đông đảo du khách về tham dự.', '7.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'5 MÔN NGHỆ THUẬT THỂ HIỆN SỰ TINH TẾ CỦA NGƯỜI NHẬT BẢN','Nhật Bản là đất nước luôn hướng tới sự hoàn hảo, bên cạnh sự phát triển nhanh chóng của công nghệ thì các giá trị văn hóa nghệ thuật Nhật Bản không mất đi mà còn có sự thay đổi làm sao để tương thích với thời đại.', '8.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'CẨM NANG DU LỊCH BRAZIL, RIO DE JANEIRO TỪ A ĐẾN Z','Rio de Janeiro là thủ phủ của Brazil nói chung và bang Rio de Janeiro nói riêng, thường được khách du lịch gọi tắt bằng cái tên là Rio. Thành phố này nổi tiếng trong lòng du khách bởi có cảnh sắc thiên nhiên lý thú cùng với những bãi biển cát trắng trải dài, hay những rừng mưa nằm trong lòng đô thị.', '9.jpg');
insert into cam_nang( id_tk, tieu_de_cn, noi_dung_cn, link_cn) values (1,'7 ĐẶC SẢN XỨ HOA VÀNG TRÊN CỎ XANH ĂN LÀ GHIỀN','Sau thành công của bộ phim "Tôi thấy hoa vàng trên cỏ xanh" chuyển thể từ tác phẩm cùng tên của nhà văn Nguyễn Nhật Ánh, vùng đất Phú Yên đầy nắng gió nằm trải dài trên dải đất miền Trung thân thương đã trở nên vô cùng nổi tiếng. Ngoài những cảnh đẹp, hiếm có mảnh đất nào mà ở khắp mọi nơi từ ngoài đường đến trong hẻm, từ trung tâm đến huyện lỵ lại có nhiều đồ ăn ngon như Phú Yên.', '10.jpg');

/*
select * from tai_khoan tk inner join thong_tin_tai_khoan tttk on tk.id_tk = tttk.id_tk where tk.cap_do <> 2 limit 3, 5;

select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl;

select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv;

select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Trong Nước';

select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Ngoài Nước';

select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl order by dd.id_dddl desc limit 3;

select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Trong Nước' order by RAND() limit 0, 3;

select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where ct.chu_de = 'Ngoài Nước' order by RAND() limit 0, 3;

select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where dd.id_dddl = 15;

select chu_de from ctdddl where id_dddl = 5;
*/
/*
delete from ctdddl where id_dddl = 5;
delete from ctdgdddl where id_dddl = 5;
delete from dd_du_lich where id_dddl = 5;
*/

/*
delete from ctdv where id_dv = 5;
delete from ctdgdv where id_dv = 5;
delete from dich_vu where id_dv = 5;
*/

/*
delete from cam_nang where id_cn = 5;
*/

/*
delete from ctdgdv where id_tk = 5;
delete from ctdgdddl where id_tk = 5;
delete from thong_tin_tai_khoan where id_tk = 5;
delete from tai_khoan where id_tk = 5;
*/

/*
select * from tai_khoan tk inner join thong_tin_tai_khoan tttk on tk.id_tk = tttk.id_tk where tk.id_tk = 5;
select id_tk from tai_khoan where id_tk >= all (select id_tk from tai_khoan);

select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv where ct.loai = "phương tiện" limit 0, 1000;

select * from cam_nang limit 0, 1000;

select * from tai_khoan where ten_dang_nhap = 'admin' and mat_khau = 'admin';

update tai_khoan set mat_khau = '123' where id_tk = 3;

update thong_tin_tai_khoan set ho_ten = 'xxx xxx', email = 'x@gmail.com', ngay_sinh = '1998-02-02', gioi_tinh = 'Nam', dia_chi = 'HN', sdt = '1234569879' where id_tk = 3;
*/
/*
select * from ctdgdddl where id_dddl = 7;

select sum(so_sao_dddl) as sums from ctdgdddl where id_dddl = 1;

select count(so_sao_dddl) as counts from ctdgdddl where id_dddl = 1;

select * from ctdgdv where id_dv = 1;

select count(so_sao_dv) as counts from ctdgdv where id_dv = 1;

select sum(so_sao_dv) as sums from ctdgdv where id_dv = 1;

select * from dich_vu dv inner join ctdv ct on dv.id_dv = ct.id_dv where loai = "Phương tiện" order by rand() limit 0, 4;
*/
select * from cam_nang where id_cn = 5;

select * from ctdgdddl ct join thong_tin_tai_khoan tk on ct.id_tk = tk.id_tk where ct.id_dddl = 60;

select *, sum(so_sao_dddl)/count(so_sao_dddl) as bxh, sum(so_sao_dddl) as sums from ctdgdddl group by id_dddl order by sum(so_sao_dddl)/count(so_sao_dddl) desc, count(so_sao_dddl) desc;

/*Đối với các địa điểm du lịch chưa có lượt đánh giá nào thì chưa được vào bảng xếp hạng*/
select * from dd_du_lich dd join ctdddl ct on dd.id_dddl = ct.id_dddl join ctdgdddl ctdg on ctdg.id_dddl = dd.id_dddl group by dd.id_dddl order by sum(so_sao_dddl)/count(so_sao_dddl) desc, count(so_sao_dddl) desc;

select *, sum(so_sao_dv)/count(so_sao_dv) as bxh, sum(so_sao_dv) as sums from ctdgdv group by id_dv order by sum(so_sao_dv)/count(so_sao_dv) desc, count(so_sao_dv) desc;

/*Đối với các dịch vụ du lịch chưa có lượt đánh giá nào thì chưa được vào bảng xếp hạng*/
select * from dich_vu dv join ctdv ct on dv.id_dv = ct.id_dv join ctdgdv ctdg on ctdg.id_dv = dv.id_dv group by dv.id_dv order by sum(so_sao_dv)/count(so_sao_dv) desc, count(so_sao_dv) desc limit 0, 6;

select * from dich_vu dv join ctdv ct on dv.id_dv = ct.id_dv where dv.ten_dv like '%31%' OR ct.tieu_de_dv LIKE '%31%' OR ct.noi_dung_dv LIKE '%31%' OR ct.id_dv LIKE '%31%';

select * from dd_du_lich dd inner join ctdddl ct on dd.id_dddl = ct.id_dddl where dd.ten_dddl like '%%' OR ct.tieu_de_dddl like '%%' OR ct.noi_dung_dddl like '%%';



