CREATE TABLE Bus_Operator
(
    Operator_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Operator_Name VARCHAR(50) NOT NULL,
    Branch VARCHAR(50) NOT NULL
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
    Route_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Operator_ID VARCHAR(10) REFERENCES Bus_Operator(Operator_ID) NOT NULL,
    Route_Name VARCHAR(50) NOT NULL,
    Route_Type VARCHAR(50) NOT NULL,
    Start_Location VARCHAR(50) NOT NULL,
    Destination VARCHAR(50) NOT NULL
);

CREATE TABLE Bus_Vehicle
(
    Vehicle_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Model VARCHAR(20) NOT NULL,
    Capacity INTEGER NOT NULL
);

CREATE TABLE Trip
(
    Trip_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Vehicle_ID VARCHAR(10) REFERENCES Bus_Vehicle(Vehicle_ID) NOT NULL,
    Route_ID VARCHAR(10) REFERENCES Bus_Route(Route_ID) NOT NULL,
    Travel_Date DATE NOT NULL,
    Depart_Time TIME NOT NULL,
    Seats_Reserved INTEGER
);

CREATE TABLE Customer
(
    Customer_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Customer_Name VARCHAR(50) NOT NULL,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50) NOT NULL,
    Contact VARCHAR(15) NOT NULL
);

CREATE TABLE Station
(
    Station_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Station_Name VARCHAR(50) NOT NULL,
    City VARCHAR(50) NOT NULL
);

CREATE TABLE FareCode
(
    FareCode_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    FareType VARCHAR(10) NOT NULL
);

CREATE TABLE Ticket
(
    Ticket_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Price DECIMAL NOT NULL,
    Seat_Number VARCHAR(50) NOT NULL,
    FareCode_ID VARCHAR(10)  REFERENCES FareCode(FareCode_ID) NOT NULL
);

CREATE TABLE Reservation
(
    Reservation_ID VARCHAR(10) PRIMARY KEY NOT NULL,
    Customer_ID VARCHAR(10) REFERENCES Customer(Customer_ID) NOT NULL,
    Trip_ID VARCHAR(10) REFERENCES Trip(Trip_ID) NOT NULL,
    Ticket_ID VARCHAR(10) REFERENCES Ticket(Ticket_ID) NOT NULL,
    Reservation_Date DATE NOT NULL,
    Reservation_Time TIME NOT NULL,
    Reservation_State VARCHAR(50) NOT NULL,
);