pAdmin = person "Admin" {
  description "Uses the Web CMS app to manage master data, schedules, reservation slots and payments"

  -> comWebLogin "Admin can login into Web CMS app using email."
  -> comWebUserManagement "Admin can manage user's data"
  -> comWebReservation "Admin can manage reservation slot"
  -> comWebFaskes "Admin can manage Faskes Data Master"
  -> comWebPoli "Admin can manage Poli Data Master"
  -> comWebServices "Admin can manage Services Data Master"
  -> comWebAddress "Admin can manage Address Data Master"
  -> comWebPayment "Admin can see Billing and payment validation"
}