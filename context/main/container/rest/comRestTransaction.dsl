comRestTransaction = component "Transaction RESTful endpoint" {
  description "Handle /api/v1/transaction"
  technology "Supabase"

  -> comDatabaseTransactionTable "Manage data transaction"
  -> comRestPayment
  -> ssExternalMessaging "Call notification if success payments and write data transaction to database"
  -> ssExternalPayment "Make payments to external"
}