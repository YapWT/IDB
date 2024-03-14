CREATE TABLE Bus_Operator
(
    Operator_ID VARCHAR(10) PRIMARY KEY,
    Operator_Name VARCHAR(50),
    Branch VARCHAR(50)
);

SELECT * FROM Bus_Operator

INSERT INTO Bus_Operator
VALUES
(,,),
(,,)

-- INSERT INTO Bus_Operator(Operator_ID) // Name and Branch is null
-- VALUES
-- (ABC123)


CREATE TABLE Bus_Route
(
    Route_ID VARCHAR(10) PRIMARY KEY,
    Operator_ID VARCHAR(10),
    Route_Name VARCHAR(50),
    Route_Type VARCHAR(50),
    Start_Location VARCHAR(50),
    Destination VARCHAR(50),

    FOREIGN KEY (Operator_ID) REFERENCES Bus_Operator(Operator_ID)
);

SELECT * FROM Bus_Route

CREATE TABLE Bus_Vehicle
(
    Vehicle_ID VARCHAR(10) PRIMARY KEY,
    Model VARCHAR(20),
    Capacity INTEGER
);

SELECT * FROM Bus_Vehicle

CREATE TABLE Trip
(
    Trip_ID VARCHAR(10) PRIMARY KEY,
    Vehicle_ID VARCHAR(10),
    Route_ID VARCHAR(10),
    Travel_Date DATE,
    Depart_Time TIME,
    Seats_Reservation INTEGER,

    FOREIGN KEY (Vehicle_ID) REFERENCES Bus_Vehicle(Vehicle_ID),
    FOREIGN KEY (Route_ID) REFERENCES Bus_Route(Route_ID)
);

SELECT * FROM Trip

CREATE TABLE Customer
(
    Customer_ID VARCHAR(10) PRIMARY KEY,
    Email VARCHAR(50),
    Customer_Name VARCHAR(50),
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Contact VARCHAR(50)
);

SELECT * FROM Customer

CREATE TABLE Station
(
    Station_ID VARCHAR(10) PRIMARY KEY,
    Station_Name VARCHAR(50),
    City VARCHAR(50)
);

SELECT * FROM Station

CREATE TABLE Ticket
(
    Ticket_ID VARCHAR(10) PRIMARY KEY,
    Price VARCHAR(50),
    Seat_Number VARCHAR(50),
    FareCode_ID VARCHAR(10),

    FOREIGN KEY (FareCode_ID) REFERENCES FareCode(FareCode_ID)
);

SELECT * FROM Ticket

CREATE TABLE Reservation
(
    Reservation_ID VARCHAR(10) PRIMARY KEY,
    Customer_ID VARCHAR(10),
    Origin_Station VARCHAR(10),
    Destination_Station VARCHAR(10),
    Trip_ID VARCHAR(10),
    Ticket_ID VARCHAR(10),
    Reservation_Date DATE,
    Reservation_Time TIME,
    Reservation_State VARCHAR(50),
    Total_Costs DECIMAL(5,2),

    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID),
    FOREIGN KEY (Origin_Station) REFERENCES Station(Station_ID),
    FOREIGN KEY (Destination_Station) REFERENCES Station(Station_ID),
    FOREIGN KEY (Trip_ID) REFERENCES Trip(Trip_ID),
    FOREIGN KEY (Ticket_ID) REFERENCES Ticket(Ticket_ID)
);

SELECT * FROM Reservation

CREATE TABLE FareCode
(
    FareCode_ID VARCHAR(10) PRIMARY KEY,
    FareType VARCHAR(10)
)
