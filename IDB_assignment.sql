CREATE TABLE Bus_Operator
(
    Operator_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Operator_Name VARCHAR(50) NOT NULL,
    Branch VARCHAR(50) NOT NULL
);

INSERT INTO Bus_Operator (Operator_ID, Operator_Name, Branch)
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

INSERT INTO Bus_Route (Route_ID, Operator_ID, Route_Name, Route_Type, Start_Location, Destination)
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

INSERT INTO Bus_Vehicle (Vehicle_ID, Model, Capacity)
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
    Depart_Time TIME NOT NULL,
    Seats_Reserved INTEGER
);

INSERT INTO Trip (Trip_ID, Vehicle_ID, Route_ID, Travel_Date, Depart_Time)
VALUES
('T786', 'B01', 'R02', '2024-02-01', '10:00'),
('T429', 'B02', 'R03', '2024-05-01', '12:00'),
('T574', 'B03', 'R01', '2024-09-01', '12:00'),
('T120', 'B04', 'R04', '2024-01-16', '15:00'),
('T983', 'B05', 'R05', '2024-01-23', '11:00'),
('T845', 'B06', 'R06', '2024-01-30', '14:00'),
('T657', 'B07', 'R02', '2024-02-02', '10:00'),
('T219', 'B08', 'R03', '2024-06-02', '12:00'),
('T433', 'B09', 'R01', '2024-09-02', '12:00'),
('T569', 'B01', 'R04', '2024-02-13', '15:00'),
('T708', 'B02', 'R05', '2024-02-20', '11:00'),
('T891', 'B03', 'R06', '2024-02-27', '14:00'),
('T225', 'B04', 'R02', '2024-01-03', '10:00'),
('T457', 'B05', 'R03', '2024-05-03', '12:00'),
('T602', 'B06', 'R01', '2024-12-03', '12:00'),
('T374', 'B07', 'R04', '2024-03-19', '15:00'),
('T518', 'B08', 'R05', '2024-03-26', '11:00'),
('T816', 'B09', 'R06', '2024-03-29', '14:00');

CREATE TABLE Customer
(
    Customer_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Customer_Name VARCHAR(50) NOT NULL,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50) NOT NULL,
    Contact VARCHAR(15) NOT NULL
);

INSERT INTO Customer (Customer_ID, Email, Customer_Name, First_Name, Last_Name, Contact)
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

INSERT INTO Station (Station_ID, Station_Name, City)
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

INSERT INTO FareCode (FareCode_ID, FareType)
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

INSERT INTO Ticket (Ticket_ID, Price, Seat_Number, FareCode_ID)
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

INSERT INTO Reservation (Reservation_ID, Customer_ID, Trip_ID, Ticket_ID, Reservation_Date, Reservation_Time, Reservation_State)
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
('R520', 'C030', 'T891', 'TK7903', '2023-12-28', '19:08:00', 'Singapore'),
('R521', 'C030', 'T891', 'TK7904', '2023-12-30', '13:40:00', 'Melaka'),
('R522', 'C001', 'T569', 'TK7905', '2024-01-01', '06:24:00', 'Johor'),
('R523', 'C002', 'T518', 'TK7906', '2024-03-01', '12:57:00', 'Hat Yai'),
('R524', 'C003', 'T374', 'TK7907', '2024-05-01', '09:40:00', 'Penang'),
('R525', 'C004', 'T816', 'TK7908', '2024-07-01', '15:04:00', 'Penang'),
('R526', 'C004', 'T816', 'TK7909', '2024-09-01', '11:47:00', 'Singapore'),
('R527', 'C005', 'T569', 'TK7910', '2024-11-01', '17:29:00', 'Melaka'),
('R528', 'C006', 'T374', 'TK7911', '2024-01-13', '08:21:00', 'Johor'),
('R529', 'C007', 'T225', 'TK7912', '2024-01-15', '14:53:00', 'Hat Yai'),
('R530', 'C007', 'T225', 'TK7913', '2024-01-17', '10:36:00', 'Penang'),
('R531', 'C008', 'T602', 'TK7914', '2024-01-19', '16:10:00', 'Pahang'),
('R532', 'C008', 'T602', 'TK7915', '2024-01-21', '07:53:00', 'Kuantan'),
('R533', 'C009', 'T518', 'TK7916', '2024-01-23', '13:25:00', 'Singapore'),
('R534', 'C009', 'T518', 'TK7917', '2024-01-25', '18:49:00', 'Melaka'),
('R535', 'C010', 'T374', 'TK7918', '2024-01-27', '12:22:00', 'Johor'),
('R536', 'C011', 'T816', 'TK7919', '2024-01-29', '09:05:00', 'Hat Yai'),
('R537', 'C012', 'T891', 'TK7920', '2024-01-31', '15:37:00', 'Penang'),
('R538', 'C013', 'T374', 'TK7921', '2024-02-02', '11:20:00', 'Penang'),
('R539', 'C013', 'T374', 'TK7922', '2024-04-02', '17:12:00', 'Kuantan'),
('R540', 'C014', 'T457', 'TK7923', '2024-06-02', '07:56:00', 'Singapore'),
('R541', 'C015', 'T891', 'TK7924', '2024-08-02', '14:28:00', 'Melaka'),
('R542', 'C015', 'T891', 'TK7925', '2024-10-02', '10:11:00', 'Johor'),
('R543', 'C001', 'T708', 'TK7926', '2024-12-02', '16:44:00', 'Hat Yai'),
('R544', 'C017', 'T602', 'TK7927', '2024-02-14', '08:17:00', 'Penang'),
('R545', 'C018', 'T225', 'TK7928', '2024-02-16', '13:49:00', 'Penang'),
('R546', 'C019', 'T816', 'TK7929', '2024-02-18', '06:01:00', 'Kuantan'),
('R547', 'C020', 'T569', 'TK7930', '2024-02-20', '12:34:00', 'Singapore'),
('R548', 'C021', 'T457', 'TK7931', '2024-02-22', '09:18:00', 'Melaka'),
('R549', 'C022', 'T708', 'TK7932', '2024-02-24', '15:50:00', 'Johor'),
('R550', 'C023', 'T602', 'TK7933', '2024-02-26', '11:34:00', 'Hat Yai'),
('R551', 'C024', 'T816', 'TK7934', '2024-02-28', '17:06:00', 'Penang'),
('R552', 'C025', 'T518', 'TK7935', '2024-03-01', '08:59:00', 'Penang'),
('R553', 'C025', 'T518', 'TK7936', '2024-03-03', '14:41:00', 'Perak'),
('R554', 'C026', 'T374', 'TK7937', '2024-03-05', '10:24:00', 'Selangor'),
('R555', 'C027', 'T225', 'TK7938', '2024-03-07', '16:57:00', 'Johor'),
('R556', 'C028', 'T708', 'TK7939', '2024-03-09', '10:54:00', 'Hat Yai'),
('R557', 'C029', 'T457', 'TK7940', '2024-03-10', '06:39:00', 'Penang');

