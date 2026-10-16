USE GaraDB;
GO

-- 20 Customers
INSERT INTO Customer(MaKH, TenKH, SDT, Email, DiaChi) VALUES
('KH01', N'Nguyễn Văn A', '0901000001', 'a1@gmail.com', N'Hà Nội'),
('KH02', N'Nguyễn Văn B', '0901000002', 'b2@gmail.com', N'Hà Nội'),
('KH03', N'Trần Thị C', '0901000003', 'c3@gmail.com', N'Đà Nẵng'),
('KH04', N'Lê Văn D', '0901000004', 'd4@gmail.com', N'Hồ Chí Minh'),
('KH05', N'Phạm Thị E', '0901000005', 'e5@gmail.com', N'Hải Phòng'),
('KH06', N'Hoàng Văn F', '0901000006', 'f6@gmail.com', N'Hà Nội'),
('KH07', N'Đỗ Thị G', '0901000007', 'g7@gmail.com', N'Nghệ An'),
('KH08', N'Vũ Văn H', '0901000008', 'h8@gmail.com', N'Hà Nội'),
('KH09', N'Nguyễn Thị I', '0901000009', 'i9@gmail.com', N'Đà Nẵng'),
('KH10', N'Trần Văn K', '0901000010', 'k10@gmail.com', N'Hà Nội'),
('KH11', N'Lý Thị L', '0901000011', 'l11@gmail.com', N'Hồ Chí Minh'),
('KH12', N'Bùi Văn M', '0901000012', 'm12@gmail.com', N'Hải Phòng'),
('KH13', N'Phan Thị N', '0901000013', 'n13@gmail.com', N'Hà Nội'),
('KH14', N'Ngô Văn O', '0901000014', 'o14@gmail.com', N'Đà Nẵng'),
('KH15', N'Võ Thị P', '0901000015', 'p15@gmail.com', N'Quảng Ninh'),
('KH16', N'Đặng Văn Q', '0901000016', 'q16@gmail.com', N'Hà Nội'),
('KH17', N'Trương Thị R', '0901000017', 'r17@gmail.com', N'Hồ Chí Minh'),
('KH18', N'Huỳnh Văn S', '0901000018', 's18@gmail.com', N'Hà Nội'),
('KH19', N'Nguyễn Văn T', '0901000019', 't19@gmail.com', N'Đà Nẵng'),
('KH20', N'Trần Thị U', '0901000020', 'u20@gmail.com', N'Hà Nội');
GO

-- 20 Vehicles
INSERT INTO Vehicle(MaXe, BienSo, MaKH, HangXe, Model, NamSX) VALUES
('XE01', '29A-12345', 'KH01', N'Toyota', N'Vios', 2021),
('XE02', '29A-12346', 'KH02', N'Honda', N'City', 2020),
('XE03', '29A-12347', 'KH03', N'Ford', N'Focus', 2019),
('XE04', '29A-12348', 'KH04', N'Mazda', N'3', 2022),
('XE05', '29A-12349', 'KH05', N'KIA', N'Cerato', 2021),
('XE06', '29A-12350', 'KH06', N'Hyundai', N'Accent', 2018),
('XE07', '29A-12351', 'KH07', N'Mitsubishi', N'Attrage', 2023),
('XE08', '29A-12352', 'KH08', N'Suzuki', N'Swift', 2021),
('XE09', '29A-12353', 'KH09', N'Toyota', N'Altis', 2020),
('XE10', '29A-12354', 'KH10', N'Honda', N'Civic', 2022),
('XE11', '29A-12355', 'KH11', N'Ford', N'Fiesta', 2019),
('XE12', '29A-12356', 'KH12', N'KIA', N'Morning', 2020),
('XE13', '29A-12357', 'KH13', N'Hyundai', N'Elantra', 2021),
('XE14', '29A-12358', 'KH14', N'BMW', N'320i', 2022),
('XE15', '29A-12359', 'KH15', N'Mercedes', N'C200', 2023),
('XE16', '29A-12360', 'KH16', N'Toyota', N'Camry', 2021),
('XE17', '29A-12361', 'KH17', N'Honda', N'Jazz', 2020),
('XE18', '29A-12362', 'KH18', N'KIA', N'K3', 2022),
('XE19', '29A-12363', 'KH19', N'Mazda', N'2', 2021),
('XE20', '29A-12364', 'KH20', N'Toyota', N'Corolla', 2022);
GO

