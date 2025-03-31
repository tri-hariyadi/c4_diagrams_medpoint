dynamic cMobile {
  title "[Mobile][Services] Search Health Services"
  description "Patient can health search services available on medpoint"

  pPatient -> comMobileServices
  comMobileServices -> comBffMobileServices "Makes API call to [JSON/HTTPS]"
  comBffMobileServices -> comRestServices "Get health services or Search health services by keyword"
  comRestServices -> comDatabaseServicesTable "Reads data services"

  autolayout lr
}
