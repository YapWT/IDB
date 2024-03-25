CREATE TABLE Bus_Operator
(
    Operator_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Operator_Name VARCHAR(50) NOT NULL,
    Branch VARCHAR(50) NOT NULL
);

INSERT INTO Bus_Operator
VALUES
('OP01', 'Pavillion', 'Bukit Jalil'),
('OP02', 'Central', 'Hat Yai'),
('OP03', 'Marina Bay', 'Singapore'),
('OP04', 'JB Square', 'Johor'),
('OP05', 'Premium Outlet', 'Melaka');

CREATE TABLE Bus_Route
(
    Route_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Operator_ID VARCHAR(10) REFERENCES Bus_Operator(Operator_ID) NOT NULL,
    Route_Name VARCHAR(50) NOT NULL,
    Route_Type VARCHAR(50) NOT NULL,
    Start_Location VARCHAR(50) NOT NULL,
    Destination VARCHAR(50) NOT NULL
);

INSERT INTO Bus_Route
VALUES
('R01', 'OP01', 'SBJ - HYS', 'International', 'Stadium Bukit Jalil', 'Hat Yai Station'),
('R02', 'OP05', 'MPO - CNT', 'Domestic', 'Melaka Premium Outlet', 'Chinatown'),
('R03', 'OP02', 'HYS - LGL', 'International', 'Hat Yai Station', 'LEGOLAND'),
('R04', 'OP04', 'LGL - SBJ', 'Domestic', 'LEGOLAND', 'Stadium Bukit Jalil'),
('R05', 'OP03', 'CNT - HYS', 'International', 'Chinatown', 'Hat Yai Station'),
('R06', 'OP03', 'CNT - MPO', 'International', 'Chinatown', 'Melaka Premium Outlet');

CREATE TABLE Bus_Vehicle
(
    Vehicle_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Model VARCHAR(20) NOT NULL,
    Capacity INTEGER NOT NULL
);

INSERT INTO Bus_Vehicle
VALUES
('B01', 'Xpress', 50),
('B02', 'TurboBus', 40),
('B03', 'MetroX', 80),
('B04', 'Speedster', 60),
('B05', 'SwiftRide', 60),
('B06', 'UrbanX', 100),
('B07', 'TurboBus', 40),
('B08', 'Speedster', 60),
('B09', 'UrbanX', 100);

CREATE TABLE Trip
(
    Trip_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Vehicle_ID VARCHAR(10) REFERENCES Bus_Vehicle(Vehicle_ID) NOT NULL,
    Route_ID VARCHAR(10) REFERENCES Bus_Route(Route_ID) NOT NULL,
    Travel_Date DATE NOT NULL,
    Depart_Time TIME NOT NULL
);

INSERT INTO Trip 
VALUES
('T786', 'B01', 'R02', '2024-01-02', '10:00'),
('T429', 'B02', 'R03', '2024-01-05', '12:00'),
('T574', 'B03', 'R01', '2024-01-09', '12:00'),
('T120', 'B04', 'R04', '2024-01-16', '15:00'),
('T983', 'B05', 'R05', '2024-01-23', '11:00'),
('T845', 'B06', 'R06', '2024-01-30', '14:00'),
('T657', 'B07', 'R02', '2024-02-02', '10:00'),
('T219', 'B08', 'R03', '2024-02-06', '12:00'),
('T433', 'B09', 'R01', '2024-02-09', '12:00'),
('T569', 'B01', 'R04', '2024-02-13', '15:00'),
('T708', 'B02', 'R05', '2024-02-20', '11:00'),
('T891', 'B03', 'R06', '2024-02-27', '14:00'),
('T225', 'B04', 'R02', '2024-03-01', '10:00'),
('T457', 'B05', 'R03', '2024-03-05', '12:00'),
('T602', 'B06', 'R01', '2024-03-12', '12:00'),
('T374', 'B07', 'R04', '2024-03-19', '15:00'),
('T518', 'B08', 'R05', '2024-03-26', '11:00'),
('T816', 'B09', 'R06', '2024-03-29', '14:00');

