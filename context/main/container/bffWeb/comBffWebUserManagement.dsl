comBffWebUsersManagement = component "Bff Web Users Management" {
  description "Handle /users"
  technology "Raiden"

  -> comRestUser "CRUD users and access rights"
}