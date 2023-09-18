/* Query para total de reservas del día de hoy */
SELECT 
CAST(DateBooking AS DATE) AS Date,
COUNT(*) AS TotalBookings
FROM DE_Bookings
WHERE CAST(DateBooking AS DATE) = CAST(GETDATE() AS DATE)
GROUP BY CAST(DateBooking AS DATE)
