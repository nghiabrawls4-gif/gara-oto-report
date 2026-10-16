# BCNF Proof — Hệ thống quản lý gara ô tô

Mục đích: chứng minh từng quan hệ trong lược đồ quan hệ đạt chuẩn BCNF theo các phụ thuộc hàm (FDs).

1) Customer(MaKH, TenKH, SDT, Email, DiaChi)  
FD: MaKH -> TenKH, SDT, Email, DiaChi. MaKH là khóa => BCNF.

2) Vehicle(MaXe, BienSo, MaKH, HangXe, Model, NamSX)  
FD: MaXe -> BienSo, MaKH, HangXe, Model, NamSX. MaXe là khóa => BCNF.

3) ServiceType(MaLoai, TenLoai, DonGia, MoTa)  
MaLoai là khóa => BCNF.

4) RepairOrder(MaDon, MaKH, MaXe, NgayTiepNhan, NgayHoanThanh, TrangThai, GhiChu)  
MaDon là khóa => BCNF.

5) RepairDetail(MaDon, STT, MaLoai, DonGia, SoLuong)  
Key (MaDon, STT) => BCNF.

6) SparePart(MaPT, TenPT, DonGia, SoLuongTon, NhaCungCap)  
MaPT là khóa => BCNF.

7) Invoice(MaHD, MaDon, MaNV, NgayLap, TriGia, DaThanhToan)  
MaHD là khóa; MaDon là candidate key nếu UNIQUE => BCNF.

Kết luận: với các FD đã nêu, các quan hệ đạt BCNF. Nếu cần chứng minh chi tiết (liệt kê mọi FD suy luận), mình sẽ mở rộng thành tài liệu đầy đủ.