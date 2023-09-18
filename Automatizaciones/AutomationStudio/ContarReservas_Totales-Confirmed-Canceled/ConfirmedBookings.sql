/* Query para reservas válidas del día de hoy */
SELECT 
CAST(DateBooking AS DATE) AS Date,
COUNT(*) AS ValidBookings
FROM DE_Bookings
WHERE Status = 'Confirmed' AND CAST(DateBooking AS DATE) = CAST(GETDATE() AS DATE)
GROUP BY CAST(DateBooking AS DATE)