CREATE TABLE Customer
(
    Customer_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Customer_Name VARCHAR(50) NOT NULL,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Contact VARCHAR(15) NOT NULL
);

INSERT INTO Customer
VALUES
('C001', 'Sanjay1234@gmail.com', 'Sanjay Tan', 'Sanjay', 'Tan', '017-1234567'),
('C002', 'Arjun5678@yahoo.com', 'Arjun Kumar', 'Arjun', 'Kumar', '016-9876543'),
('C003', 'Aisha9012@hotmail.com', 'Aisha Ramli', 'Aisha', 'Ramli', '019-2345678'),
('C004', 'Deepika3456@outlook.com', 'Deepika Singh', 'Deepika', 'Singh', '012-8765432'),
('C005', 'Mei7890@gmail.com', 'Mei Lin', 'Mei', 'Lin', '018-3456789'),
('C006', 'Farah2345@yahoo.com', 'Farah Nasir', 'Farah', 'Nasir', '013-7654321'),
('C007', 'Jing6789@hotmail.com', 'Jing Wu', 'Jing', 'Wu', '011-4567890'),
('C008', 'Hafizah0123@outlook.com', 'Hafizah Yusof', 'Hafizah', 'Yusof', '014-6543210'),
('C009', 'Rahul4567@gmail.com', 'Rahul Gupta', 'Rahul', 'Gupta', '017-9876543'),
('C010', 'Farah7890@yahoo.com', 'Farah Patel', 'Farah', 'Patel', '016-3456789'),
('C011', 'Nisha1234@hotmail.com', 'Nisha Reddy', 'Nisha', 'Reddy', '019-8765432'),
('C012', 'Vikram5678@outlook.com', 'Vikram Pillai', 'Vikram', 'Pillai', '012-2345678'),
('C013', 'Priya9012@gmail.com', 'Priya Wong', 'Priya', 'Wong', '018-8765432'),
('C014', 'Xin3456@yahoo.com', 'Xin Wang', 'Xin', 'Wang', '013-3456789'),
('C015', 'Wei7890@hotmail.com', 'Wei Abdullah', 'Wei', 'Abdullah', '011-8765432'),
('C016', 'Amirah2345@gmail.com', 'Amirah Abdullah', 'Amirah', 'Abdullah', '014-9876543'),
('C017', 'Priya5678@outlook.com', 'Priya Sharma', 'Priya', 'Sharma', '017-2345678'),
('C018', 'Nurul9012@yahoo.com', 'Nurul Aziz', 'Nurul', 'Aziz', '016-8765432'),
('C019', 'Sanjay2345@hotmail.com', 'Sanjay Nair', 'Sanjay', 'Nair', '019-3456789'),
('C020', 'Siti6789@gmail.com', 'Siti Hajar', 'Siti', 'Hajar', '012-9876543'),
('C021', 'Ahmad0123@yahoo.com', 'Ahmad Krishnan', 'Ahmad', 'Krishnan', '018-2345678'),
('C022', 'Xiao4567@hotmail.com', 'Xiao Huang', 'Xiao', 'Huang', '013-4567890'),
('C023', 'Azlan7890@gmail.com', 'Azlan Ismail', 'Azlan', 'Ismail', '011-2345678'),
('C024', 'Fang1234@outlook.com', 'Fang Liu', 'Fang', 'Liu', '014-8765432'),
('C025', 'Yiling5678@yahoo.com', 'Yiling Lin', 'Yiling', 'Lin', '017-3456789'),
('C026', 'Rajesh9012@hotmail.com', 'Rajesh Abdullah', 'Rajesh', 'Abdullah', '016-2345678'),
('C027', 'Faisal3456@gmail.com', 'Faisal Hassan', 'Faisal', 'Hassan', '019-4567890'),
('C028', 'Ying7890@yahoo.com', 'Ying Zhu', 'Ying', 'Zhu', '012-3456789'),
('C029', 'Jun1234@hotmail.com', 'Jun Yang', 'Jun', 'Yang', '018-4567890'),
('C030', 'Meera5678@outlook.com', 'Meera Lim', 'Meera', 'Lim', '013-2345678'),
('C031', 'Sajat3287@hotmail.com', 'Sajat Merr', 'Sajat', 'Merr', '019-11145679'),
('C032', 'Nur5765@gmail.com', 'Nur Sabrina', 'Nur', 'Sabrina', '013-2378680');

