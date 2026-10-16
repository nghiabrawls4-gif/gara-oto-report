USE GaraDB;
GO

-- 1. Xe đang sửa
SELECT v.MaXe, v.BienSo, c.TenKH, ro.TrangThai, ro.NgayTiepNhan
FROM Vehicle v
JOIN Customer c ON v.MaKH = c.MaKH
JOIN RepairOrder ro ON v.MaXe = ro.MaXe
WHERE ro.TrangThai IN ('Received', 'InProgress');

-- 2. Doanh thu theo tháng
SELECT YEAR(NgayLap) AS Nam, MONTH(NgayLap) AS Thang, SUM(TriGia) AS TongDoanhThu
FROM Invoice
GROUP BY YEAR(NgayLap), MONTH(NgayLap)
ORDER BY Nam, Thang;

-- 3. Top 5 khách hàng nhiều đơn nhất
SELECT TOP 5 c.MaKH, c.TenKH, COUNT(ro.MaDon) AS SoDon
FROM Customer c
LEFT JOIN RepairOrder ro ON c.MaKH = ro.MaKH
GROUP BY c.MaKH, c.TenKH
ORDER BY SoDon DESC;

-- 4. Phụ tùng dùng nhiều nhất
SELECT p.MaPT, p.TenPT, SUM(u.SoLuong) AS TongDaDung
FROM SparePart p
JOIN UsageParts u ON p.MaPT = u.MaPT
GROUP BY p.MaPT, p.TenPT
ORDER BY TongDaDung DESC;
