<?php
// Parameters for connecting to the database
define('DB_NAME', 'Bookings');
define('DB_USER', '');
define('DB_PASSWORD', '');
define('DB_HOST', 'localhost');

// The heading to appear at the left side of the Nav bar
define('HEADING', 'SISTEM TEMPAHAN PUSAT AKSES KOLEJ VOKASIONAL BALIK PULAU (STPA).');

// The url to go to after logging out of the application
define('LOGOUT_URL', 'http://www.google.com');

// The details for the mail sent when a booking is made from the wordpress plugin 
define('BOOKING_MAIL_RECIPIENTS', 'you@example.com');
define('BOOKING_MAIL_SUBJECT', 'Booking posted from the website');
define('BOOKING_FROM_ADDRESS', 'noreply@example.com');

// The time bands (morning, afternoon, evening, as time/duration)
define('TIME_BANDS', [[9, 4],[14, 4],[19, 4]]);
?>