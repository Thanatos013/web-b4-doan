------------------------------------------
|		Hướng dẫn cài đặt			|
|	(Sửa lại connection string)		|
------------------------------------------
Bước 1: Chạy file script WEBRAOVAT.sql để tạo CSDL.
Bước 2:
- Cách 1: Vào RaoVatDataClasses.dbml, mở server explorer, Data connection, chọn add connection để kết nối CSDL vừa tạo.
- Cách 2: Vào web.config, sửa lại chuỗi kết nối trong tag connectionStrings.
Bước 3: build ứng dụng.
Bước 4: chạy ứng dụng.
Trong quá trình cài đặt nếu gặp bất kỳ vấn đề gì vui lòng email tới: phntien@yahoo.com.vn.

------------------------------------------
|		MaLoaiNguoiDung = 01		|
|	TenLoaiNguoiDung = Quản trị viên	|
------------------------------------------
--> Có quyền sửa hay xóa bất kỳ tin nào.
MaNguoiDung = 1
TenNguoiDung = admin
MatKhau = admin

------------------------------------------
|		MaLoaiNguoiDung = 02		|
|	TenLoaiNguoiDung = Thành viên VIP	|
------------------------------------------
--> Ưu tiên thứ tự xuất hiện tin.
MaNguoiDung = 2
TenNguoiDung = vipone
MatKhau = vipone

MaNguoiDung = 3
TenNguoiDung = viptwo
MatKhau = viptwo

MaNguoiDung = 4
TenNguoiDung = vipthree
MatKhau = vipthree

MaNguoiDung = 5
TenNguoiDung = vipfour
MatKhau = vipfour

------------------------------------------
|		MaLoaiNguoiDung = 01		|
|   TenLoaiNguoiDung = Thành viên thường	|
------------------------------------------
MaNguoiDung = 7
TenNguoiDung = userone
MatKhau = userone

MaNguoiDung = 8
TenNguoiDung = usertwo
MatKhau = usertwo

MaNguoiDung = 9
TenNguoiDung = userthree
MatKhau = userthree

MaNguoiDung = 10
TenNguoiDung = userfour
MatKhau = userfour

MaNguoiDung = 11
TenNguoiDung = userfive
MatKhau = userfive

MaNguoiDung = 12
TenNguoiDung = usersix
MatKhau = usersix

------------------------------------------
|  Tên và pass để test các tin rao vặt  	|
| 	(Tên và pass giống nhau)		|
------------------------------------------

TinRaoVatThuong: 3 tin
	1. Cây cảnh: usertwo
	2. Ếch: usertwo
	3. Đầu tư: usertwo

TinRaoVatBatDongSan: 2 tin
	1. Tin 1: vipone
	2. Tin 2: vipone

HoSoTuyenDung: 1 tin
	1. Tin 1: userthree

TinTuyenDung: 1 tin
	1. Tin 1: viptwo

------------------------------------------
|  			Gửi email  			|
|       	     (Dùng gmail)			|
------------------------------------------

Email address: araovat10@gmail.com
Password: b4123456789
