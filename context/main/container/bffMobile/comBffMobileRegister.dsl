comBffMobileRegister = component "Bff mobile Register" {
  description "Handle /register"
  technology "Raiden"

  -> comAuthEmailRegister "Call register with register endpoint"
  -> comRestUser "Store data user"
}