/* Query para reservas canceladas */
SELECT 
CAST(DateBooking AS DATE) AS Date,
COUNT(*) AS CancelledBookings
FROM DE_Bookings
WHERE Status = 'Cancelled'
GROUP BY CAST(DateBooking AS DATE)