CREATE TABLE Station
(
    Station_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Station_Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL
);

INSERT INTO Station
VALUES
('S01', 'Stadium Bukit Jalil', 'Bukit Jalil'),
('S02', 'Hat Yai Station', 'Hat Yai'),
('S03', 'Chinatown', 'Singapore'),
('S04', 'LEGOLAND', 'Johor'),
('S05', 'Melaka Premium Outlet', 'Melaka');

CREATE TABLE FareCode
(
    FareCode_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    FareType VARCHAR(10) NOT NULL
);

INSERT INTO FareCode
VALUES
('B', 'Bussiness'),
('E', 'Economy');


CREATE TABLE Ticket
(
    Ticket_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Price DECIMAL NOT NULL,
    Seat_Number VARCHAR(50) NOT NULL,
    FareCode_ID VARCHAR(10)  REFERENCES FareCode(FareCode_ID) NOT NULL
);

INSERT INTO Ticket
VALUES
('TK7859', 10, 46, 'E'),
('TK7860', 10, 57, 'E'),
('TK7861', 20, 55, 'B'),
('TK7862', 10, 30, 'E'),
('TK7863', 10, 15, 'E'),
('TK7864', 10, 47, 'E'),
('TK7865', 10, 5, 'E'),
('TK7866', 20, 22, 'B'),
('TK7867', 20, 57, 'B'),
('TK7868', 10, 29, 'E'),
('TK7869', 10, 10, 'E'),
('TK7870', 20, 23, 'B'),
('TK7871', 10, 51, 'E'),
('TK7872', 20, 6, 'B'),
('TK7873', 10, 36, 'E'),
('TK7874', 10, 2, 'E'),
('TK7875', 10, 6, 'E'),
('TK7876', 20, 60, 'B'),
('TK7877', 20, 27, 'B'),
('TK7878', 10, 9, 'E'),
('TK7879', 10, 31, 'E'),
('TK7880', 10, 11, 'E'),
('TK7881', 10, 35, 'E'),
('TK7882', 20, 59, 'B'),
('TK7883', 10, 13, 'E'),
('TK7884', 10, 45, 'E'),
('TK7885', 20, 51, 'B'),
('TK7886', 10, 19, 'E'),
('TK7887', 20, 34, 'B'),
('TK7888', 10, 40, 'E'),
('TK7889', 10, 17, 'E'),
('TK7890', 10, 10, 'E'),
('TK7891', 20, 58, 'B'),
('TK7892', 10, 22, 'E'),
('TK7893', 20, 8, 'B'),
('TK7894', 20, 54, 'B'),
('TK7895', 10, 45, 'E'),
('TK7896', 20, 41, 'B'),
('TK7897', 10, 19, 'E'),
('TK7898', 10, 56, 'E'),
('TK7899', 20, 28, 'B'),
('TK7900', 10, 60, 'E'),
('TK7901', 20, 41, 'B'),
('TK7902', 10, 49, 'E'),
('TK7903', 10, 7, 'E'),
('TK7904', 20, 52, 'B'),
('TK7905', 10, 16, 'E'),
('TK7906', 10, 38, 'E'),
('TK7907', 10, 29, 'E'),
('TK7908', 20, 12, 'B'),
('TK7909', 20, 39, 'B'),
('TK7910', 10, 21, 'E'),
('TK7911', 10, 34, 'E'),
('TK7912', 10, 27, 'E'),
('TK7913', 10, 18, 'E'),
('TK7914', 10, 37, 'E'),
('TK7915', 10, 53, 'E'),
('TK7916', 20, 53, 'B'),
('TK7917', 10, 16, 'E'),
('TK7918', 20, 4, 'B'),
('TK7919', 10, 8, 'E'),
('TK7920', 10, 20, 'E'),
('TK7921', 20, 32, 'B'),
('TK7922', 10, 25, 'E'),
('TK7923', 20, 43, 'B'),
('TK7924', 20, 48, 'B'),
('TK7925', 10, 14, 'E'),
('TK7926', 20, 24, 'B'),
('TK7927', 10, 42, 'E'),
('TK7928', 20, 44, 'B'),
('TK7929', 10, 5, 'E'),
('TK7930', 20, 3, 'B'),
('TK7931', 10, 33, 'E'),
('TK7932', 10, 50, 'E'),
('TK7933', 10, 38, 'E'),
('TK7934', 10, 56, 'E'),
('TK7935', 10, 20, 'E'),
('TK7936', 10, 48, 'E'),
('TK7937', 10, 1, 'E'),
('TK7938', 10, 12, 'E'),
('TK7939', 20, 39, 'B'),
('TK7940', 20, 26, 'B');