-- 20 Mechanics
INSERT INTO Mechanic(MaNV, TenNV, ChucVu, SDT) VALUES
('NV01', N'Nguyễn Văn Tân', N'Thợ máy', '0902000001'),
('NV02', N'Trần Văn Hoàng', N'Thợ điện', '0902000002'),
('NV03', N'Lê Thị Hòa', N'Thợ cơ khí', '0902000003'),
('NV04', N'Phạm Anh Dũng', N'Thợ phanh', '0902000004'),
('NV05', N'Nguyễn Thị Lan', N'Kỹ thuật viên', '0902000005'),
('NV06', N'Vũ Quang Nam', N'Thợ lốp', '0902000006'),
('NV07', N'Hoàng Văn Minh', N'Thợ điện', '0902000007'),
('NV08', N'Đỗ Ngọc Yến', N'Quản lý', '0902000008'),
('NV09', N'Nguyễn Đức Anh', N'Thợ máy', '0902000009'),
('NV10', N'Phan Văn Long', N'Thợ phanh', '0902000010'),
('NV11', N'Trần Ngọc Huy', N'Thợ cơ khí', '0902000011'),
('NV12', N'Vũ Thị Mai', N'Kỹ thuật viên', '0902000012'),
('NV13', N'Lý Hoàng Nam', N'Thợ máy', '0902000013'),
('NV14', N'Huỳnh Thị Nhi', N'Thợ điện', '0902000014'),
('NV15', N'Nguyễn Văn Khoa', N'Thợ phanh', '0902000015'),
('NV16', N'Bùi Văn Tiến', N'Quản lý', '0902000016'),
('NV17', N'Trần Thùy Linh', N'Kỹ thuật viên', '0902000017'),
('NV18', N'Võ Minh Đức', N'Thợ máy', '0902000018'),
('NV19', N'Đặng Văn Sỹ', N'Thợ cơ khí', '0902000019'),
('NV20', N'Lương Thị Hà', N'Thợ điện', '0902000020');
GO

-- 20 ServiceType
INSERT INTO ServiceType(MaLoai, TenLoai, DonGia, MoTa) VALUES
('DV01', N'Thay dầu động cơ', 250000, N'Thay dầu máy và lọc dầu'),
('DV02', N'Sửa phanh', 500000, N'Kiểm tra và thay phanh'),
('DV03', N'Bảo dưỡng tổng quát', 700000, N'Kiểm tra tổng quát'),
('DV04', N'Xử lý điện', 600000, N'Kiểm tra điện, cảm biến'),
('DV05', N'Vệ sinh khoang máy', 450000, N'Vệ sinh hệ thống máy'),
('DV06', N'Thay lốp', 900000, N'Thay lốp và cân bằng'),
('DV07', N'Bảo dưỡng động cơ', 800000, N'Bảo dưỡng'),
('DV08', N'Vệ sinh nội thất', 350000, N'Vệ sinh xe'),
('DV09', N'Kiểm tra hệ thống phanh', 550000, N'Kiểm tra phanh'),
('DV10', N'Sửa hộp số', 1200000, N'Sửa hộp số'),
('DV11', N'Thay ắc quy', 300000, N'Thay ắc quy mới'),
('DV12', N'Kiểm tra thủy lực', 480000, N'Bảo dưỡng thủy lực'),
('DV13', N'Xử lý máy lạnh', 750000, N'Bảo dưỡng điều hòa'),
('DV14', N'Thay lọc gió', 200000, N'Phục vụ lọc gió'),
('DV15', N'Bảo dưỡng lốp', 400000, N'Bảo dưỡng lốp xe'),
('DV16', N'Thay dây điện', 650000, N'Thay dây điện'),
('DV17', N'Kiểm tra động cơ', 600000, N'Kiểm tra động cơ'),
('DV18', N'Thay bơm xăng', 850000, N'Thay bơm xăng'),
('DV19', N'Vệ sinh bề mặt', 500000, N'Vệ sinh bề mặt xe'),
('DV20', N'Kiểm tra tổng thể', 450000, N'Hệ thống tổng thể');
GO

