comBffMobileAuth = component "Bff mobile Auth" {
    description "Handle /auth"
    technology "Raiden with Go"

    -> comAuthEmailLogin "Call login with email endpoint"
    -> comRestUser "Get user"
}