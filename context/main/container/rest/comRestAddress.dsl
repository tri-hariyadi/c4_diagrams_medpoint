comRestAddress = component "Address RESTful endpoint" {
  description "Handle /api/v1/address"
  technology "Supabase"

  -> comDatabaseAddressTable "Manage address master data"
}