-- 20 RepairOrder
INSERT INTO RepairOrder(MaDon, MaKH, MaXe, NgayTiepNhan, NgayHoanThanh, TrangThai, GhiChu) VALUES
('DON01', 'KH01', 'XE01', '2026-01-02', '2026-01-05', 'Completed', N'Bảo dưỡng định kỳ'),
('DON02', 'KH02', 'XE02', '2026-01-03', '2026-01-04', 'Completed', N'Sửa phanh'),
('DON03', 'KH03', 'XE03', '2026-01-05', '2026-01-07', 'Completed', N'Kiểm tra động cơ'),
('DON04', 'KH04', 'XE04', '2026-01-07', NULL, 'InProgress', N'Đang sửa điện'),
('DON05', 'KH05', 'XE05', '2026-01-08', '2026-01-10', 'Completed', N'Thay dầu'),
('DON06', 'KH06', 'XE06', '2026-01-09', NULL, 'Received', N'Chờ kiểm tra'),
('DON07', 'KH07', 'XE07', '2026-01-12', '2026-01-15', 'Completed', N'Bảo dưỡng tổng quát'),
('DON08', 'KH08', 'XE08', '2026-01-10', '2026-01-12', 'Completed', N'Vệ sinh nội thất'),
('DON09', 'KH09', 'XE09', '2026-01-13', NULL, 'InProgress', N'Đang kiểm tra điện'),
('DON10', 'KH10', 'XE10', '2026-01-15', '2026-01-17', 'Completed', N'Bảo dưỡng lốp'),
('DON11', 'KH11', 'XE11', '2026-01-17', '2026-01-20', 'Completed', N'Sửa hộp số'),
('DON12', 'KH12', 'XE12', '2026-01-18', NULL, 'Received', N'Mới tiếp nhận'),
('DON13', 'KH13', 'XE13', '2026-01-20', '2026-01-22', 'Completed', N'Bảo dưỡng máy lạnh'),
('DON14', 'KH14', 'XE14', '2026-01-21', NULL, 'InProgress', N'Đang sửa phanh'),
('DON15', 'KH15', 'XE15', '2026-01-22', '2026-01-25', 'Completed', N'Kiểm tra tổng thể'),
('DON16', 'KH16', 'XE16', '2026-01-24', '2026-01-27', 'Completed', N'Thay ắc quy'),
('DON17', 'KH17', 'XE17', '2026-01-27', NULL, 'InProgress', N'Đang sửa động cơ'),
('DON18', 'KH18', 'XE18', '2026-01-28', '2026-01-30', 'Completed', N'Bảo dưỡng tổng quát'),
('DON19', 'KH19', 'XE19', '2026-02-01', '2026-02-03', 'Completed', N'Kiểm tra phanh'),
('DON20', 'KH20', 'XE20', '2026-02-02', NULL, 'Received', N'Khách mới đến');
GO

-- 20 RepairDetail (mỗi Don 1 mục)
INSERT INTO RepairDetail(MaDon, STT, MaLoai, DonGia, SoLuong) VALUES
('DON01', 1, 'DV01', 250000, 1),
('DON01', 2, 'DV03', 700000, 1),
('DON02', 1, 'DV02', 500000, 1),
('DON03', 1, 'DV17', 600000, 1),
('DON04', 1, 'DV04', 600000, 1),
('DON05', 1, 'DV01', 250000, 1),
('DON06', 1, 'DV03', 700000, 1),
('DON07', 1, 'DV07', 800000, 1),
('DON08', 1, 'DV08', 350000, 1),
('DON09', 1, 'DV04', 600000, 1),
('DON10', 1, 'DV15', 400000, 1),
('DON11', 1, 'DV10', 1200000, 1),
('DON12', 1, 'DV20', 450000, 1),
('DON13', 1, 'DV13', 750000, 1),
('DON14', 1, 'DV09', 550000, 1),
('DON15', 1, 'DV03', 700000, 1),
('DON16', 1, 'DV11', 300000, 1),
('DON17', 1, 'DV17', 600000, 1),
('DON18', 1, 'DV03', 700000, 1),
('DON19', 1, 'DV09', 550000, 1);
GO

