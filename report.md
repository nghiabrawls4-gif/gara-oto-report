# Báo cáo đồ án cuối kỳ
**Trường:** Đại học Thủy Lợi  
**Môn:** Cơ sở dữ liệu  
**Đề tài:** Hệ thống quản lý gara ô tô  

**Nhóm 2:**
- Lê Đức Mình
- Đỗ Thái Linh
- Nguyễn Tuấn Nghĩa
- Vũ Đức Mạnh
- Nguyễn Chí Minh

**Giáo viên hướng dẫn:** Nguyễn Ngọc Quỳnh Châu  
**Năm học:** 2025-2026

---

# Lời nói đầu

Nhóm em thực hiện đồ án “Hệ thống quản lý gara ô tô” nhằm áp dụng các kiến thức đã học trong môn Cơ sở dữ liệu, từ phân tích bài toán, xác định thực thể, thiết kế mối quan hệ, chuyển mô hình ER sang mô hình quan hệ, chuẩn hóa dữ liệu, cho đến việc cài đặt trên SQL Server và thực hiện truy vấn SQL. Đây là đề tài rất gần gũi với thực tế, bởi gara ô tô luôn cần quản lý khách hàng, xe, dịch vụ sửa chữa, phụ tùng, hóa đơn, nhân viên và doanh thu theo cách khoa học, rõ ràng và đảm bảo tính nhất quán.

Mục tiêu của đồ án không chỉ dừng lại ở việc hoàn thành bài tập lý thuyết, mà còn rèn luyện khả năng tư duy thiết kế cơ sở dữ liệu đúng chuẩn. Nhóm em đã cố gắng mô tả từ giai đoạn phân tích nghiệp vụ cho đến thiết kế mô hình dữ liệu và cài đặt hệ thống trên môi trường quản trị CSDL. Đặc biệt, hệ thống được thiết kế để dễ theo dõi, dễ quản lý và thuận tiện cho việc báo cáo, thống kê, cập nhật dữ liệu.

Báo cáo này trình bày các phần chính: giới thiệu bài toán, phân tích nghiệp vụ, thiết kế mô hình ER, chuyển đổi sang mô hình quan hệ, kiểm tra chuẩn hóa BCNF, cài đặt CSDL và một số truy vấn SQL minh họa. Các file SQL được tách riêng theo từng phần và lưu trong repository để tiện cho việc xem, sửa và chạy.

---

# Mục lục
1. Chương 1: Giới thiệu bài toán  
2. Chương 2: Phân tích và thiết kế cơ sở dữ liệu  
   2.1 Mục đích hệ thống  
   2.2 Đối tượng quản lý  
   2.3 Các nghiệp vụ chính  
   2.4 Các quy tắc nghiệp vụ  
   2.5 Xác định thực thể và thuộc tính  
   2.6 Mối liên kết giữa các thực thể  
   2.7 Mô hình ER  
   2.8 Chuyển đổi ER sang mô hình quan hệ  
   2.9 Phụ thuộc hàm và kiểm tra BCNF  
3. Chương 3: Cài đặt và khai thác CSDL  
   3.1 Tạo cơ sở dữ liệu  
   3.2 Tạo bảng và ràng buộc  
   3.3 Nhập dữ liệu mẫu  
   3.4 Thao tác DML minh họa  
   3.5 Truy vấn SQL minh họa  
4. Kết luận  
5. Tài liệu tham khảo  

---

# Chương 1. Giới thiệu bài toán

## 1.1 Bối cảnh và lý do chọn đề tài

Gara ô tô là nơi thực hiện các hoạt động sửa chữa, bảo dưỡng, thay phụ tùng và chăm sóc xe cho khách hàng. Trong quá trình vận hành, gara phải xử lý rất nhiều loại dữ liệu như:
- thông tin khách hàng;
- thông tin xe;
- đơn sửa chữa;
- chi tiết dịch vụ;
- phụ tùng sử dụng;
- hóa đơn thanh toán;
- nhân viên phục vụ;
- doanh thu theo thời gian.

