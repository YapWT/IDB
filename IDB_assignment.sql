CREATE TABLE Bus_Operator
(
    Operator_ID VARCHAR(10) PRIMARY KEY,
    Operator_Name VARCHAR(50),
    Branch VARCHAR(50)
);

-- INSERT INTO Bus_Operator
-- VALUES
-- (,,),
-- (,,)

-- INSERT INTO Bus_Operator(Operator_ID) // Name and Branch is null
-- VALUES
-- (ABC123)


CREATE TABLE Bus_Route
(
    Route_ID VARCHAR(10) PRIMARY KEY,
    Operator_ID VARCHAR(10) REFERENCES Bus_Operator(Operator_ID),
    Route_Name VARCHAR(50),
    Route_Type VARCHAR(50),
    Start_Location VARCHAR(50),
    Destination VARCHAR(50)
);

CREATE TABLE Bus_Vehicle
(
    Vehicle_ID VARCHAR(10) PRIMARY KEY,
    Model VARCHAR(20),
    Capacity INTEGER
);

CREATE TABLE Trip
(
    Trip_ID VARCHAR(10) PRIMARY KEY,
    Vehicle_ID VARCHAR(10) REFERENCES Bus_Vehicle(Vehicle_ID),
    Route_ID VARCHAR(10) REFERENCES Bus_Route(Route_ID),
    Travel_Date DATE,
    Depart_Time TIME,
    Seats_Reservation INTEGER
);


CREATE TABLE Customer
(
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Email VARCHAR(50),
    Customer_Name VARCHAR(50),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Contact VARCHAR(50)
);

CREATE TABLE Station
(
    Station_ID VARCHAR(10) PRIMARY KEY,
    Station_Name VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE FareCode
(
    FareCode_ID VARCHAR(10) PRIMARY KEY,
    FareType VARCHAR(10)
);

CREATE TABLE Ticket
(
    Ticket_ID VARCHAR(10) PRIMARY KEY,
    Price VARCHAR(50) REFERENCES FareCode(FareCode_ID),
    Seat_Number VARCHAR(50),
    FareCode_ID VARCHAR(10)
);

CREATE TABLE Reservation
(
    Reservation_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID VARCHAR(10) REFERENCES Customer(Customer_ID),
    Origin_Station VARCHAR(10) REFERENCES Station(Station_ID),
    Destination_Station VARCHAR(10) REFERENCES Station(Station_ID),
    Trip_ID VARCHAR(10) REFERENCES Trip(Trip_ID),
    Ticket_ID VARCHAR(10) REFERENCES Ticket(Ticket_ID),
    Reservation_Date DATE,
    Reservation_Time TIME,
    Reservation_State VARCHAR(50),
    Total_Costs DECIMAL(5,2)
);