CREATE TABLE Reservation
(
    Reservation_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Customer_ID VARCHAR(10) REFERENCES Customer(Customer_ID) NOT NULL,
    Trip_ID VARCHAR(10) REFERENCES Trip(Trip_ID) NOT NULL,
    Ticket_ID VARCHAR(10) REFERENCES Ticket(Ticket_ID) NOT NULL,
    Reservation_Date DATE NOT NULL,
    Reservation_Time TIME NOT NULL,
    Reservation_State VARCHAR(50) NOT NULL
);

INSERT INTO Reservation
VALUES 
('R476', 'C001', 'T786', 'TK7859', '2023-10-01', '09:52', 'Singapore'),
('R477', 'C002', 'T429', 'TK7860', '2023-10-03', '15:41', 'Melaka'),
('R478', 'C003', 'T574', 'TK7861', '2023-10-05', '11:27', 'Johor'),
('R479', 'C003', 'T574', 'TK7862', '2023-10-07', '17:13', 'Hat Yai'),
('R480', 'C004', 'T845', 'TK7863', '2023-10-09', '08:05', 'Penang'),
('R481', 'C004', 'T845', 'TK7864', '2023-10-11', '14:36', 'Perak'),
('R482', 'C005', 'T983', 'TK7865', '2023-10-13', '10:19', 'Selangor'),
('R483', 'C006', 'T845', 'TK7866', '2023-10-15', '16:48', 'Kedah'),
('R484', 'C007', 'T219', 'TK7867', '2023-10-17', '07:32', 'Pahang'),
('R485', 'C007', 'T219', 'TK7868', '2023-10-19', '13:04', 'Kuantan'),
('R486', 'C007', 'T219', 'TK7869', '2023-10-21', '06:57', 'Singapore'),
('R487', 'C008', 'T657', 'TK7870', '2023-10-23', '12:30', 'Melaka'),
('R488', 'C008', 'T657', 'TK7871', '2023-10-25', '09:24', 'Johor'),
('R489', 'C011', 'T429', 'TK7872', '2023-10-27', '15:55', 'Hat Yai'),
('R490', 'C009', 'T120', 'TK7873', '2023-10-29', '11:39', 'Penang'),
('R491', 'C009', 'T120', 'TK7874', '2023-10-31', '17:21', 'Penang'),
('R492', 'C010', 'T657', 'TK7875', '2023-11-02', '08:13', 'Perak'),
('R493', 'C012', 'T433', 'TK7876', '2023-11-04', '14:45', 'Selangor'),
('R494', 'C012', 'T433', 'TK7877', '2023-11-06', '10:08', 'Singapore'),
('R495', 'C013', 'T429', 'TK7878', '2023-11-08', '16:33', 'Melaka'),
('R496', 'C013', 'T429', 'TK7879', '2023-11-10', '19:16', 'Johor'),
('R497', 'C014', 'T120', 'TK7880', '2023-11-12', '13:48', 'Hat Yai'),
('R498', 'C014', 'T120', 'TK7881', '2023-11-14', '18:09', 'Penang'),
('R499', 'C015', 'T786', 'TK7882', '2023-11-16', '12:52', 'Perak'),
('R500', 'C016', 'T845', 'TK7883', '2023-11-18', '09:36', 'Selangor'),
('R501', 'C016', 'T845', 'TK7884', '2023-11-20', '15:20', 'Kedah'),
('R502', 'C017', 'T433', 'TK7885', '2023-11-22', '11:04', 'Pahang'),
('R503', 'C017', 'T433', 'TK7886', '2023-11-24', '17:45:00', 'Kuantan'),
('R504', 'C018', 'T219', 'TK7887', '2023-11-26', '08:27:00', 'Singapore'),
('R505', 'C019', 'T657', 'TK7888', '2023-11-28', '14:59:00', 'Melaka'),
('R506', 'C019', 'T657', 'TK7889', '2023-11-30', '10:41:00', 'Singapore'),
('R507', 'C020', 'T983', 'TK7890', '2023-12-12', '16:14:00', 'Melaka'),
('R508', 'C020', 'T983', 'TK7891', '2023-12-12', '07:57:00', 'Johor'),
('R509', 'C021', 'T433', 'TK7892', '2023-12-12', '13:29:00', 'Hat Yai'),
('R510', 'C022', 'T602', 'TK7893', '2023-12-12', '06:33:00', 'Penang'),
('R511', 'C023', 'T225', 'TK7894', '2023-12-12', '12:05:00', 'Perak'),
('R512', 'C024', 'T816', 'TK7895', '2023-12-12', '09:48:00', 'Selangor'),
('R513', 'C025', 'T374', 'TK7896', '2023-12-14', '15:32:00', 'Kedah'),
('R514', 'C026', 'T457', 'TK7897', '2023-12-16', '23:16:00', 'Pahang'),
('R515', 'C026', 'T457', 'TK7898', '2023-12-18', '17:01:00', 'Kuantan'),
('R516', 'C027', 'T602', 'TK7899', '2023-12-20', '08:44:00', 'Singapore'),
('R517', 'C027', 'T602', 'TK7900', '2023-12-22', '14:17:00', 'Melaka'),
('R518', 'C028', 'T518', 'TK7901', '2023-12-24', '22:00:00', 'Pahang'),
('R519', 'C029', 'T457', 'TK7902', '2023-12-26', '16:25:00', 'Kuantan'),
('R520', 'C030', 'T891', 'TK7903', '2023-12-28', '07:08:00', 'Singapore'),
('R521', 'C030', 'T891', 'TK7904', '2023-12-30', '13:40:00', 'Melaka'),
('R522', 'C001', 'T569', 'TK7905', '2024-01-01', '06:24:00', 'Johor'),
('R523', 'C002', 'T518', 'TK7906', '2024-01-03', '12:57:00', 'Hat Yai'),
('R524', 'C003', 'T374', 'TK7907', '2024-01-05', '09:40:00', 'Penang'),
('R525', 'C004', 'T816', 'TK7908', '2024-01-07', '15:04:00', 'Penang'),
('R526', 'C004', 'T816', 'TK7909', '2024-01-09', '11:47:00', 'Singapore'),
('R527', 'C005', 'T569', 'TK7910', '2024-01-11', '17:29:00', 'Melaka'),
('R528', 'C006', 'T374', 'TK7911', '2024-01-13', '08:21:00', 'Johor'),
('R529', 'C007', 'T225', 'TK7912', '2024-01-15', '14:53:00', 'Hat Yai'),
('R530', 'C007', 'T225', 'TK7913', '2024-01-17', '22:36:00', 'Penang'),
('R531', 'C008', 'T602', 'TK7914', '2024-01-19', '16:10:00', 'Pahang'),
('R532', 'C008', 'T602', 'TK7915', '2024-01-21', '07:53:00', 'Kuantan'),
('R533', 'C009', 'T708', 'TK7932', '2024-01-23', '13:25:00', 'Singapore'),
('R534', 'C009', 'T708', 'TK7939', '2024-01-25', '06:49:00', 'Melaka'),
('R535', 'C010', 'T374', 'TK7918', '2024-01-27', '12:22:00', 'Johor'),
('R536', 'C011', 'T816', 'TK7919', '2024-01-29', '09:05:00', 'Hat Yai'),
('R537', 'C012', 'T891', 'TK7920', '2024-01-31', '15:37:00', 'Penang'),
('R538', 'C013', 'T374', 'TK7921', '2024-02-02', '11:20:00', 'Penang'),
('R539', 'C013', 'T374', 'TK7922', '2024-02-04', '17:12:00', 'Kuantan'),
('R540', 'C014', 'T457', 'TK7923', '2024-02-06', '07:56:00', 'Singapore'),
('R541', 'C015', 'T569', 'TK7930', '2024-02-08', '14:28:00', 'Melaka'),
('R542', 'C015', 'T891', 'TK7925', '2024-02-10', '22:11:00', 'Johor'),
('R543', 'C001', 'T708', 'TK7926', '2024-02-12', '16:44:00', 'Hat Yai'),
('R544', 'C017', 'T602', 'TK7927', '2024-02-14', '08:17:00', 'Penang'),
('R545', 'C018', 'T225', 'TK7928', '2024-02-16', '13:49:00', 'Penang'),
('R546', 'C019', 'T816', 'TK7929', '2024-02-18', '18:01:00', 'Kuantan'),
('R547', 'C020', 'T891', 'TK7924', '2024-02-20', '12:34:00', 'Singapore'),
('R548', 'C021', 'T457', 'TK7931', '2024-02-22', '21:18:00', 'Melaka'),
('R549', 'C022', 'T225', 'TK7938', '2024-02-24', '15:50:00', 'Johor'),
('R550', 'C023', 'T602', 'TK7933', '2024-02-26', '11:34:00', 'Hat Yai'),
('R551', 'C024', 'T816', 'TK7934', '2024-02-28', '17:06:00', 'Penang'),
('R552', 'C025', 'T457', 'TK7940', '2024-03-01', '08:59:00', 'Penang'),
('R553', 'C025', 'T518', 'TK7936', '2024-03-03', '14:41:00', 'Perak'),
('R554', 'C026', 'T374', 'TK7937', '2024-03-05', '22:24:00', 'Selangor'),
('R555', 'C027', 'T518', 'TK7916', '2024-03-07', '16:57:00', 'Johor'),
('R556', 'C028', 'T518', 'TK7917', '2024-03-09', '22:54:00', 'Hat Yai'),
('R557', 'C029', 'T518', 'TK7936', '2024-03-10', '18:39:00', 'Penang');

