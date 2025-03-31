pPatient = person "Patient" {
  description "Uses the mobile app to book an appointment, view appointment details, and receive notifications."

  -> comMobileLogin "Patient can login into mobile app using email."
  -> comMobileRegister "Patient must Register if patient is not registered in the system."
  -> comMobileProfile "Patient can manage and update profile."
  -> comMobileServices "Patient can search health services by keyword."
  -> comMobileReservation "Patient can create reservation, cancel reservation, and receive notifications."
  -> comMobilePayment "Patient can make payment."
}