comRestServices = component "Services RESTful endpoint" {
  description "Handle /api/v1/services"
  technology "Supabase"

  -> comDatabaseServicesTable "Manage data health services"
}