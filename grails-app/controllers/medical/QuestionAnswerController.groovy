package medical

import grails.plugin.springsecurity.annotation.Secured

class QuestionAnswerController {
    @Secured("ROLE_USER")
    def quiz() {
//       [question: QuestionAnswer.findBySubject(Subject.findById(params.id))]
        String ques = params.randomQuestions
        if(params.randomQuestions)
            List<QuestionAnswer> randomQuestions = new ArrayList<>(params.randomQuestions)
        else
            List<QuestionAnswer> randomQuestions = new ArrayList<>()

        println "fasfasjdflkasjdf"
        println randomQuestions
        if(randomQuestions) {
            println params.options + "fasfasjdflkasjdf"
            [index: params.index + 1, randomQuestions: randomQuestions]
        }else

            randomQuestions = QuestionAnswer.findAllBySubject(Subject.findById(params.id))
            long seed = System.nanoTime();

            Collections.shuffle(randomQuestions, new Random(seed))

            println randomQuestions.size()

            [randomQuestions: randomQuestions, index: 0]
    }

    @Secured("ROLE_ADMIN")
    def form() {
        flash.message = params.message
        [subject:Subject.all]
    }

    @Secured("ROLE_ADMIN")
    def saveForm(){
        println("entered")
        def qa = new QuestionAnswer(params)
        if(qa.save(flush: true, failOnError: true)){
            redirect(controller: "questionAnswer", action: "form", params: [message: "saved"])
        }
        else {
            redirect(controller: "questionAnswer", action: "form", params: [message: "notSaved"])

        }

    }
    @Secured("ROLE_USER")
    def quizCheck(){

    }
}
