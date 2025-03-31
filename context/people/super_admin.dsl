pSuperAdmin = person "Super Admin" {
  description "Uses the Web CMS app to manage all master data and user access rights"

  -> comWebLogin "Super Admin can login into Web CMS app using email."
  -> comWebUserManagement
  -> comWebDoctor
  -> comWebReservation "Super Admin can manage reservation slot"
  -> comWebFaskes "Super Admin can manage CRUD Faskes Data Master"
  -> comWebPoli "Super Admin can manage CRUD Poli Data Master"
  -> comWebServices "Super Admin can manage CRUD Services Data Master"
  -> comWebAddress "Super Admin can manage CRUD Address Data Master"
}