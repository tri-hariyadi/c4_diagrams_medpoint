dynamic cWeb {
    title "[Web CMS][Auth] Login"
    description "Super Admin, Admin, and Doctor could login into Web CMS app using email/password"

    pSuperAdmin -> comWebLogin
    pAdmin -> comWebLogin
    pDoctor -> comWebLogin
    comWebLogin -> comBffWebAuth "Login with email/password"

    comBffWebAuth -> comRestUser "Check login user if exist"
    comRestUser -> comDatabaseUserTable "Get user"

    comBffWebAuth -> comAuthEmailLoginInternal "Login with email/password"

    autolayout lr
}
