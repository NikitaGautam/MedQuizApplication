package medical

import grails.plugin.springsecurity.annotation.Secured

class SubjectController {

    @Secured("ROLE_ADMIN")
    def index() {


    }

    @Secured("ROLE_USER")
    def userMain(){
//           render "This is the main page for the user"


    }
    @Secured("ROLE_ADMIN")
    def form(){

    }

    @Secured("ROLE_ADMIN")
    def save(){

        def subject = new Subject(params)
        if(subject.save(flush: true, failOnError: true)){
            redirect(controller: "subject", action: "form")
        }
        else{
            alert "Error!"

        }
    }
}
