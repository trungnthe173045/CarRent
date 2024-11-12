Create database CarRent

-- Tạo bảng User
CREATE TABLE [User] (
    id INT IDENTITY(1,1) PRIMARY KEY,
    [name] VARCHAR(100),
    phone VARCHAR(10) CHECK (phone LIKE '[0-9]%' AND LEN(phone) = 10),
    [address] VARCHAR(255),
    email VARCHAR(100),
    username VARCHAR(50) UNIQUE,
    [password] TEXT,
    [role] VARCHAR(50) CHECK ([role] IN ('Customer', 'Manager', 'Employee', 'Admin')),
    [image] VARCHAR(255)
);
GO



-- Tạo bảng Car
CREATE TABLE Car (
    id INT IDENTITY(1,1) PRIMARY KEY,
    [name] VARCHAR(100),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    model VARCHAR(50),
    [year] INT,
    number_of_seat INT,
    plate_number VARCHAR(20),
    mileage INT,
    [status] VARCHAR(50) CHECK ([status] IN ('Available', 'Rented')),
    rating INT CHECK (rating BETWEEN 1 AND 5),
    [image] VARCHAR(255),
    [description] TEXT
);
GO

-- Tạo bảng Order
CREATE TABLE [Order] (
    id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT,
    order_status VARCHAR(50) CHECK (order_status IN ('Pending', 'Completed', 'Refuse')),
    date_order DATE,
    pick_up_location VARCHAR(255),
    drop_off_location VARCHAR(255),
    pick_up_date DATETIME,
    drop_off_date DATETIME,
    FOREIGN KEY (user_id) REFERENCES [User](id)
);
GO

-- Tạo bảng Order_Detail
CREATE TABLE Order_Detail (
    order_detail_id INT IDENTITY(1,1) PRIMARY KEY,
    order_id INT,
    car_id INT,
    FOREIGN KEY (order_id) REFERENCES [Order](id),
    FOREIGN KEY (car_id) REFERENCES Car(id)
);
GO



set identity_insert Car on
Insert Car(id, name, brand, price, model, year, number_of_seat, plate_number, mileage, status, rating, image, description) values
	(1, N'Mercedes-Benz GLC 200', N'Mercedes-Benz', 400, N'200', 2023, 5, N'21K-23.579', 0, N'Available', 5, N'carimg/Mercedes-Benz-GLC-200-4Matic.jpg', N'Experience the future of driving with our latest electric vehicle.'),
(2, N'BMW 730Li Pure Excellence', N'BMW', 450, N'730li', 2021, 4, N'29A-5791', 37000, N'Rented', 4, N'carimg/BMW-730Li-Pure-Excellence-2021.jpg', N'Unmatched luxury and performance in every mile.'),
	(3, N'Thaco FRONTIER TF450V 2S', N'Thaco', 100, N'Frontier', 2024, 2, N'29B-34.692', 0, N'Rented', 3,N'carimg/Thaco-FRONTIER-TF450V-2S-2024.jpg', N'Discover the perfect blend of style and efficiency.'),
	(4, N'Toyota Fortuner 2.4 MT 4X2', N'Toyota', 150, N'Fortuner', 2019, 7, N'51H-564.22', 79340, N'Rented', 4, N'carimg/Toyota-Fortuner-2.4-MT-4X2.jpg', N'Engineered for adventure, designed for comfort.'),
	(5, N'Ford Transit 2024', N'Ford', 170, N'Transit', 2024, 16, N'16B-69.888', 0, N'Available', 3, N'carimg/Ford-Transit-2024.jpg', N'Drive with confidence in our top-rated safety features.'),(6, N'Audi Q7 2011', N'Audi', 80, N'Q7', 2011, 4, N'51H-832.96', 86000, N'Available', 2, N'carimg/Audi-Q7-2011.jpg', N'Redefine your commute with cutting-edge technology.'),
(7, N'Hyundai Stargazer 2024', N'Hyundai', 70, N'Stargazer', 2024, 7, N'23H-25.321', 0, N'Available', 1, N'carimg/Hyundai-Stargazer-2024.jpg', N'Elegance meets power in our newest sedan.'),
	(8, N'Suzuki XL7 2021', N'Suzuki', 100, N'XL7', 2021, 5, N'12K-79.444', 38000, N'Available', 3, N'carimg/Suzuki-XL7-2021.jpg', N'Explore the world in our spacious and versatile SUV.'),
	(9, N'Nissan Sunny XL 1.5 MT 2018', N'Nissan', 120, N'Sunny', 2018, 4, N'51G-054.56', 88000, N'Available', 4, N'carimg/Nissan-Sunny-XL-1.5-MT-2018.jpg', N'Eco-friendly driving with no compromise on power.'),
	(10, N'Mercedes-Benz GLC 300', N'Mercedes-Benz', 370, N'300', 2023, 5, N'37A-054.56', 0, N'Available', 5, N'carimg/Mercedes-Benz-GLC-300-4Matic-AMG.jpg', N'Advanced engineering for a smooth and responsive ride.'),
	(11, N'Lexus LM 300 H 2020', N'Lexus', 500, N'LM 300h', 2020, 6, N'99H-25.445', 60000, N'Available', 5, N'carimg/Lexus-LM-300-H-2020.jpg', N'Unleash the thrill of the open road with our sports car.'),
