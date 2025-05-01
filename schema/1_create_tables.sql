CREATE TABLE Hotel (
    hotel_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    location VARCHAR2(200)
);

CREATE TABLE Restaurant (
    restaurant_id NUMBER PRIMARY KEY,
    hotel_id NUMBER,
    name VARCHAR2(100),
    cuisine_type VARCHAR2(50),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE RoomType (
    room_type_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    rate_per_night NUMBER
);

CREATE TABLE Room (
    room_id NUMBER PRIMARY KEY,
    hotel_id NUMBER,
    room_type_id NUMBER,
    room_number VARCHAR2(10),
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id),
    FOREIGN KEY (room_type_id) REFERENCES RoomType(room_type_id)
);

CREATE TABLE Employee (
    employee_id NUMBER PRIMARY KEY,
    hotel_id NUMBER,
    name VARCHAR2(100),
    position VARCHAR2(50),
    salary NUMBER,
    FOREIGN KEY (hotel_id) REFERENCES Hotel(hotel_id)
);

CREATE TABLE Customer (
    customer_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    email VARCHAR2(100),
    phone_number VARCHAR2(20),
    street_number VARCHAR2(200),
    house_number VARCHAR2(200),
    city VARCHAR2(200)
);

CREATE TABLE Booking (
    booking_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    room_id NUMBER,
    check_in_date DATE,
    check_out_date DATE,
    total_amount NUMBER,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (room_id) REFERENCES Room(room_id)
);
