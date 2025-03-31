dynamic cWeb {
  title "[Web CMS][User Management] User Management"
  description "Admin can manage user's data CRUD and access rights"

  pSuperAdmin -> comWebUserManagement "Admin can manage all user's data CRUD and access rights"
  pAdmin -> comWebUserManagement "Admin can manage user's(patient) data"
  comWebUserManagement -> comBffWebUsersManagement "Makes API call to [JSON/HTTPS]"
  comBffWebUsersManagement -> comRestUser "Mange user's data"
  comRestUser -> comDatabaseUserTable "Reads from and writes to"

  autolayout lr
}
