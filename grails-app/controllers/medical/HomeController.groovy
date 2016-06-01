package medical

import grails.plugin.springsecurity.annotation.Secured

@Secured(["ROLE_USER", "ROLE_ADMIN"])
class HomeController {

    def springSecurityService


    def index() {

        def user = springSecurityService.currentUser
        if(UserRole.findByUser(user).role.authority == "ROLE_ADMIN"){
            redirect(controller: "subject", action: "index")
        }
        else  if(UserRole.findByUser(user).role.authority == "ROLE_USER"){
            redirect(controller: "subject", action: "userMain")
        }
    }
}
