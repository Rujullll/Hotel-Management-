-- Hotel and related entities
INSERT INTO Hotel VALUES (1, 'The Grand Hotel', '123 Main St, Chandigarh');
INSERT INTO Restaurant VALUES (1, 1, 'The Grand Restaurant', 'Indian');
INSERT INTO RoomType VALUES (1, 'Deluxe', 5000);
INSERT INTO Room VALUES (1, 1, 1, '101');

-- Employees
INSERT INTO Employee VALUES (1, 1, 'Akshat', 'Manager', 75000);
INSERT INTO Employee VALUES (2, 1, 'Rajesh', 'Chef', 50000);
-- This one will fail the trigger (intentionally for testing)
INSERT INTO Employee VALUES (4, 1, 'Radhesh', 'Chef', 5000);

-- Customer
INSERT INTO Customer VALUES (
    1, 'Mr', 'India', 'mr.india@gmail.com', '9456576546', 
    'A-56', 'X-69', 'Chandigarh'
);

-- Booking (triggers calculate total and check availability)
INSERT INTO Booking (
    booking_id, customer_id, room_id, check_in_date, check_out_date
) VALUES (
    1, 1, 1, TO_DATE('2024-05-01','YYYY-MM-DD'), TO_DATE('2024-05-05','YYYY-MM-DD')
);
