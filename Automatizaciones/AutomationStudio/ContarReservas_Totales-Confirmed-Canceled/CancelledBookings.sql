/* Query para reservas canceladas del día de hoy */
SELECT 
CAST(DateBooking AS DATE) AS Date,
COUNT(*) AS CancelledBookings
FROM DE_Bookings
WHERE Status = 'Cancelled' AND CAST(DateBooking AS DATE) = CAST(GETDATE() AS DATE)
GROUP BY CAST(DateBooking AS DATE)
