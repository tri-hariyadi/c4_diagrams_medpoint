comBffMobilePayment = component "Bff mobile Payment" {
  description "Handle /payment"
  technology "Raiden"

  -> comRestTransaction "Retrieving billing data from database"
  -> comRestPayment
}