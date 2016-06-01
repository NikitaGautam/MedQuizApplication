package medical

import grails.plugin.springsecurity.annotation.Secured


class UserController {
    @Secured("permitAll")
    def index() {}

    @Secured("permitAll")
    def register (){
        println("entered")
     def user = new User(params)
        if(user.save(flush: true, failOnError: true)){
           redirect(controller: 'subject',action: 'userMain')
        }
        UserRole.create(user,Role.findByAuthority('ROLE_USER'),true)

    }
}
