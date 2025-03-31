comBffWebServices = component "Bff Web Services" {
  technology "Raiden"
  description "Handle /services"

  -> comRestServices "Manage data services"
}