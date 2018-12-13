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

insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(1,'admin','admin@gmail.com',08/07/1998,'Nam','Hà Nội',0123456789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(2,'a','a@gmail.com',02/07/1988,'Nữ','Hà Nam',0923456719);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(3,'b','b@gmail.com',08/05/1989,'Nam','Nam Định',0163456729);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(4,'c','c@gmail.com',06/07/1996,'Nam','Huế',0963453589);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(5,'d','d@gmail.com',08/09/1997,'Nữ','Thanh Hóa',0123396789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(6,'e','e@gmail.com',09/07/1998,'Nam','Hồ Chí Minh',0823456709);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(7,'f','f@gmail.com',04/07/1998,'Nữ','Ninh Bình',0166456789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(8,'g','g@gmail.com',08/03/1996,'Nữ','Cẩm Phả',0123234789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(9,'h','h@gmail.com',05/07/1992,'Nam','Bắc Ninh',01234556339);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(10,'i','i@gmail.com',02/09/1991,'Nữ','Hà Giang',0963456789);
insert into thong_tin_tai_khoan(id_tk,ho_ten,email,ngay_sinh,gioi_tinh,dia_chi,sdt) values(11,'k','k@gmail.com',01/07/1997,'Nam','Lang Sơn',0973456779);

insert into dd_du_lich(ten_dddl, link_dddl) values('Vịnh Hạ Long','1');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cát Bà','2');
insert into dd_du_lich(ten_dddl, link_dddl) values('Đà Lạt','3');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cáp treo Vinpearl Nha Trang','4');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang Sơn Đoòng','5');
insert into dd_du_lich(ten_dddl, link_dddl) values('Đảo Phú Quốc','6');
insert into dd_du_lich(ten_dddl, link_dddl) values('bán đảo Sơn Trà','7');
insert into dd_du_lich(ten_dddl, link_dddl) values('núi đôi Quản Bạ','8');
insert into dd_du_lich(ten_dddl, link_dddl) values('Tòa thánh Cao Đài (Tây Ninh)','9');
insert into dd_du_lich(ten_dddl, link_dddl) values('Nhà hát lớn Hà Nội','10');
insert into dd_du_lich(ten_dddl, link_dddl) values('Quốc lộ 4D','11');
insert into dd_du_lich(ten_dddl, link_dddl) values('Than Uyên ','12');
insert into dd_du_lich(ten_dddl, link_dddl) values('Làng An Bằng','13');
insert into dd_du_lich(ten_dddl, link_dddl) values('Côn Đảo','14');
insert into dd_du_lich(ten_dddl, link_dddl) values('thác Bản Giốc','15');
insert into dd_du_lich(ten_dddl, link_dddl) values('Nhà thờ Đức Bà (Sài Gòn)','16');
insert into dd_du_lich(ten_dddl, link_dddl) values('Jungle Beach (Khánh Hòa)','17');
insert into dd_du_lich(ten_dddl, link_dddl) values('Tràng An','18');
insert into dd_du_lich(ten_dddl, link_dddl) values('Chùa Linh Phước','19');
insert into dd_du_lich(ten_dddl, link_dddl) values('TP Huế','20');
insert into dd_du_lich(ten_dddl, link_dddl) values('Ngô Đồng','21');
insert into dd_du_lich(ten_dddl, link_dddl) values('Vườn quốc gia Phong Nha - Kẻ Bàng','22');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thung lũng Bắc Sơn','23');
insert into dd_du_lich(ten_dddl, link_dddl) values('Lăng Khải Định','24');
insert into dd_du_lich(ten_dddl, link_dddl) values('Vườn quốc gia Cúc Phương','25');
insert into dd_du_lich(ten_dddl, link_dddl) values('Chùa Thiên Mụ','26');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hồ Hoàn Kiếm','27');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hội An','28');
insert into dd_du_lich(ten_dddl, link_dddl) values('Mũi Né','29');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Địa đạo Củ Chi','30');

insert into dd_du_lich(ten_dddl, link_dddl) values('Vùng núi Zhangye Danxia, tỉnh Cam Túc, Trung Quốc','31');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Nơi ‘tận cùng thế giới’ ở Banos, Ecuador','32');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Hố xanh vỹ đại ở Belize','33');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cánh đồng hoa tulip Hà Lan','34');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thiên đường hoa ở công viên Hitachi Seaside','35');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang động băng Mendenhall, Alaska, Mỹ:','36');
insert into dd_du_lich(ten_dddl, link_dddl) values(' Ngọn núi Roraima nằm giữa Venezuela, Brazil và Guyana','37');
insert into dd_du_lich(ten_dddl, link_dddl) values('Khu vực Cappadocia, Thổ Nhĩ Kỳ','38');
insert into dd_du_lich(ten_dddl, link_dddl) values('Bãi biển sao trên đảo Vaadhoo, Mandives:','39');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thác nước Victoria','40');
insert into dd_du_lich(ten_dddl, link_dddl) values('Trolltunga ở Hordaland, Na Uy','41');
insert into dd_du_lich(ten_dddl, link_dddl) values('Bãi biển Whitehaven, Australia:','42');
insert into dd_du_lich(ten_dddl, link_dddl) values('Vườn quốc gia Grand Canyon, bang Arizona, Mỹ','43');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang động cẩm thạch Marble Cathedral, Chile','44');
insert into dd_du_lich(ten_dddl, link_dddl) values('Đường hầm tình yêu Tunnel of love','45');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cánh đồng muối tuyệt đẹp Salar de Uyuni ở Bolivia:','46');
insert into dd_du_lich(ten_dddl, link_dddl) values('Enchanted Well – Chapada Diamantina National Park (Brazil):','47');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hẻm núi Antelope, Mỹ','48');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang động Fingal, Scotland','49');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hồ bơi khổng lồ Tosua Ocean Trench, Samoa:','50');
insert into dd_du_lich(ten_dddl, link_dddl) values('Rừng tre Sagano ở Nhật Bản','51');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hang động đom đóm ở New Zealand','52');
insert into dd_du_lich(ten_dddl, link_dddl) values('Cầu thang Haiku, ở Oahu, Hawaii:','53');
insert into dd_du_lich(ten_dddl, link_dddl) values('Núi lửa ở bán đảo Kamchatka, Nga:','54');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hố sụt ở bán đảo Yucatan, Mexico','55');
insert into dd_du_lich(ten_dddl, link_dddl) values('Hồ đổi màu trên đỉnh núi Kelimutu ở Indonesia:','56');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thành phố Amsterdam, Hà Lan','57');
insert into dd_du_lich(ten_dddl, link_dddl) values('Quần đảo Azores, Bồ Đào Nha','58');
insert into dd_du_lich(ten_dddl, link_dddl) values( 'Thủ đô Ljubljana, Slovenia','59');
insert into dd_du_lich(ten_dddl, link_dddl) values('Thác Victoria, Cộng hoà Zimbabwe','60');

insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(1,'Vịnh Hạ Long','Không chỉ đẹp bởi cảnh sắc “mây trời sóng nước”, vẻ đẹp nên thơ hay vô số những đảo đá vôi nổi trên mặt nước, Hạ Long còn đem lại cho du khách cảm giác bình yên khi hòa mình vào cảnh vật nơi đây. Được đánh giá là một trong 29 Vịnh đẹp nhất thế giới, cuối tháng 3/2012, tổ chức New Open World cũng đã chính thức công nhận vịnh Hạ Long là một trong bảy kỳ quan thiên nhiên mới của thế giới.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(2,'Cát Bà','Huyện đảo Cát Bà là quần đảo có tới 367 đảo lớn nhỏ. Cát Bà là tên hòn đảo chính rộng khoảng 100 km2, cách cảng Hải Phòng 30 hải lý, nằm ở phía nam Vịnh Hạ Long, tạo nên một quần thể đảo và hang động trên biển làm mê hồn du khách. Đến đây du khách sẽ được tận hưởng không khí trong lành và hoà mình vào thiên nhiên tươi đẹp.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(3,'Đà Lạt','Đà Lạt được ví như một Tiểu Paris, Đà Lạt từng mộng mơ và nên thơ nhờ cái lạnh cao nguyên ban đêm, sương mù buổi sớm và những dải rừng thông bao quanh thành phố. Thiên nhiên ưu đãi cho xứ sở Đà Lạt khí hậu ôn hòa, là thiên đường của rất nhiều loài hoa.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(4,'Cáp treo Vinpearl Nha Trang','Cáp treo Vinpearl Nha Trang là tuyến cáp treo vượt biển vịnh Nha Trang dài 3.320 m, nối Nha Trang với khu du lịch Hòn Ngọc Việt trên đảo Hòn Tre. Đây là tuyến cáp treo vượt biển dài nhất thế giới với sức chứa tám người trên một cabin. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(5,'Hang Sơn Đoòng','Hang Sơn Đoòng rộng 150 m, cao hơn 200 m, kéo dài gần 9km. Với kích thước như thế, hang Sơn Đoòng đã vượt qua hang Deer ở Vườn quốc gia Gunung Mulu - Malaysia (với chiều cao 100 m, rộng 90 m, dài 2km) để chiếm vị trí là hang động tự nhiên lớn nhất thế giới.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(6,'Đảo Phú Quốc','Phú Quốc. Hòn đảo này còn được mệnh danh là Đảo Ngọc, là hòn đảo lớn nhất Việt Nam, cũng là đảo lớn nhất trong quần thể 22 đảo tại vùng vịnh Thái Lan. Đảo Phú Quốc cùng với các đảo khác tạo thành huyện đảo Phú Quốc trực thuộc tỉnh Kiên Giang. Toàn bộ huyện đảo có tổng diện tích 589,23 km vuông.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(7,'bán đảo Sơn Trà','Được mệnh danh là “viên ngọc xanh” của Đà Nẵng, bán đảo Sơn Trà không chỉ cung cấp không khí trong lành thanh mát, mà còn là tấm bình phong khổng lồ chắn bão cho thành phố biển; là một điểm đến có sức cuốn hút và quyến rũ lớn đối với khách du lịch. Khám phá Sơn Trà, du khách có thể chinh phục cả “rừng vàng” và “biển bạc” với rất nhiều thắng cảnh thiên nhiên tuyệt mỹ.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(8,'núi đôi Quản Bạ','Quản Bạ là huyện cửa ngõ nằm về phía tây nam của Công viên địa chất toàn cầu Cao nguyên đá Đồng Văn, tỉnh Hà Giang. Cách thành phố Hà Giang 46 km về phía bắc, vượt qua dốc Bắc Sum cao ngất trong mây là du khách đã đến với cổng trời Quản Bạ. Đứng từ đây có thể ngắm nhìn thị trấn Tam Sơn thơ mộng quanh năm mát mẻ, đặc biệt được tận mắt chiêm ngưỡng núi đôi Quản Bạ tròn trịa, đầy quyến rũ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(9,'Tòa thánh Cao Đài (Tây Ninh)','Tòa thánh Cao Đài (Tây Ninh) được khánh thành vào năm 1955, ở xã Long Thành Bắc, phía bắc TP Hồ Chí Minh. Toàn bộ tòa thánh Cao Đài Tây Ninh bao gồm gần 100 công trình kiến trúc lớn nhỏ khác nhau, được xây bằng bê tông cốt tre. Tòa thánh có 12 cổng, các cổng đều được chạm khắc hình Tứ linh (Long, Lân, Quy, Phụng) và hoa sen. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(10,'Nhà hát lớn Hà Nội','Nhà hát lớn Hà Nội được người Pháp khởi công xây dựng năm 1901 và hoàn thành vào năm 1911, theo mẫu Nhà hát Opéra Garnier (Paris) nhưng mang tầm vóc nhỏ hơn và sử dụng các vật liệu phù hợp với điều kiện khí hậu địa phương. Ngay khi hoàn thành, Nhà hát Lớn đã giữ vai trò như một trung tâm văn hóa quan trọng của thủ đô, diễn ra thường xuyên các hoạt động văn hóa, biểu diễn nghệ thuật.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(11,'Quốc lộ 4D','Quốc lộ 4D xuất phát từ Pa So (điểm giao với quốc lộ 12, thuộc xã Mường So, huyện Phong Thổ, tỉnh Lai Châu), chạy qua Tam Đường (Phong Thổ, Lai Châu) tới Sa Pa (Lào Cai) qua thành phố Lào Cai, Mường Khương và kết thúc ở cửa khẩu Mường Khương (Lào Cai), chiều dài khoảng 160 km. Trên đường đi có thể tham quan một số địa điểm như: Thác Bạc, đèo Ô Quý Hồ... ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(12,'Than Uyên','Đến với Tây Bắc, chắc chắn không thể bỏ qua cảnh quan tuyệt đẹp là ruộng bậc thang trải khắp các bản làng, thung lũng. Than Uyên không chỉ có ruộng bậc thang mà còn có cả những cánh đồng rộng lớn bạt ngàn, tạo nên những sắc mầu đa dạng cho mùa nước đổ nơi đây. Không giống như những vùng khác ở vùng núi phía Bắc, ở Than Uyên có hai vụ lúa trong năm, chính vì vậy du khách có thể ngắm mùa nước đổ vào khoảng tháng 12, tháng 1 hằng năm.','Trong Nước' );
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(13,'Làng An Bằng','Làng An Bằng là một làng sát Biển Đông, thuộc xã Vinh An, huyện Phú Vang, tỉnh Thừa Thiên-Huế. Làng An Bằng (nguyên là An Bình, vì kỵ huý nên đổi ra là An Bường), được hình thành cách đây khoảng 450 năm. Dân làng làm nghề đánh cá biển.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(14,'Côn Đảo','Côn Đảo thu hút du khách bởi những bãi biển tuyệt đẹp và quần thể sinh vật biển phong phú, đặc biệt là san hô. Đây còn là điểm đến lý tưởng để tận hưởng một cuộc sống yên bình cho những ai đang cảm thấy ngột ngạt với nhịp sống hối hả của thành thị.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(15,'thác Bản Giốc','Nhắc đến Bản Giốc là nhắc đến một trong những thác hùng vĩ và đẹp nhất Việt Nam, không những thế còn được xếp hạng vào top những thác thiên đường tuyệt đẹp trên thế giới. Một chuyến du lịch đến thác Bản Giốc sẽ cho du khách những trải nghiệm thú vị và tươi mới.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(16,'Nhà thờ Đức Bà (Sài Gòn)','Nhà thờ Đức Bà (Sài Gòn) là một trong những công trình kiến trúc độc đáo nhất tại Sài Gòn, luôn thu hút sự quan tâm của du khách trong và ngoài nước. Toà thánh đường có chu vi 91 x 35,5 m, cao 21 m. Đây là một công trình kiến trúc thật sự có giá trị rất lớn về mặt lịch sử và nghệ thuật kiến trúc xây dựng.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(17,'Jungle Beach (Khánh Hòa)','Jungle Beach (Khánh Hòa) là nơi nghỉ dưỡng với cảnh sắc hoang sơ với nước biển xanh và cát trắng trải dài. Dù chỉ cách Nha Trang 60 km nhưng Jungle Beach tách biệt hoàn toàn với sự ồn ào, bon chen của thành phố. Nằm trong bán đảo Hòn Hèo, thuộc xã Ninh Phước, huyện Ninh Hòa, tỉnh Khánh Hòa, Jungle Beach chính là sự hòa hợp tuyệt vời giữa rừng và biể','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(18,'Tràng A','Tràng An là khu du lịch sinh thái nằm trong quần thể di sản thế giới Tràng An, thuộc tỉnh Ninh Bình. Nơi đây đã được Chính phủ Việt Nam xếp hạng di tích quốc gia đặc biệt quan trọng và UNESCO công nhận là di sản thế giới kép từ năm 2013, với hệ thống dãy núi đá vôi có tuổi địa chất khoảng 250 triệu năm, qua thời gian dài phong hóa bởi sự biến đổi của trái đất, khí hậu, biển tiến, biển thoái đã mang trong mình hàng trăm thung lũng, hang động, hồ đầm. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(19,'Chùa Linh Phước','Chùa Linh Phước là một trong những danh thắng nổi tiếng của Đà Lạt, là công trình kiến trúc đậm đà bản sắc Á Đông. Với sự kết hợp hài hòa giữa chùa và tháp của lối kiến trúc phương Đông, từ nhiều năm qua, nơi đây luôn là điểm du lịch tâm linh hấp dẫn du khách trong và ngoài nước.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(20,'TP Huế','Tọa lạc hai bên bờ sông Hương, TP Huế là di sản văn hóa thế giới, thuộc tỉnh Thừa Thiên - Huế, sở hữu nhiều di tích lịch sử có giá trị cao nằm trong quần thể di tích cố đô Huế như: Kinh thành Huế, lăng Minh Mạng, lăng Gia Long, chùa Thiên Mụ... Nhã nhạc cung đình là một trong những nét văn hóa đặc sắc của Huế, thu hút đông đảo du khách. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(21,'Ngô Đồng','Ngô Đồng là tên dòng sông nhỏ chảy qua địa phận xã Ninh Hải, huyện Hoa Lư, tỉnh Ninh Bình. Vắt ngang mình giữa hệ thống núi đá vôi xanh rờn. Sông Ngô Đồng là đường thủy duy nhất đưa du khách vào tham quan Tam Cốc - một vùng non nước từng được ví như “Hạ Long trên cạn”.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(22,'Vườn quốc gia Phong Nha - Kẻ Bàng','Vườn quốc gia Phong Nha - Kẻ Bàng là vườn quốc gia tại huyện Bố Trạch, và Minh Hóa (tỉnh Quảng Bình), cách thành phố Đồng Hới khoảng 50 km về phía tây bắc, cách thủ đô Hà Nội khoảng 500 km về phía nam. Được UNESCO công nhận là di sản thiên nhiên thế giới theo tiêu chí địa chất, địa mạo năm 2003; được UNESCO công nhận lần hai là di sản thiên nhiên thế giới với tiêu chí đa dạng sinh học, sinh thái vào năm 2015.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(23,'Thung lũng Bắc Sơ','Thung lũng Bắc Sơn là điểm đến quen thuộc ở Lạng Sơn, thu hút du khách ghé thăm vào mùa cao điểm tháng 7. Thung lũng Bắc Sơn nằm gọn trong dãy núi đá vôi trải dài bên những nếp nhà của người dân tộc Tày, Nùng, Dao. Đứng trên đỉnh Nà Lay, du khách có thể ngắm toàn cảnh thung lũng bao phủ trong màn mây trùng điệp.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(24,'Lăng Khải Định','Lăng Khải Định hay Ứng Lăng là di tích trong quần thể di tích cố đô Huế, thuộc làng Châu Chữ, thị xã Hương Thủy, tỉnh Thừa Thiên - Huế. Đây là nơi yên giấc ngàn thu của Khải Định đế vị vua thứ 12 triều Nguyễn trong lịch sử phong kiến Việt Nam. ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(25,'Vườn quốc gia Cúc Phương','Vườn quốc gia Cúc Phương nằm trên địa phận tỉnh Ninh Bình, cách Hà Nội 120 km về phía tây nam, cách thành phố Ninh Bình 45 km về phía tây bắc. Cúc Phương có diện tích 25 nghìn héc-ta, tiếp giáp ba tỉnh Ninh Bình, Hòa Bình và Thanh Hóa. Khu rừng như một bảo tàng thiên nhiên rộng lớn, nơi lưu giữ hệ động, thực vật rừng trên núi đá vôi phong phú nhất ở Việt Nam. Đến Cúc Phương, du khách được chiêm ngưỡng những cây cổ thụ nghìn năm, những loài chim quý tuyệt đẹp… ','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(26,'Chùa Thiên Mụ','Chùa Thiên Mụ. Còn gọi là chùa Linh Mụ, là ngôi chùa cổ nằm trên đồi Hà Khê, tả ngạn sông Hương, cách trung tâm thành phố Huế khoảng 5km về phía tây. Chùa Thiên Mụ chính thức được xây dựng vào năm Tân Sửu (năm 1601), đời chúa Tiên Nguyễn Hoàng, vị chúa Nguyễn đầu tiên ở Đàng Trong.Với cảnh đẹp tự nhiên và quy mô rộng lớn, chùa Thiên Mụ đã trở thành ngôi chùa đẹp nhất thời bấy giờ. Trải qua bao biến cố lịch sử, chùa Thiên Mụ từng được dùng làm đàn Tế Đất dưới triều Tây Sơn (khoảng năm 1788), rồi được trùng tu nhiều lần dưới các triều vua nhà Nguyễn. Ngày nay chùa vẫn được tiếp tục chỉnh trang ngày càng huy hoàng, tráng lệ và luôn hấp dẫn, thu hút đông đảo du khách gần xa.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(27,'Hồ Hoàn Kiếm','Hồ Hoàn Kiếm. Còn được gọi là Hồ Gươm, là hồ nước ngọt tự nhiên của thành phố Hà Nội, hồ có diện tích khoảng 12 hecta. Trước kia, hồ còn có các tên gọi là: hồ Lục Thủy, hồ Thủy Quân, hồ Tả Vọng và Hữu Vọng, tên gọi Hoàn Kiếm xuất hiện vào đầu thế kỷ XV gắn với truyền thuyết vua Lê Thái Tổ trả gươm báu cho Rùa thần.Hồ Hoàn Kiếm được gắn liền với truyền thuyết huyền sử, là biểu tượng khát khao hòa bình, đức văn tài võ trị của dân tộc Việt Nam. Do vậy, đã có rất nhiều văn nghệ sĩ đã lấy hình ảnh Hồ Gươm làm nền tảng cho các tác phẩm của mình.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(28,'Hội An','Thành phố Hội An nằm bên bờ Bắc hạ lưu sông Thu Bồn, cách thành phố Đà Nẵng khoảng 25km về phía Đông Nam, cách thành phố Tam Kỳ khoảng 50km về phía Đông Bắc. Từ thế kỷ XVI, XVII nơi đây đã nổi tiếng với tên gọi Faifoo, là nơi giao thương và là trung tâm buôn bán lớn của các thương nhân Nhật Bản, Trung Quốc, Bồ Ðào Nha, Italia… ở Đông Nam Á.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(29,'Mũi Né','Mũi Né. Là một trung tâm du lịch nổi tiếng vùng Nam Trung Bộ, cách trung tâm thành phố Phan Thiết (tỉnh Bình Thuận) 22km về hướng Đông Bắc, nơi đây là một dải bờ biển xanh hoang vu với các đồi cát đỏ trải dài như sa mạc và những làng chài xứ biển thuần chất Việt Nam.Mũi Né còn hấp dẫn du khách bởi nhiều di tích lịch sử - văn hóa của một nền văn hóa đa dạng, đa dân tộc như Kinh, Chăm, Hoa, tiêu biểu có các tháp Chăm, tháp Nước, chùa Ông, chùa bà Thiên Hậu, Vạn Thủy Tú và nhiều di tích khác có giá trị về văn hóa, lịch sử, du lịch.','Trong Nước');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(30,' Địa đạo Củ Chi','Địa đạo Củ Chi. Là hệ thống phòng thủ trong lòng đất ở huyện Củ Chi, vùng đất được mệnh danh là "đất thép", cách Thành phố Hồ Chí Minh 70km về hướng Tây - Bắc. Hệ thống này được Mặt trận Dân tộc Giải phóng miền Nam Việt Nam xây dựng trong thời kỳ Chiến tranh Đông Dương và Chiến tranh Việt Nam.','Trong Nước');

insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(31,'Vùng núi Zhangye Danxia, tỉnh Cam Túc, Trung Quốc','Nếu không thật sự đặt chân tới địa điểm này, bạn sẽ cho rằng những hình ảnh trước mắt mình là một tác phẩm photoshop. Thế nhưng đây quả thật là phong cảnh tuyệt đẹp có một không hai mà mẹ thiên nhiên ưu ái ban tặng cho vùng núi Zhangye Danxia, Trung Quốc. Khách du lịch sẽ nhìn thấy những vệt đủ màu sắc từ đỏ, vàng, cam cho tới xanh lục, tím, nâu… Kiệt tác đẹp ngoài sức tưởng tượng này là do các yếu tố tự nhiên như mưa, gió, sự xói mòn, quá trình oxy hoá kết hợp với các yếu tố khoáng chất tạo ra những mảng màu sắc độc đáo khác nhau','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(32,' Nơi ‘tận cùng thế giới’ ở Banos, Ecuador','Đây là một trong những điểm du lịch không dành cho người yếu tim bởi bạn sẽ được ngồi trên một chiếc xích đu tận cùng thế giới và đánh đu trên vực núi sâu mà không dùng bất cứ biện pháp bảo vệ nào. Nhưng trước khi ngồi được lên chiếc đu quay ‘tử thần’ này, bạn cần phải men theo con đường mòn đến Bellavista từ vách Banos, Ecuador để đến điểm quan sát tại một trạm theo dõi địa chấn có tên ‘La Casa del Arbel’ – một ngôi nhà nhỏ nằm trên một cái cây nhỏ sát bên hẻm núi.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(33,' Hố xanh vỹ đại ở Belize','‘Hố xanh vĩ đại’ là một hố sâu nằm dưới mặt biển ngoài khơi bờ biển Belize, là một phần của khu bảo tồn san hô Belize Barrier, khu vực được UNESCO công nhận là di sản thiên nhiên của nhân loại. Được bao quanh bởi một rặng san hô dài 70 km, hố này rộng đến 300m và sâu khoảng 124m. Sự kỳ vĩ và tráng lệ của nơi đây khiến mọi du khách đều phải trầm trồ, thán phục.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(34,'Cánh đồng hoa tulip Hà Lan','Hà Lan luôn được mệnh danh là quê hương của loài hoa kiêu sa tuyệt đẹp – tulip. Nơi đây có những cánh đồng hoa tulip ngập tràn màu sắc, trải dài bất tận tạo nên những bức tranh muôn màu sắc, đẹp ngoài sức tưởng tượng của con người. Mùa hoa tulip bắt đầu từ cuối tháng 3 tới khoảng đầu tháng 8. Vào thời điểm này, những bông hoa với đủ màu sắc tím, hồng, đỏ, vàng… đua nhau nở, giống như những suối hoa rực rỡ muôn màu. Cách tốt nhất để chiêm ngưỡng những cánh đồng hoa là ngắm toàn cảnh từ trực thăng.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(35,'Thiên đường hoa ở công viên Hitachi Seaside','Công viên Hitachi Seaside là một trong những điểm du lịch “vàng” của đất nước Nhật Bản. Với diện tích 3,5ha, nơi đây có rất nhiều ngọn đồi, mỗi ngọn đồi là mỗi loại hoa khác nhau, thay phiên khoe sắc suốt 4 mùa trong năm. Công viên này đặc biệt nổi tiếng với hoa nemophilas – loài hoa năm cánh màu xanh trong suốt. Trong mùa xuân, hơn 4,5 triệu cây hoa nemophilas xanh sẽ đua nhau nở rộ trong công viên tạo nên cảnh đẹp “độc nhất vô nhị”.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(36,'Hang động băng Mendenhall, Alaska, Mỹ:','Nhắc tới Alaska, người ta không chỉ nghĩ tới những dòng sông băng trải dài bất tận, ẩn giấu trong mình vẻ đẹp kỳ ảo, lôi cuốn mà còn tưởng tượng tới những hang động băng huyền bí và đẹp  lung linh. Một trong số đó chính là hang động băng Mendenhall. Nơi đây là một trong những địa điểm mà bất kỳ ai cũng mong muốn được đặt chân tới và tận mắt ngắm nhìn vẻ đẹp kỳ vĩ của tạo hoá. Không chỉ mang một vẻ đẹp thuần túy của thiên nhiên, hang động băng này còn giúp các nhà khoa học có một cái nhìn tổng quát hơn về điều kiện khí hậu trong quá khứ, hiện tại và tương lai của những vùng đất cực bắc nước Mỹ.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(37,' Ngọn núi Roraima nằm giữa Venezuela, Brazil và Guyana','Ngọn núi có đỉnh bằng kỳ lạ Roraima là ngọn núi có đỉnh bằng cao nhất và nổi tiếng nhất Venezuela, đồng thời ngọn núi này được xem như là biên giới giữa ba quốc gia Venezuela, Brazil và Guyana. Ngọn núi thuộc địa phận Vườn Quốc Gia Canaima với diện tích của toàn khu vực là 30.000km2, là nơi chứa và tạo ra nhiều địa chất lâu đời nhất thế giới; có niên đại vào khoảng 2 tỷ năm trước.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(38,'Khu vực Cappadocia, Thổ Nhĩ Kỳ','Cappadocia là khu vực lịch sử thuộc khu vực trung tâm Anatolia của Thổ Nhĩ Kỳ, nổi tiếng về cảnh quan thiên nhiên ấn tượng nhất ở châu Âu. Nơi đây được hình thành từ lớp đá trầm tích và đá núi lửa – kết quả của vụ phun trào xảy ra khoảng 3 triệu năm trước đây. Trải qua hàng ngàn năm, những tác động của thiên nhiên: mưa, gió và nước sông đã khiến cho các lớp đá sa thạch và các khối đá mềm bị bào mòn dữ dội và tạo thành hàng trăm trụ cột đá ngoạn mục trong hình dạng của một tòa tháp, hình nón, hình ống khói, đạt đến tầm cao 40m, khiến nhìn từ trên cao, khu vực này trông tương tự như địa hình trên mặt trăng.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(39,'Bãi biển sao trên đảo Vaadhoo, Mandives','Nhiều người cho rằng cảnh tượng những sinh vật nhỏ xíu phát sáng trên bãi biển như hàng ngàn ngôi sao lấp lánh chỉ xuất hiện trong những bộ phim khoa học viễn tưởng hay những câu chuyện cổ tích. Song trên thực tế, bãi biển phát sáng trên hoàn toàn có thật ở Mandives. Nước biển phát sáng do các sinh vật phù du có khả năng phát quang xuất hiện với mật độ cao trong nước. Chính sự xuất hiện của những loài sinh vật này đã tạo nên một cảnh đẹp ngoài sức tưởng tượng cho bãi biển nơi đây.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(40,'Thác nước Victoria','Với độ cao khoảng 108m và nằm giữa biên giới Zimbabwe và Zambia, thác nước Victoria được biết tới là thác nước lớn nhất châu Phi. Nơi đây là một trong những điểm du lịch hấp dẫn và nổi tiếng nhất Zimbabwe mà du khách không thể bỏ qua khi có cơ hội đến châu Phi. Sự giao thoa giữa núi đá, sông nước, mây trời và những cánh rừng rậm bao quanh khu vực đã tạo nên một khung cảnh thiên nhiên đẹp hoàn hảo và ngoạn mục.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(41,'Trolltunga ở Hordaland, Na Uy','Thêm một điểm du lịch nữa dành cho những du khách ưa mạo hiểm bởi Trolltunga là khu vực nằm trên rìa vách núi, cách mực nước biển hơn 600m và du khách chỉ có thể đi bộ ra ngoài khu vực này trong khoảng thời gian từ tháng 6 đến tháng 9.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(42,'Bãi biển Whitehaven, Australia','Bờ biển Whitehaven là một trong những địa điểm mà khách du lịch không thể bỏ qua khi tới với đất nước Australia. Làn nước trong xanh như pha lê và bãi cát trắng nhất thế giới, trải dài 7km là những viên ngọc quý mà tạo hóa ban tặng cho hòn đảo Whitsunday, đảo lớn nhất trong 74 đảo thuộc đất nước Kangaroo này.Từ trên cao nhìn xuống, bãi biển Whitehaven đẹp ngoài sức tưởng tượng của con người.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(43,'Vườn quốc gia Grand Canyon, bang Arizona, Mỹ','Grand Canyon có diện tích gần 5.000 km2 là một trong những điểm du lịch nổi tiếng nhất thế giới. Nơi đây có những hẻm núi với đủ màu sắc từ nâu, đỏ, cam tới vàng tạo nên một khung cảnh rực rỡ và kỳ thú dưới ánh mặt trời.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(44,'Hang động cẩm thạch Marble Cathedral, Chile','Động cẩm thạch Marble Cathedral tọa lạc  hồ General Carrera ở Pantagonia, Chile được hình thành từ hàng nghìn năm, nhờ quá trình bào mòn của tự nhiên, tạo nên những hẻm hốc và hang động vô cùng ấn tượng. Có thể nói rằng, hiếm có một tác phẩm nghệ thuật điêu khắc nào có thể so sánh với vẻ đẹp tuyệt mỹ của hang động được xem là một trong những kỳ quan thiên nhiên đẹp nhất thế giới này.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(45,'Đường hầm tình yêu Tunnel of love','Đây là một trong những đường hầm xe lửa đẹp nhất thế giới, thuộc thành phố Klevan của Ukraine. Nơi đây được bao phủ hoàn toàn bởi cây cối dày đặc tạo nên một khung cảnh tuyệt đẹp xuyên suốt 4 mùa trong năm. Ngay cả trong mùa đông lạnh giá, đường hầm tình yêu cũng mang một vẻ đẹp rất lãng mạn khi những bông tuyết trắng li ti bám lên những cành cây khẳng khiu. Phần lớn khách du lịch tới nơi đây đều là những cặp đôi đang yêu, họ đến để trao cho nhau những nụ hôn ngọt ngào giữa thiên nhiên, gửi gắm những điều ước cho tình yêu vĩnh cữu.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(46,'Cánh đồng muối tuyệt đẹp Salar de Uyuni ở Bolivia','Salar de Uyuni là cánh đồng muối tự nhiên lớn nhất thế giới được hình thành do sự vận động của vỏ trái đất. Trong những tháng mùa đông, khu vực này hoàn toàn khô ráo. Tuy nhiên, khi mùa hè đến, cánh đồng lại luôn ngập nước, biến thành tấm gương soi khổng lồ.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(47,'Enchanted Well – Chapada Diamantina National Park (Brazil)','Enchanted Well nằm trong khuôn viên của công viên quốc gia Chapada Diamantina ở Bahia, Brazil. Nơi đây giống như một hồ bơi khổng lồ với độ sâu khoảng 41m, làn nước xanh ngắt. trong veo như một tảng băng tạo nên một khung cảnh tuyệt đẹp.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(48,'Hẻm núi Antelope, Mỹ','Nằm ở vùng đất Navajo gần Page, Arizona, Antelope Canyon là một trong những hẻm núi thu hút nhiều người tham quan và chụp ảnh. Nơi đây được coi là một tác phẩm chạm khắc điêu luyện mà thiên nhiên ban tặng cho nước Mỹ và là viên ngọc có sức mạnh ma thuật, huyền bí, cuốn hút lớn đối với những ai đã từng được chiêm ngưỡng vẻ đẹp ấy.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(49,'Hang động Fingal, Scotland','Hang động biển Fingal nằm trên hòn đảo Staffa ở Scotland là một trong những điểm du lịch mà bạn không thể bỏ qua. Theo các nhà địa chất, hang Fingal được hình thành do dung nham nóng chảy kết hợp với hiện tượng xói mòn tạo nên một bức tranh điêu khắc cuốn hút đến kỳ lạ.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(50,'Hồ bơi khổng lồ Tosua Ocean Trench, Samoa','Tosua Ocean Trench nằm gần Lotofaga, một ngôi làng trên bờ biển phía nam của hòn đảo Upolu, Samoa có độ sâu khoảng 30m. Điểm đặc biệt nhất của hồ bơi này chính là bạn cần phải leo xuống một cầu thang dài để tới với hồ bơi tự nhiên khổng lồ này.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(51,'Rừng tre Sagano ở Nhật Bản','Nằm ở quận Arashiyama, Nhật Bản, rừng tre Sagano là một điểm đến tuyệt vời cho những người yêu thích vẻ đẹp của thiên nhiên. Với những rặng tre bạt ngàn và thẳng tắp, nơi đây thu hút hàng triệu lượt du khách trong và ngoài nước tới tham quan mỗi năm. Tới với nơi đây, bạn không chỉ được ngắm những rặng tre thẳng tắm, cao vút mà còn được tận hưởng bầu không khí trong lành và hoà mình vào với cuộc sống thiên nhiên tươi đẹp.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(52,'Hang động đom đóm ở New Zealand','Hang động Waitomo Glowworm thuộc đảo Bắc, New Zealand nổi tiếng với vô vàn những con đom đóm phát sáng kỳ diệu. Ánh sáng kỳ ảo tuyệt đẹp như hàng ngàn ngôi sao bên trong động khiến bất cứ ai có dịp được đặt chân tới nơi đây đều phải ồ lên kinh ngạc.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(53,'Cầu thang Haiku, ở Oahu, Hawaii:','Các bậc thang Haiku ở Hawaii được mệnh danh là “Nấc thang lên thiên đường”. Leo lên các bậc thang này là một trải nghiệm thú vị giữa chinh phục đỉnh cao với địa hình gồ ghề trơn trượt và khám phá thiên nhiên tươi đẹp.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(54,'Núi lửa ở bán đảo Kamchatka, Nga','Bán đảo Kamchatka hiện chứa khoảng 160 núi lửa, trong số đó 29 núi vẫn còn hoạt động và 19 núi lửa đang hoạt động đã được UNESCO đưa vào danh sách Di sản thế giới. Núi lửa cao nhất Kljuchevskaia Sopka sở hữu “hình nón hoàn hảo” là một trong những ứng cử viên sáng giá cho vị trí núi lửa đẹp nhất thế giới.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(55,'Hố sụt ở bán đảo Yucatan, Mexico','Hố sụt tự nhiên xuất hiện ở bán đảo Yucatan là kết quả của sự sụp đổ những tảng đá vôi xốp do tác động của nguồn nước ngầm ở phía dưới. Nguồn nước ở đây trong vắt, tinh khiết, bắt nguồn từ những trận mưa ngấm dần xuống lớp đá vôi hình thành những giọt nước rơi xuống.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(56,'Hồ đổi màu trên đỉnh núi Kelimutu ở Indonesia','Kelimutu là một ngọn núi lửa nhỏ nổi tiếng ở đảo Flores, Indonesia. Điều ấn tượng nhất là trên đỉnh của ngọn núi lửa này có ba hồ được hình thành từ các miệng núi lửa có màu sắc rất độc đáo. Dù cùng nằm trên đỉnh của một ngọn núi lửa, nhưng nước trong các hồ này lại thay đổi màu sắc một cách định kỳ khác nhau từ đỏ và nâu sang màu ngọc lam và xanh lục tạo nên một cảnh sắc tuyệt đẹp.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(57,'Thành phố Amsterdam, Hà Lan','Nếu bạn đã lên kế hoạch một chuyến đi châu Âu trong năm 2018 này, bạn chắc chắn không thể bỏ qua thành phố Amsterdam – một trong những thành phố xinh đẹp bậc nhất của đất nước Hà Lan.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(58,'Quần đảo Azores, Bồ Đào Nha','Azores là một quần đảo nằm giữa Đại Tây Dương. Vị trí địa lý tương đối hiểm trở nên nơi đây không đông đúc du khách như nhiều địa điểm du lịch khác. Cũng chính điều này, nếu bạn đang tìm kiếm một vùng đất mới để khám phá, Azores nên là cái tên “top-of-mind” đấy.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(59,'Thủ đô Ljubljana, Slovenia','Vùng Đông Âu của Slovenia ít nhiều chịu ảnh hưởng của sự lịch lãm nhưng phóng khoáng từ những người bạn nước Ý thân cận. Và thủ đô Ljubljana không nằm ngoài sự giao thoa văn hoá này.','Nước Ngoài');
insert into ctdddl(id_dddl,tieu_de_dddl, noi_dung_dddl,chu_de) values(60,'Thác Victoria, Cộng hoà Zimbabwe','Thác Victoria được xem là một trong những kỳ quan tuyệt vời nhất của thiên nhiên với thảm nước hùng vĩ trên những vách đá cao đến 108 mét. Ngắm nhìn thác nước Victoria từ trên cao, bạn mới trải nghiệm được hết khung cảnh thiên nhiên đồ sộ và tuyệt vĩ này.','Nước Ngoài');

insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(1,2,4,'Tốt,Hài lòng');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(2,1,3,'Bình thường');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(2,2,3,'Trung bình');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(3,1,5,'Rất Tốt');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(3,2,4,'Khá ổn');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(4,1,5,'Tốt');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(5,2,1,'Không Tốt');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(6,4,1,'Rất kém');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(7,2,5,'Hài lòng');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(1,5,5,'hoàn hảo');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(8,6,5,'Tốt');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(9,10,1,'kém');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(10,10,3,'trung; bình');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(1,1,4,'khá ổn');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(11,7,5,'Tuyệt vờ;i');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(12,6,5,'Rất tuyệt vời');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(12,9,4,'Tốt');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(14,7,3,'Trung bình');
insert into ctdgdddl( id_dddl,id_tk, so_sao_dddl,binh_luan_dddl) values(15,8,2,' không Tốt');

/*
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,1,5,'Tốt, Rất ưng ý');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,2,4,'Tốt,Hài lòng');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(2,1,3,'Bình thường');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(2,2,3,'Trung bình');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,1,5,'Rất Tốt');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,7,4,'Khá ổn');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(2,2,5,'Tốt');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,2,1,'Không Tốt');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(2,4,1,'Rất kém');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,2,5,'Hài lòng');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(2,5,5,'hoàn hảo');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,6,5,'Tốt');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,10,1,'kém');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,10,3,'trung bình');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,3,4,'khá ổn');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(2,7,5,'Tuyệt vời');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(2,6,5,'Rất tuyệt vời');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(2,9,4,'Tốt');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,7,3,'Trung bình');
insert into ctdgdv( id_dv,id_tk, so_sao_dv,binh_luan_dv) values(1,8,2,' không Tốt');
*/