---------- SELECT ----------

-- 1.	List the bus operator ID, bus operator name who has the most number of bus route.
-- 2.	Display the customer’s first name and last name of who has made the most reservation.
-- 3.	Find the most popular of bus route.
-- 4.	Display the bus route and timing with the most number of bus in descending order.

-- S1Q1
SELECT o.operator_id, o.operator_name, COUNT(*) AS num_route
FROM bus_route r
INNER JOIN bus_operator o ON r.operator_id = o.operator_id
GROUP BY o.operator_id, o.operator_name
ORDER BY num_route DESC
LIMIT 1;

-- S1Q2
SELECT c.first_name, c.last_name, COUNT(reservation_id) AS num_reservation
FROM reservation r
INNER JOIN customer c ON r.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY num_reservation DESC
LIMIT 1;

--------------------------------------------------------------------------
select reservation.trip_id, count(*) as trip_count
from reservation
group by reservation.trip_id
order by trip_count desc;

select reservation.trip_id
from reservation
group by reservation.trip_id
having count(*) = (select max(count)
				  from (select reservation.trip_id, count(*)
					   as count from reservation group by reservation.trip_id));
-- Test --------------------------------------------------------------------------

-- S1Q3
SELECT t.route_id, COUNT(*) AS trip_count
FROM reservation r
INNER JOIN trip t ON r.trip_id = t.trip_id
GROUP BY t.route_id
ORDER BY trip_count DESC
LIMIT 1;