(12, N'Kia sorento 2020 signature', N'KIA', 250, N'Sorento', 2020, 6, N'45H-55.777', 100000, N'Available', 3, N'carimg/Kia-sorento-2020-signature.jpg', N'Smart design and fuel efficiency for the modern driver.'),
	(13, N'2018 Honda City 1.5 AT', N'Honda', 130, N'City', 2018, 5, N'15K-228.98', 48000, N'Available', 2, N'carimg/2018-Honda-City-1.5-AT.jpg', N'Built tough to handle any terrain you choose.'),
	(14, N'VinFast LUX SA2.0 2019', N'VinFast', 150, N'Lux SA2.0', 2019, 4, N'29K-26.479', 80000, N'Available', 4, N'carimg/VinFast-LUX-SA2.0-2019.jpg', N'Innovative features for a connected and convenient drive.'),
	(15, N'Porsche Panamera 2020', N'Porsche', 550, N'Panamera', 2020, 4, N'51H-949.16', 19000, N'Available', 5, N'carimg/Porsche-Panamera-2020.jpg', N'Luxury reimagined with exceptional attention to detail.')
set identity_insert Car off
-- User
set identity_insert [dbo].[User] on
Insert [dbo].[User](id, name, phone, address, email, username, password, role, image) values
	(1, N'Nguyen Thanh Trung', N'0358126352', N'VietNam', N'trungnmhe@fpt.edu.vn','trungnt','123',N'Admin', N'userimg/user1.jpg'),
	(2, N'Pham Quang Anh', N'0945271653', N'ThaiLand', N'anhqp@fpt.edu.vn','anhpq','123', N'Manager', N'userimg/user2.jpg'),
	(3, N'Nghiem Minh Duc', N'0985407026', N'VietNam', N'ducnmhe@fpt.edu.vn', 'ducnm','123',N'Manager', N'userimg/user3.jpg'),
	(4, N'Tran Doan Tien', N'0352467891', N'MyTho', N'tientd@fpt.edu.vn', 'tientd','123',N'Manager', N'userimg/user4.jpg'),
	(5, N'Danh Thanh', N'0977651235', N'MyDinh', N'thanhdd@fpt.edu.vn', 'thanhd','123',N'Manager', N'userimg/user5.jpg'),
	(6, N'Nguyen Van Hoang Son', N'0967452167', N'Thanh Hoa', N'sonnvh@fpt.edu.vn','sonnvh','123', N'Employee', N'userimg/default.jpg'),(7, N'La Thi Thanh Hoa', N'0956432876', N'DakLak', N'vnhoaltt@fpt.edu.vn', 'hoaltt','123',N'Employee', N'userimg/default.jpg'),
	(8, N'Le Thai Duong', N'0352679854', N'SongHong', N'duonglt@fpt.edu', 'duonglt','123',N'Customer', N'userimg/default.jpg'),
(9, N'Le Thanh Binh', N'0353962745', N'TrenNui', N'binhlt@fpt.edu', 'binhlt','123',N'Customer', N'userimg/default.jpg'),
	(10, N'Tran Long Vu', N'0358726496', N'CanTho', N'vutl@fpt.edu', 'vult','123',N'Customer', N'userimg/default.jpg')
set identity_insert [dbo].[User] off
-- Order
set identity_insert [dbo].[Order] on
Insert [dbo].[Order](id, user_id, order_status, date_order, pick_up_location, drop_off_location, pick_up_date, drop_off_date) values 
	(1, 8, N'Pending', '2024-7-7', N'Thach Hoa', N'Tan Xa', '2024-10-7 05:00:00', '2024-10-17 8:00:00'),
	(2, 9, N'Completed', '2024-9-7', N'FPT University', N'Son Tay', '2024-7-11 07:00:00', '2024-7-14 8:00:00'),
	(3, 10, N'Pending', '2024-7-8', N'FPT University', N'Thach That', '2024-7-9 06:00:00', '2024-7-19 8:00:00')
set identity_insert [dbo].[Order] off


-- Order detail

SET IDENTITY_INSERT Order_Detail ON
INSERT INTO Order_Detail (order_detail_id, order_id, car_id) VALUES
    (1, 1, 1),
    (2, 2, 2),
    (3, 3, 3);
SET IDENTITY_INSERT Order_Detail OFF

