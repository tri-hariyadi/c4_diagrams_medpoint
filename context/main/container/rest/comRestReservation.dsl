comRestReservation = component "Reservation RESTful endpoint" {
  description "Handle /api/v1/reservation"
  technology "Supabase"

  -> comDatabaseReservationTable "Manage data reservations"
  -> ssExternalMessaging "Call notification if success/cancelled reservation"
  -> ssExternalPayment "Make payments to external"
}