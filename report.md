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

Nhóm em thực hiện đồ án “Hệ thống quản lý gara ô tô” nhằm áp dụng các kiến thức đã học trong môn Cơ sở dữ liệu như phân tích bài toán, xác định thực thể, thuộc tính, mối quan hệ, chuyển mô hình ER sang mô hình quan hệ, chuẩn hóa dữ liệu, viết DDL/DML và khai thác dữ liệu bằng SQL Server. Đây là một đề tài rất gần gũi với thực tế, vì gara ô tô luôn có nhu cầu quản lý khách hàng, xe, dịch vụ sửa chữa, phụ tùng, hóa đơn, nhân viên và doanh thu theo một cách khoa học, rõ ràng và bảo đảm tính toàn vẹn dữ liệu.

Mục tiêu của đồ án này là không chỉ làm bài tập trên lý thuyết mà còn rèn luyện tư duy thiết kế cơ sở dữ liệu đúng chuẩn. Nhóm em đã cố gắng mô tả quá trình từ việc phân tích nghiệp vụ cho đến thiết kế mô hình dữ liệu, rồi cài đặt các bảng trên SQL Server và minh họa các thao tác dữ liệu thông qua SQL.

Trong báo cáo này, phần mô hình quan hệ và dữ liệu được trình bày rõ ràng, có hệ thống và phù hợp với yêu cầu của môn học. Các câu truy vấn SQL minh họa được tách riêng thành file riêng, không đưa vào báo cáo chính theo đúng yêu cầu đề bài.

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
   2.9 Phụ thuộc hàm và kiểm tra chuẩn BCNF  
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

Gara ô tô là một cơ sở dịch vụ sửa chữa, bảo dưỡng và chăm sóc xe. Trong quá trình hoạt động, gara phải quản lý nhiều loại dữ liệu: khách hàng, xe, đơn sửa chữa, chi tiết dịch vụ, phụ tùng, hóa đơn, nhân viên và doanh thu. Quản lý không hệ thống dẫn đến sai sót, mất mát trữ liệu và khó thống kê báo cáo.

## 1.2 Mục tiêu của hệ thống

- Lưu trữ và quản lý thông tin khách hàng, xe, đơn sửa chữa, dịch vụ, phụ tùng và hóa đơn.
- Đảm bảo tính toàn vẹn dữ liệu (khóa, FK, CHECK).
- Hỗ trợ báo cáo doanh thu, thống kê dịch vụ/phụ tùng.

## 1.3 Đối tượng quản lý
- Khách hàng, Xe, Loại dịch vụ, Đơn sửa chữa, Chi tiết sửa chữa, Hóa đơn, Phụ tùng, Nhân viên.

## 1.4 Nghiệp vụ chính
- Tiếp nhận xe, lập đơn sửa chữa, ghi nhận chi tiết dịch vụ/phụ tùng, lập hóa đơn, theo dõi thanh toán, thống kê doanh thu.

---

# Chương 2. Phân tích và thiết kế CSDL

(Phần mô tả thực thể, thuộc tính, quy tắc nghiệp vụ, liên kết, ER, chuyển ER→quan hệ, FD và BCNF — tương tự nội dung chi tiết. Xem file BCNF_proof.md nếu cần luận chứng chi tiết.)

---

# Chương 3. Cài đặt và khai thác CSDL

## 3.1 Tạo cơ sở dữ liệu
CREATE DATABASE GaraDB; USE GaraDB;

## 3.2 Tạo bảng và ràng buộc
(Đã chuẩn bị trong ddl.sql)

## 3.3 Nhập dữ liệu mẫu
(Đã chuẩn bị sample_data_20.sql — mỗi bảng 20 bản ghi)

## 3.4 Thao tác DML minh họa
Ví dụ chèn, cập nhật, xóa và ví dụ lỗi ràng buộc (có trong report và file SQL ví dụ).

## 3.5 Truy vấn SQL minh họa
File queries_4.sql chứa 4 truy vấn minh họa.

---

# Kết luận

Đã thực hiện phân tích, thiết kế và cài đặt một hệ thống CSDL cho quản lý gara ô tô, đảm bảo các ràng buộc nghiệp vụ và chuẩn hóa BCNF. Có thể mở rộng thêm theo yêu cầu thực tế (theo dõi phụ tùng dùng, báo cáo BI, tích hợp web).

---

# Tài liệu tham khảo
- Giáo trình môn Cơ sở dữ liệu  
- Microsoft SQL Server Documentation  
- Tài liệu thiết kế hệ thống quản lý gara ô tô  