SELECT 
    HotelName,
    Booking_Id,
    Type,
    Adults,
    Kids,
    Rooms,
    Checkin,
    Checkout,
    Contact,
    EmailAddress,
    Phone,
    Nights,
    Contact_ID,
    Status,
    DateBooking,
    Language
FROM 
    DE_Bookings
WHERE 
    DATEDIFF(day, GETDATE(), Checkin) > 30
    AND Status = 'Pending' 
