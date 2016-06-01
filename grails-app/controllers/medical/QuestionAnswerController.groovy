package medical

import grails.plugin.springsecurity.annotation.Secured

class QuestionAnswerController {
    @Secured("ROLE_USER")
    def quiz() {

    }

    @Secured("ROLE_ADMIN")
    def form() {
        def subject = Subject.list()
        [subject:subject.subject_name]

    }


    def save(){
        params.subject_name=Subject.findBySubject_name(params.subject_name).id
        def qa = new QuestionAnswer(params)
        if(qa.save()){
            render "Data saved"
        }
        else {
            render "Data not saved"
        }

    }
}
