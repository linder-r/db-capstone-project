DELIMITER //
CREATE PROCEDURE AddBooking(IN booking_id INT, IN customer_id INT, IN table_number INT, IN booking_date DATE)
BEGIN
INSERT INTO Bookings(BookingID, CustomerID, TableNumber, BookingDate) 
Values (booking_id, customer_id, table_number, booking_date);
SELECT 'New booking added' as 'Confirmation';
END //
DELIMITER ;


Call AddBooking(6, 2, 4, '2024-01-01');