-- S1Q4
SELECT t.route_id, t.depart_time, COUNT(*) AS vehicle_count
FROM trip t
GROUP BY t.route_id, t.depart_time
ORDER BY vehicle_count DESC, depart_time, route_id;

-- 1.	Display the customer’s first name and last name who has made more than two reservations.
-- 2.	List the bus operator ID, bus operator name who has the operating the same bus route in 24 hours for the month of February.
-- 3.	Find the total number of bus route operated by each bus operator. Show bus operator id, bus operator name, bus route and timing.
-- 4.	Display the bus route and timing with the most number of seats unsold in descending order.

-- S2Q1
SELECT c.first_name, c.last_name, COUNT(r.customer_id) AS reservation_count
FROM reservation r
INNER JOIN customer c ON r.customer_id = c.customer_id
GROUP BY c.first_name, c.last_name
HAVING COUNT (r.customer_id) > 2
ORDER BY reservation_count, c.first_name, c.last_name;

-- S2Q2
SELECT r.route_id, STRING_AGG(DISTINCT r.operator_id, ',') AS operator_ids, o.operator_name
FROM bus_route r
INNER JOIN bus_operator o ON r.operator_id = o.operator_id
GROUP BY r.route_id, o.operator_name
HAVING COUNT(r.route_id) > 1;

