dynamic cWeb {
  title "[Web CMS][Data Doctor] Doctor"
  description "Super Admin can see list doctor and manage CRUD Data Doctor"

  pSuperAdmin -> comWebDoctor "Super Admin can see the list of Doctor data and can manage it"
  comWebDoctor -> comBffWebUsersManagement "Makes API call to [JSON/HTTPS]"
  comBffWebUsersManagement -> comRestUser "Retrieving data doctor and manage CRUD data doctor"
  comRestUser -> comDatabaseUserTable "Reads from and Writes to"

  autolayout lr
}