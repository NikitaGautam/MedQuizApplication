package medical

class SubjectController {

    def index() {
    render "subject index"
    }
    def form(){

    }
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
