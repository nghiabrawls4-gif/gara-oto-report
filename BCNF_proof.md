# BCNF Proof — Hệ thống quản lý gara ô tô

## Phụ thuộc hàm
- MaKH -> TenKH, SDT, Email, DiaChi
- MaXe -> BienSo, MaKH, HangXe, Model, NamSX
- MaLoai -> TenLoai, DonGia, MoTa
- MaDon -> MaKH, MaXe, NgayTiepNhan, NgayHoanThanh, TrangThai, GhiChu
- (MaDon, STT) -> MaLoai, DonGia, SoLuong
- MaHD -> MaDon, MaNV, NgayLap, TriGia, DaThanhToan
- MaPT -> TenPT, DonGia, SoLuongTon, NhaCungCap
- MaNV -> TenNV, ChucVu, SDT
- (MaDon, STT, MaPT) -> SoLuong

## Khóa ứng viên
- Customer: MaKH
- Vehicle: MaXe
- ServiceType: MaLoai
- RepairOrder: MaDon
- RepairDetail: (MaDon, STT)
- SparePart: MaPT
- Invoice: MaHD
- UsageParts: (MaDon, STT, MaPT)

## Kết luận
Vì với mọi phụ thuộc hàm X -> Y, X đều là superkey của quan hệ tương ứng, nên các quan hệ đều đạt BCNF.
