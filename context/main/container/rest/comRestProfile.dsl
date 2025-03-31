comRestProfile = component "Profile RESTful endpoint" {
  description "Handle /api/v1/profile"
  technology "Supabase"

  -> comDatabaseUserTable "Manage user's data"
  -> ssExternalMessaging "Send notifications using"
}