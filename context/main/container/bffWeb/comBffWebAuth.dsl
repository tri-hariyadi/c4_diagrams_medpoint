comBffWebAuth = component "Bff Web Auth" {
    description "Handle /auth"

    -> comAuthEmailLoginInternal "Call login with email endpoint"
    -> comRestUser "Get user"
}