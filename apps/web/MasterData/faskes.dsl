dynamic cWeb {
  title "[Web CMS][Data Master] Faskes"
  description "Admin and Super Admin can manage faskes on medpoint"

  pAdmin -> comWebFaskes
  pSuperAdmin -> comWebFaskes
  comWebFaskes -> comBffWebFaskes "Makes API call to [JSON/HTTPS]"
  comBffWebFaskes -> comRestFaskes
  comRestFaskes -> comDatabaseFaskesTable "Reads from and Writes to"

  autolayout lr
}