Nếu quản lý thủ công hoặc không có một hệ thống lưu trữ dữ liệu chuẩn, gara dễ gặp các vấn đề như:
- sai lệch thông tin khách hàng hoặc biển số xe;
- thiếu kiểm soát lịch tiếp nhận và trạng thái xe;
- khó theo dõi phụ tùng và tồn kho;
- lỗi trong tính trị giá hóa đơn;
- khó thống kê doanh thu và báo cáo theo ngày/tháng;
- thiếu tính đồng nhất và toàn vẹn dữ liệu.

Vì vậy, thiết kế hệ thống quản lý gara ô tô theo hướng cơ sở dữ liệu là cần thiết và phù hợp với thực tế. Hệ thống này không chỉ giúp gara lưu trữ thông tin mà còn hỗ trợ quản lý, báo cáo và ra quyết định.

## 1.2 Mục tiêu của hệ thống

Hệ thống quản lý gara ô tô được thiết kế với các mục tiêu chính sau:
- quản lý thông tin khách hàng và xe;
- quản lý đơn sửa chữa và trạng thái xử lý;
- quản lý loại dịch vụ và phụ tùng;
- theo dõi lượng tồn kho và phụ tùng đã sử dụng;
- lập hóa đơn và quản lý thanh toán;
- thống kê doanh thu theo thời gian và loại dịch vụ.

## 1.3 Đối tượng quản lý
Hệ thống quản lý các đối tượng chính:
- Khách hàng
- Xe
- Loại dịch vụ
- Đơn sửa chữa
- Chi tiết đơn sửa chữa
- Phụ tùng
- Nhân viên
- Hóa đơn

## 1.4 Các nghiệp vụ chính
- Tiếp nhận xe của khách
- Khảo sát, chẩn đoán và lập đơn sửa chữa
- Ghi nhận các dịch vụ sửa chữa
- Ghi nhận phụ tùng sử dụng trong từng đơn
- Cập nhật trạng thái đơn hàng
- Lập hóa đơn và thanh toán
- Báo cáo doanh thu và thống kê

---

# Chương 2. Phân tích và thiết kế CSDL

## 2.1 Yêu cầu nghiệp vụ chung
- Lưu trữ thông tin khách hàng (họ tên, SĐT, email, địa chỉ).
- Lưu trữ thông tin xe (mỗi xe thuộc một khách hàng; biển số duy nhất).
- Ghi nhận đơn sửa chữa khi khách mang xe đến (ngày tiếp nhận, trạng thái, ghi chú).
- Ghi nhận chi tiết từng hạng mục trong một đơn (mã loại dịch vụ, đơn giá áp dụng, số lượng).
- Lưu phụ tùng tồn kho và cho biết phụ tùng nào được dùng cho từng hạng mục sửa chữa (để audit và trừ tồn).
- Lập hóa đơn cho một đơn sửa chữa (một đơn có tối đa một hóa đơn).
- Quản lý nhân viên (ai lập hóa đơn, ai sửa chữa).
- Thống kê/truy vấn: xe đang sửa, doanh thu theo tháng, top khách hàng, phụ tùng dùng nhiều nhất.

## 2.2 Yêu cầu chức năng (Functional)
- Thêm/sửa/xóa/tra cứu Khách hàng, Xe, Nhân viên, Loại dịch vụ, Phụ tùng.
- Tạo/cập nhật RepairOrder (tiếp nhận, chuyển trạng thái, hoàn thành).
- Thêm RepairDetail cho RepairOrder.
- Ghi UsageParts cho từng RepairDetail; trước khi dùng phụ tùng, hệ thống kiểm tra tồn kho.
- Tạo hóa đơn (Invoice) dựa trên RepairOrder và RepairDetail + UsageParts.
- Thống kê/báo cáo theo thời gian, theo dịch vụ, theo phụ tùng.

## 2.3 Yêu cầu không chức năng (Non-functional)
- Toàn vẹn dữ liệu: khóa chính/khóa ngoại, ràng buộc CHECK, transaction khi thay đổi tồn kho.
- Hiệu năng: tạo index trên các cột truy vấn thường xuyên (MaDon, MaKH, NgayLap, MaPT).
- Khả năng mở rộng: mô hình cho phép mở rộng trường thông tin hoặc thêm trạng thái.
- Dễ dùng: dữ liệu mẫu rõ ràng để kiểm thử.

## 2.4 Phân tích thực thể & thuộc tính (Entity + Attributes)
(Lưu ý: PK = khóa chính, FK = khóa ngoại, UK = unique)

