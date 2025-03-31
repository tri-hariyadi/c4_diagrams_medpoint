pDoctor = person "Doctor" {
  description "Uses the Web CMS app to providing reservation slots, approving reservations, providing consultations and prescriptions."

  -> comWebLogin "Doctor can login into Web CMS app using email."
  -> comWebReservation "Doctor can providing reservation slots, approving reservations"
}