-- 20 SparePart
INSERT INTO SparePart(MaPT, TenPT, DonGia, SoLuongTon, NhaCungCap) VALUES
('PT01', N'Lọc dầu', 120000, 50, N'VietAuto'),
('PT02', N'Bánh phanh', 350000, 20, N'PhanhPlus'),
('PT03', N'Bơm dầu', 550000, 15, N'MotorSupply'),
('PT04', N'Ắc quy', 2500000, 10, N'PowerPlus'),
('PT05', N'Bộ dây điện', 600000, 18, N'ElectroParts'),
('PT06', N'Lốp xe', 900000, 25, N'TirePro'),
('PT07', N'Bình xăng', 800000, 12, N'FuelX'),
('PT08', N'Bơm nước', 420000, 14, N'CoolSys'),
('PT09', N'Bộ phanh', 760000, 12, N'BrakeFactory'),
('PT10', N'Bộ lọc gió', 180000, 30, N'FilterZone'),
('PT11', N'Bơm xi phanh', 500000, 22, N'BrakePro'),
('PT12', N'Cụm điện', 680000, 16, N'ElectraLine'),
('PT13', N'Bộ máy lạnh', 1200000, 8, N'AutoCool'),
('PT14', N'Bộ dây cáp', 450000, 20, N'CablePro'),
('PT15', N'Kính chắn gió', 330000, 14, N'GlassAuto'),
('PT16', N'Bánh xe', 400000, 17, N'WheelBest'),
('PT17', N'Cọc lốc', 110000, 25, N'AutoGear'),
('PT18', N'Bộ điều hòa', 1000000, 9, N'AirCare'),
('PT19', N'Khớp nối', 140000, 28, N'TransGear'),
('PT20', N'Bộ lọc nhiên liệu', 220000, 20, N'FuelLine');
GO

-- 20 Invoices
INSERT INTO Invoice(MaHD, MaDon, MaNV, NgayLap, TriGia, DaThanhToan) VALUES
('HD01', 'DON01', 'NV01', '2026-01-06', 950000, 1),
('HD02', 'DON02', 'NV02', '2026-01-05', 500000, 1),
('HD03', 'DON03', 'NV03', '2026-01-08', 600000, 1),
('HD04', 'DON04', 'NV04', '2026-01-09', 600000, 0),
('HD05', 'DON05', 'NV05', '2026-01-11', 250000, 0),
('HD06', 'DON06', 'NV06', '2026-01-12', 700000, 0),
('HD07', 'DON07', 'NV07', '2026-01-16', 800000, 1),
('HD08', 'DON08', 'NV08', '2026-01-13', 350000, 1),
('HD09', 'DON09', 'NV09', '2026-01-15', 600000, 0),
('HD10', 'DON10', 'NV10', '2026-01-18', 400000, 1),
('HD11', 'DON11', 'NV11', '2026-01-21', 1200000, 1),
('HD12', 'DON12', 'NV12', '2026-01-19', 450000, 0),
('HD13', 'DON13', 'NV13', '2026-01-23', 750000, 1),
('HD14', 'DON14', 'NV14', '2026-01-23', 550000, 0),
('HD15', 'DON15', 'NV15', '2026-01-27', 700000, 1),
('HD16', 'DON16', 'NV16', '2026-01-28', 300000, 1),
('HD17', 'DON17', 'NV17', '2026-01-29', 600000, 0),
('HD18', 'DON18', 'NV18', '2026-01-31', 700000, 1),
('HD19', 'DON19', 'NV19', '2026-02-03', 550000, 1),
('HD20', 'DON20', 'NV20', '2026-02-04', 450000, 0);
GO