-- S2Q3
SELECT 
	o.operator_id, 
	o.operator_name, 
	STRING_AGG(DISTINCT r.route_id, ',') AS route_ids, 
	STRING_AGG(CONCAT(t.travel_date, ' ', t.depart_time), ', ') AS depart_datetimes,
	COUNT(DISTINCT r.route_id) AS num_route
FROM Bus_Operator o
INNER JOIN Bus_Route r ON o.operator_id = r.operator_id
INNER JOIN trip t ON r.route_id = t.route_id
GROUP BY o.operator_id, o.operator_name;

-- S2Q4
WITH unsold_table AS (
	SELECT t.trip_id, t.route_id, t.travel_date, t.depart_time, v.capacity - COUNT(r.ticket_id) AS un_sold
	FROM trip t
	INNER JOIN reservation r ON t.trip_id = r.trip_id
	INNER JOIN bus_vehicle v ON t.vehicle_id = v.vehicle_id
	GROUP BY t.trip_id, t.route_id, t.travel_date, t.depart_time, v.capacity
	ORDER BY un_sold
),
max_unsold AS (
	SELECT route_id, MAX(un_sold) AS max_unsold
	FROM unsold_table
	GROUP BY route_id
)
SELECT un.route_id, un.travel_date, un.depart_time, m_un.max_unsold
FROM unsold_table un
INNER JOIN max_unsold m_un ON un.route_id = m_un.route_id AND un.un_sold = m_un.max_unsold
ORDER BY max_unsold;

-- 1.	Display the bus with the most number of seats sold for business class.
-- 2.	List all customers’ first names and last names who did not place any reservations. Sort the records by customer id in descending order.
-- 3.	Show the bus operator ID, bus operator name, and the total number of buses for each bus route.
-- 4.	Display the bus route and timing with the most number of seats sold in one hour before departure in descending order.

-- S3Q1
SELECT t.vehicle_id, tk.farecode_id, COUNT(tk.farecode_id) AS class_count
FROM Reservation r
INNER JOIN ticket tk ON r.ticket_id = tk.ticket_id
INNER JOIN trip t ON r.trip_id = t.trip_id
WHERE tk.farecode_id = 'B'
GROUP BY tk.farecode_id, t.vehicle_id
ORDER BY class_count DESC
LIMIT 1;

