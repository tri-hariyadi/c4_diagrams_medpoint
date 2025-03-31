dynamic cWeb {
  title "[Web CMS][Payment] Payment"
  description "Admin can see billing and payment validation on medpoint"

  pAdmin -> comWebPayment
  comWebPayment -> comBffWebPayment  "Makes API call to [JSON/HTTPS]"
  comBffWebPayment -> comRestTransaction
  comRestTransaction -> comDatabaseTransactionTable "Reads from and Write to"
  comBffWebPayment -> comRestPayment
  comRestPayment -> ssExternalPayment "Get payment status"
  comRestPayment -> comRestTransaction "Update status payment in transaction"
  comRestPayment -> ssExternalMessaging "Call notification if success/failed Update status payment"
  ssExternalMessaging -> pAdmin

  autolayout lr
}