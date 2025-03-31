dynamic cWeb {
  title "[Web CMS][Data Master] Poli"
  description "Admin and Super Admin can manage Poli Data Master on medpoint"

  pAdmin -> comWebPoli
  pSuperAdmin -> comWebPoli
  comWebPoli -> comBffWebPoli "Makes API call to [JSON/HTTPS]"
  comBffWebPoli -> comRestPoli
  comRestPoli -> comDatabasePoliTable "Reads from and Writes to"

  autolayout lr
}