-- S3Q2
SELECT c.customer_id, c.first_name, c.last_name, r.reservation_id
FROM reservation r
FULL JOIN customer c ON r.customer_id = c.customer_id
WHERE r.reservation_id IS NULL
ORDER BY c.customer_id DESC;

-- S3Q3
SELECT t.route_id, o.operator_id, o.operator_name, COUNT(t.vehicle_id) AS total_bus
FROM trip t
INNER JOIN bus_route r ON r.route_id = t.route_id
INNER JOIN Bus_operator o ON o.operator_id = r.operator_id
GROUP BY t.route_id, o.operator_id, o.operator_name
ORDER BY route_id ASC;

-- S3Q4
SELECT t.route_id, t.travel_date,t.depart_time, COUNT(*) AS seat_num
FROM reservation r
INNER JOIN trip t ON r.trip_id = t.trip_id
WHERE r.reservation_date = t.travel_date AND r.reservation_time <= (t.depart_time - INTERVAL '1 hour')
    -- R.TIME < (1 HOUR BEFORE D.TIME)
GROUP BY t.route_id, t.travel_date,t.depart_time
ORDER BY seat_num DESC;

-- 1.	Find the highest sales and total number of seats sold of bus operators for each month in descending order.
-- 2.	List the name and the position of bus operators whose total number of seats sold is neither 120 nor 210.
-- 3.	Display the customer’s first name and last name who made the reservation 3 months earlier than the traveling date.
-- 4.	List the bus operator ID, bus operator name who have operated the bus for domestic route.

-- S4Q1
WITH SeatCounts AS 
(
	SELECT b.operator_id, TO_CHAR(reservation_date, 'YYYY-MM') AS month_year, COUNT(r.ticket_id) AS num_seat
	FROM reservation r
	INNER JOIN trip t ON r.trip_id = t.trip_id
	INNER JOIN bus_route b ON t.route_id = b.route_id
	GROUP BY b.operator_id, month_year
),
highest AS
(
	SELECT sc.month_year, MAX(sc.num_seat) AS highest_sale
	FROM SeatCounts sc 
	GROUP BY sc.month_year
)
SELECT h.month_year, STRING_AGG(sc.operator_id, ',') AS operator_ids, h.highest_sale
FROM SeatCounts sc
INNER JOIN highest h ON sc.month_year = h.month_year
WHERE sc.num_seat = h.highest_sale
GROUP BY h.month_year, h.highest_sale
ORDER BY h.highest_sale DESC;

-- S4Q2
SELECT b.operator_id, o.operator_name, COUNT(r.ticket_id) AS num_seat
FROM reservation r
INNER JOIN trip t ON r.trip_id = t.trip_id
INNER JOIN bus_route b ON t.route_id = b.route_id
INNER JOIN bus_operator o ON b.operator_id = o.operator_id
GROUP BY b.operator_id, o.operator_name
HAVING COUNT(r.ticket_id) NOT IN (120, 210)
ORDER BY num_seat;

-- S4Q3
SELECT c.first_name, c.last_name, STRING_AGG(DISTINCT TO_CHAR(r.reservation_date, 'YYYY-MM-DD'), ', ') AS reservation_dates, travel_date
FROM reservation r
INNER JOIN customer c ON r.customer_id = c.customer_id
INNER JOIN trip t ON r.trip_id = t.trip_id
WHERE r.reservation_date <= (t.travel_date - INTERVAL '3 month')
GROUP BY c.first_name, c.last_name, travel_date
ORDER BY t.travel_date;

-- S4Q4
SELECT o.operator_id, o.operator_name, r.route_type
FROM bus_route r
INNER JOIN bus_operator o ON r.operator_id = o.operator_id
WHERE route_type = 'Domestic'
ORDER BY operator_id;

-- SELECT * FROM reservation;
-- SELECT * FROM customer;
-- SELECT * FROM bus_operator;
-- SELECT * FROM Bus_route;
-- SELECT * FROM trip;
-- SELECT * FROM ticket;
-- SELECT * FROM bus_vehicle;
-- SELECT * FROM station;