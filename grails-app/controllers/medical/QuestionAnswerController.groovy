package medical

class QuestionAnswerController {

    def index() {}

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
