dynamic cWeb {
  title "[Web CMS][Reservation] Reservation"
  description "Admin can manage reservation on medpoint"

  pAdmin -> comWebReservation
  pSuperAdmin -> comWebReservation
  pDoctor -> comWebReservation
  comWebReservation -> comBffWebReservation  "Makes API call to [JSON/HTTPS]"
  comBffWebReservation -> comRestReservation
  comRestReservation -> comDatabaseReservationTable "Reads from and Writes to"

  autolayout lr
}