dynamic cMobile {
  title "[Mobile][Manage Profile] Profile"
  description "Patient could login into mobile app using email/password"

  pPatient -> comMobileProfile
  comMobileProfile -> comBffMobileProfile "Makes API call to [JSON/HTTPS]"
  comBffMobileProfile -> comRestProfile "Mange user profile"
  comRestProfile -> comDatabaseUserTable "Reads from and write to"
  comRestProfile -> ssExternalMessaging "Call notifications if success update profile"
  ssExternalMessaging -> pPatient "Send push notifications"
//  ssExternalMessaging -> comMobileProfile "Send push notifications"
//  comMobileProfile -> pPatient "Send notification"

  autolayout lr
}
