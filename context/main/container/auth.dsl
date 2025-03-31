cAuth = container "Supabase Auth service" {
  description "Backend to handle authn/authz"
  technology "Supabase"

  comAuthEmailLogin = component "Auth Email Login" {
    description "Handle /login/email"
    -> comDatabaseUserTable "Check if user's email exists"
    -> ssExternalAuth "Initiate Username/Password auth flow"
  }

  comAuthEmailRegister = component "Auth Email Register" {
    description "Handle /register"
    -> comDatabaseUserTable "Check if user's email exists"
  }
}

cAuthInternal = container "Supabase Auth service internal" {
  description "Backend to handle authn/authz"
  technology "Supabase"

  comAuthEmailLoginInternal = component "Auth Email Login Internal" {
    description "Handle /login/email"
    -> comDatabaseUserTable "Check if user's email exists"
  }
}
