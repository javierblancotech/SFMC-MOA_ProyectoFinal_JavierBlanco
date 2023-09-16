/* Query para total de reservas */
SELECT 
CAST(DateBooking AS DATE) AS Date,
COUNT(*) AS TotalBookings
FROM DE_Bookings
GROUP BY CAST(DateBooking AS DATE)
