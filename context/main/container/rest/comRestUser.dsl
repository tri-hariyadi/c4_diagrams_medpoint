comRestUser = component "User RESTful endpoint" {
    description "Handle /api/v1/users"
    technology "Supabase"

    -> comDatabaseUserTable "Manage user's data"
    -> ssExternalPayment "Billing and making payments, payment validation"
    -> ssExternalMessaging "Allow to recieves and read notifications"
}
