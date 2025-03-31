dynamic cMobile {
    title "[Mobile][Auth] Login and Register"
    description "Patient could login into mobile app using email/password"

    pPatient -> comMobileRegister
    comMobileRegister -> comBffMobileRegister "Register with email and password"
    comBffMobileRegister -> comRestUser "Check user account if exist"
    comRestUser -> comDatabaseUserTable "Store data user acount"

    pPatient -> comMobileLogin
    comMobileLogin -> comBffMobileAuth "Login with email/password"

    comBffMobileAuth -> comRestUser "Check login user if exist"
    comRestUser -> comDatabaseUserTable "Get user"

    comBffMobileAuth -> comAuthEmailLogin "Login with email/password"
    comAuthEmailLogin -> ssExternalAuth "Login using external auth"

    autolayout lr
}
