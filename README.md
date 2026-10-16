# gara-oto-report
Báo cáo và SQL cho đề tài quản lý gara ô tô - Cơ sở dữ liệu

## Mục tiêu
- Thiết kế mô hình CSDL cho hệ thống quản lý gara ô tô
- Phân tích nghiệp vụ, thực thể, quan hệ, khóa, ràng buộc
- Chuyển ER sang mô hình quan hệ
- Kiểm tra BCNF
- Viết DDL + dữ liệu mẫu + truy vấn minh họa

## Cấu trúc repo
- `report.md` — báo cáo chính
- `erd.md` — sơ đồ ER (Mermaid)
- `ddl.sql` — tạo database và bảng
- `sample_data_20.sql` — 20 bản ghi mẫu cho mỗi bảng chính
- `queries_4.sql` — 4 truy vấn minh họa
- `BCNF_proof.md` — kiểm tra chuẩn BCNF
- `export_report.sh` — tự động xuất docx/pdf (nếu cần)

## Chạy trên SQL Server
1. Mở SQL Server Management Studio
2. Tạo database:
   ```sql
   CREATE DATABASE GaraDB;
   GO
   USE GaraDB;
   GO
   ```
3. Chạy `ddl.sql` để tạo bảng và stored-proc.
4. Chạy `sample_data_20.sql` để insert dữ liệu mẫu (bao gồm UsageParts).
5. Chạy `queries_4.sql` để kiểm thử.

## Ghi chú
- Dữ liệu mẫu đã chuẩn hóa theo mô hình thực tế của gara ô tô.
- Bảng `UsageParts` được thêm để theo dõi phụ tùng dùng cho từng hạng mục sửa chữa.
- Nếu cần xuất báo cáo sang Word/PDF, chạy:
   ```bash
   bash export_report.sh
   ```