---------- SELECT ----------
-- S1Q1
select * from bus_operator;
select * from bus_route;

select bus_operator.operator_id,bus_operator.operator_name
from bus_route
inner join bus_operator on bus_route.operator_id = bus_operator.operator_id
group by bus_route.route_id,bus_operator.operator_id
order by count(*) desc
limit 1;

-- S1Q2
select * from customer;
select * from reservation;

select customer.first_name,customer.last_name
from reservation
inner join customer on reservation.customer_id = customer.customer_id
group by customer.first_name,customer.last_name
order by count(*) desc
limit 1;

-- Test --------------------------------------------------------------------------
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
select * from bus_route;
select * from trip;
select * from reservation;

select trip.route_id,count(*) as trip_count
from reservation
inner join trip on reservation.trip_id = trip.trip_id
group by trip.route_id
order by trip_count desc
limit 1;

-- S1Q4
select * from trip;

select trip.route_id,trip.depart_time,count(trip.vehicle_id) as vehicle_count
from Trip
group by trip.route_id,trip.depart_time
order by vehicle_count desc;

-- S2Q1
select * from reservation;
select * from customer;

select customer.first_name,customer.last_name, count(reservation.customer_id) as reservation_count
from reservation
inner join customer on reservation.customer_id = customer.customer_id
group by customer.first_name, customer.last_name
having count(reservation.customer_id) > 2
order by reservation_count desc;

-- S2Q2
-- select * from bus_route
-- select * from bus_operator
-- select * from trip

-- select bus_operator.operator_id,bus_operator.operator_name
-- from trip
-- inner join bus_operator on bus_route.operator_id = bus_operator.operator_id
-- inner join bus_route on trip.route_id = bus_route.route_id
-- where datediff(hour)


-- S2Q3
select * from bus_route;
select * from bus_operator;
select * from trip;

select bus_operator.operator_id,bus_operator.operator_name,count(*) as operator_count
from bus_route
inner join bus_operator on bus_route.operator_id = bus_operator.operator_id
group by bus_operator.operator_id,bus_operator.operator_name
order by operator_count desc
select trip.depart_time;
-- not done yet


-- s1 q2
-- SELECT c.First_Name, c.Last_Name, COUNT(r.Reservation_ID) AS Reservation_Count
-- FROM Customer c
-- JOIN (
--     SELECT Customer_ID
--     FROM Reservation
--     GROUP BY Customer_ID
--     ORDER BY COUNT(*) DESC
--     LIMIT 1
-- ) AS top_customer ON c.Customer_ID = top_customer.Customer_ID
-- JOIN Reservation r ON c.Customer_ID = r.Customer_ID
-- GROUP BY c.First_Name, c.Last_Name;
