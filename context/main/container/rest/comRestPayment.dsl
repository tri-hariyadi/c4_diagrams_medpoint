comRestPayment = component "Payment RESTful endpoint" {
  description "Handle /api/v1/payment"
  technology "Supabase"

  -> comDatabaseReservationTable
  -> ssExternalPayment "Make payments to external"
  -> ssExternalMessaging "Call notification if success payments and write data reservation to database"
}