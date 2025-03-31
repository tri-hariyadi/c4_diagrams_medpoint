comBffMobileProfile = component "Bff mobile Profile" {
  description "Handle /profile"
  technology "Raiden"

  -> comRestProfile "Manage user"
}