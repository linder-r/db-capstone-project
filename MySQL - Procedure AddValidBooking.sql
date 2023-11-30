DELIMITER //
CREATE PROCEDURE AddValidBooking(IN booking_date DATE, IN table_number INT)
BEGIN
DECLARE booking_status INT;
START TRANSACTION;
SELECT COUNT(BookingID) INTO booking_status FROM Bookings WHERE BookingDate = booking_date AND TableNumber = table_number;
IF booking_status = 0 THEN INSERT INTO Bookings(BookingDate, TableNumber) Values (booking_date, table_number);
COMMIT;
SELECT CONCAT('Table ', table_number, ' has been booked') AS 'Booking status';
ELSE 
ROLLBACK;
SELECT CONCAT('Table ', table_number, ' is already booked. Booking cancelled') 
AS 'Booking status';
END IF;
END //
DELIMITER ;


CALL AddValidBooking('2022-10-11', 2);
CALL AddValidBooking('2022-10-11', 5);