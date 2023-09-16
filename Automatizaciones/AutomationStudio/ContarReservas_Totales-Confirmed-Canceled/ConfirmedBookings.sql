/* Query para reservas válidas */
SELECT 
CAST(DateBooking AS DATE) AS Date,
COUNT(*) AS ValidBookings
FROM DE_Bookings
WHERE Status = 'Confirmed'
GROUP BY CAST(DateBooking AS DATE)
