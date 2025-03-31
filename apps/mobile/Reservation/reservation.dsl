dynamic cMobile {
  title "[Mobile][Reservation] Reservation"
  description "Patient can create reservation on medpoint"

  pPatient -> comMobileReservation
  comMobileReservation -> comBffMobileReservation "Makes API call to [JSON/HTTPS]"
  comBffMobileReservation -> comRestReservation "Create reservation"

  comRestReservation -> comDatabaseReservationTable "Reads from and Writes to, if payments is failed/cancelled or reservation is cancelled rollback"
  comRestReservation -> ssExternalMessaging
  ssExternalMessaging -> pPatient "Send push notifications"

  autolayout lr
}