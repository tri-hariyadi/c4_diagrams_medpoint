### Prerequesites
- Make sure docker is installed in your machine https://www.docker.com

### How to run

1. Clone this repo
2. Run `make run` in terminal
3. Navigate to localhost:8086 for the C4 diagram

# C4 Diagram
## Context (C1)
![image](preview/context_diagram.png)

## Container (C2)
![image](preview/container_diagram.png)

## User story
### Mobile App
1. [Mobile][Auth] Login and Register
   ![image](preview/mobile_auth.png)
2. [Mobile][Manage Profile] Profile
   User patient can manage data profile
   ![image](preview/mobile_manage_profile.png)
3. [Mobile][Services] Search and see list health services
   Show list health services
   ![image](preview/mobile_services.png)
4. [Mobile][Reservation] Reservation
   ![image](preview/mobile_reservation.png)
5. [Mobile][Payment] Payment
   ![image](preview/mobile_payment.png)

### Web CMS
1. [Web CMS][Auth] Login
   ![image](preview/web_auth.png)
2. [Web CMS][User Management] User Management
   ![image](preview/web_user_management.png)
3. [Web CMS][Data Doctor] Data Doctor
   ![image](preview/web_doctor.png)
4. [Web CMS][Data Master] Faskes
   ![image](preview/web_faskes.png)
5. [Web CMS][Data Master] Poli
   ![image](preview/web_poli.png)
6. [Web CMS][Data Master] Services
   ![image](preview/web_services.png)
7. [Web CMS][Data Master] Address
   ![image](preview/web_address.png)
8. [Web CMS][Reservation] Reservation
   ![image](preview/web_reservation.png)
9. [Web CMS][Payment] Payment
   ![image](preview/web_payment.png)

## Code Diagram (C4)
1. [Login]
   ![image](preview/login_c4.png)
2. [Reservation]
   ![image](preview/reservation_c4.png)
