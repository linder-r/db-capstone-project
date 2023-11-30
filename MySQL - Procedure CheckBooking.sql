DELIMITER //
CREATE PROCEDURE CheckBooking(IN booking_date DATE, IN table_number INT)
BEGIN
DECLARE booking_status INT;
SELECT BookingID INTO booking_status FROM Bookings WHERE BookingDate = booking_date AND TableNumber = table_number;
IF booking_status IS NOT NULL THEN SELECT CONCAT('Table ', table_number, ' is already booked') as 'Booking status';
ELSE SELECT CONCAT('Table ', table_number, ' is still aviable') as 'Booking status';
END IF;
END //
DELIMITER ;

CALL CheckBooking('2022-11-12', 3);