- Customer (PK: MaKH)
  - MaKH, TenKH, SDT, Email, DiaChi

- Vehicle (PK: MaXe)
  - MaXe, BienSo (UK), MaKH (FK → Customer.MaKH), HangXe, Model, NamSX

- ServiceType (PK: MaLoai)
  - MaLoai, TenLoai, DonGia, MoTa

- RepairOrder (PK: MaDon)
  - MaDon, MaKH (FK → Customer.MaKH), MaXe (FK → Vehicle.MaXe), NgayTiepNhan, NgayHoanThanh, TrangThai, GhiChu

- RepairDetail (PK: MaDon, STT)
  - MaDon (FK → RepairOrder.MaDon), STT (số thứ tự trong đơn), MaLoai (FK → ServiceType.MaLoai), DonGia, SoLuong

- SparePart (PK: MaPT)
  - MaPT, TenPT, DonGia, SoLuongTon, NhaCungCap

- UsageParts (PK: MaDon, STT, MaPT) — bảng trung gian để theo dõi phụ tùng đã dùng
  - MaDon (FK → RepairDetail.MaDon), STT (FK → RepairDetail.STT), MaPT (FK → SparePart.MaPT), SoLuong

- Mechanic (PK: MaNV)
  - MaNV, TenNV, ChucVu, SDT

- Invoice (PK: MaHD)
  - MaHD, MaDon (UNIQUE, FK → RepairOrder.MaDon), MaNV (FK → Mechanic.MaNV), NgayLap, TriGia, DaThanhToan

## 2.5 Quy tắc nghiệp vụ & ràng buộc
- Mỗi Vehicle.MaXe duy nhất; Vehicle.BienSo cũng phải UNIQUE.
- RepairOrder.TrangThai ∈ {Received, InProgress, Completed, Cancelled}.
- NgayHoanThanh >= NgayTiepNhan nếu NgayHoanThanh không NULL.
- RepairDetail.SoLuong > 0; ServiceType.DonGia, SparePart.DonGia, Invoice.TriGia >= 0.
- Invoice.MaDon UNIQUE (một RepairOrder chỉ có một Invoice).
- Trước khi thêm UsageParts, phải kiểm tra SoLuongTon của SparePart; nếu đủ thì chấp nhận và trừ tồn (transaction sử dụng UPDLOCK/HOLDLOCK hoặc stored-proc).
- Không xóa SparePart nếu đang tham chiếu trong UsageParts (hoặc dùng ON DELETE RESTRICT).

## 2.6 Mối liên kết (Cardinality)
- Customer 1 — N Vehicle (1 khách nhiều xe)
- Customer 1 — N RepairOrder (1 khách nhiều đơn)
- Vehicle 1 — N RepairOrder (1 xe nhiều đơn theo thời gian)
- RepairOrder 1 — N RepairDetail (một đơn chứa nhiều mục dịch vụ)
- ServiceType 1 — N RepairDetail (một loại dịch vụ áp dụng cho nhiều RepairDetail)
- RepairDetail 1 — N UsageParts (một mục dịch vụ có thể dùng nhiều phụ tùng)
- SparePart 1 — N UsageParts (một phụ tùng có thể xuất hiện trong nhiều UsageParts)
- RepairOrder 1 — 0..1 Invoice (một đơn có thể có hoặc chưa có hóa đơn; khi có thì 1 hóa đơn)
- Mechanic 1 — N Invoice (1 nhân viên có thể lập nhiều hóa đơn)

## 2.7 Chuyển ER → mô hình quan hệ (mapping)
- Mỗi thực thể → 1 bảng (Customer → Customer, Vehicle → Vehicle, ...)
- Quan hệ 1-N → thêm FK ở phía N (Vehicle.MaKH FK → Customer.MaKH).
- Quan hệ N-M → tạo bảng trung gian (UsageParts là trung gian giữa RepairDetail và SparePart).
- Quan hệ 1-1 → thực hiện bằng UNIQUE trên FK (Invoice.MaDon UNIQUE).

