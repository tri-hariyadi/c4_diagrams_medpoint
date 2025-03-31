dynamic cWeb {
  title "[Web CMS][Data Master] Address"
  description "Admin and Super Admin can manage Address Data Master on medpoint"

  pAdmin -> comWebAddress
  pSuperAdmin -> comWebAddress
  comWebAddress -> comBffWebAddress "Makes API call to [JSON/HTTPS]"
  comBffWebAddress -> comRestAddress
  comRestAddress -> comDatabaseAddressTable "Reads from and Writes to"

  autolayout lr
}