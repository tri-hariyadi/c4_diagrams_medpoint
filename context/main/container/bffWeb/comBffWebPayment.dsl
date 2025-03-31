comBffWebPayment = component "Bff Web Payment" {
technology "Raiden"
description "Handle /payment"

  -> comRestPayment "Payment validation"
  -> comRestTransaction "Retrieving Billing"
}