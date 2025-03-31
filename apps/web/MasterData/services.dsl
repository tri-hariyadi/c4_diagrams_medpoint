dynamic cWeb {
  title "[Web CMS][Data Master] Services"
  description "Admin and Super Admin can manage Poli Data Master on medpoint"

  pAdmin -> comWebServices
  pSuperAdmin -> comWebServices
  comWebServices -> comBffWebServices "Makes API call to [JSON/HTTPS]"
  comBffWebServices -> comRestServices
  comRestServices -> comDatabaseServicesTable "Reads from and Writes to"

  autolayout lr
}