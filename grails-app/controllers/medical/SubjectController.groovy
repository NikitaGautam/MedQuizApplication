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
        if(subject.save()){
            render "subject saved"
        }
        else{
            render "subject not saved"
        }
    }
}
