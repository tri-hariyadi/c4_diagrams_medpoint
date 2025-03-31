dynamic cWeb {
  title "[Mobile][Payment] Payment"
  description "Patient can make payment on medpoint"

  pPatient -> comMobilePayment
  comMobilePayment -> comBffMobilePayment "Makes API call to [JSON/HTTPS]"
  comBffMobilePayment -> comRestTransaction
  comRestTransaction -> comDatabaseTransactionTable "Reads from and Writes to"
  comBffMobilePayment -> comRestPayment "Make payments"
  comRestPayment -> ssExternalPayment "Make payments to external and get payments status"
  comRestPayment -> comRestTransaction "Update status transaction"
  comRestPayment -> ssExternalMessaging "Call notification if success/failed payments"
  ssExternalMessaging -> pPatient

  autolayout lr
}