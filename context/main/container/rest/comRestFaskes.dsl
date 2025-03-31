comRestFaskes = component "Faskes RESTful endpoint" {
  description "Handle /api/v1/faskes"
  technology "Supabase"

  -> comDatabaseFaskesTable "Manage faskes master data"
}