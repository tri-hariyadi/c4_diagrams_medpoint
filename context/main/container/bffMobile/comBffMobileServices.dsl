comBffMobileServices = component "Bff mobile Services" {
  description "Handle /services"
  technology "Raiden"

  -> comRestServices "Reads data services"
}