## 2.8 Phụ thuộc hàm (FDs) chính
- MaKH -> TenKH, SDT, Email, DiaChi
- MaXe -> BienSo, MaKH, HangXe, Model, NamSX
- MaLoai -> TenLoai, DonGia, MoTa
- MaDon -> MaKH, MaXe, NgayTiepNhan, NgayHoanThanh, TrangThai, GhiChu
- (MaDon, STT) -> MaLoai, DonGia, SoLuong
- MaHD -> MaDon, MaNV, NgayLap, TriGia, DaThanhToan
- MaPT -> TenPT, DonGia, SoLuongTon, NhaCungCap
- MaNV -> TenNV, ChucVu, SDT
- (MaDon, STT, MaPT) -> SoLuong

## 2.9 Kiểm tra chuẩn hóa — BCNF (luận chứng)
- Customer: MaKH là khóa ⇒ mọi FD có vế trái là khóa ⇒ BCNF.
- Vehicle: MaXe là khóa ⇒ BCNF.
- ServiceType: MaLoai là khóa ⇒ BCNF.
- RepairOrder: MaDon là khóa ⇒ BCNF.
- RepairDetail: (MaDon, STT) là khóa ⇒ FD (MaDon,STT)->... ⇒ BCNF.
- SparePart: MaPT là khóa ⇒ BCNF.
- UsageParts: (MaDon, STT, MaPT) là khóa ⇒ FD (MaDon,STT,MaPT)->SoLuong ⇒ BCNF.
- Mechanic: MaNV là khóa ⇒ BCNF.
- Invoice: MaHD là khóa (MaDon có thể là candidate key nếu được đặt UNIQUE) ⇒ BCNF.

## 2.10 Thiết kế ràng buộc thực thi & transaction
- Dùng CHECK constraints cho các cột (DonGia >= 0, SoLuong > 0, SoLuongTon >= 0).
- Dùng UNIQUE cho BienSo và Invoice.MaDon.
- Dùng stored-proc (sp_AddUsagePart / sp_RemoveUsagePart) hoặc trigger INSTEAD OF INSERT để kiểm tra tồn và cập nhật tồn trong transaction.

## 2.11 Chỉ dẫn index & tối ưu
- Index nên có: RepairOrder(MaDon) là PK — đã có.
- Tạo index phụ: RepairOrder(MaKH), RepairOrder(MaXe) để tra cứu theo khách/xe.
- Index cho Invoice(NgayLap) để thống kê theo tháng/năm.
- Index cho UsageParts(MaPT) hoặc SparePart(MaPT) để thống kê phụ tùng.

## 2.12 Kịch bản giao dịch
- Tạo RepairOrder → Thêm RepairDetail → Gọi sp_AddUsagePart → Tạo Invoice → Cập nhật trạng thái

## 2.13 Bảo mật & phân quyền
- Phân quyền: chỉ kế toán/quản lý được tạo/sửa Invoice; thợ chỉ thêm RepairDetail/UsageParts thông qua sp.

---

# Chương 3. Cài đặt và khai thác CSDL

## 3.1 Tạo cơ sở dữ liệu
```sql
CREATE DATABASE GaraDB;
GO
USE GaraDB;
GO
```

## 3.2 Tạo bảng và ràng buộc
(Trong ddl.sql)

## 3.3 Nhập dữ liệu mẫu
(Trong sample_data_20.sql)

## 3.4 Thao tác DML minh họa
```sql
-- Thêm khách hàng
INSERT INTO Customer(MaKH, TenKH, SDT, Email, DiaChi)
VALUES ('KH21', N'Nguyễn Văn Z', '0901234567', 'z21@gmail.com', N'Hà Nội');

-- Tạo đơn
INSERT INTO RepairOrder(MaDon, MaKH, MaXe, NgayTiepNhan, TrangThai)
VALUES ('DON21', 'KH21', 'XE01', GETDATE(), 'Received');

-- Thêm chi tiết
INSERT INTO RepairDetail(MaDon, STT, MaLoai, DonGia, SoLuong)
VALUES ('DON21', 1, 'DV01', 250000, 1);

-- Gọi sp_AddUsagePart
EXEC sp_AddUsagePart @MaDon='DON21', @STT=1, @MaPT='PT01', @SoLuong=1;

-- Lập hóa đơn
INSERT INTO Invoice(MaHD, MaDon, MaNV, NgayLap, TriGia, DaThanhToan)
VALUES ('HD21', 'DON21', 'NV01', GETDATE(), 250000, 0);
```

## 3.5 Truy vấn minh họa
(Trong queries_4.sql)

---