package medical

import grails.plugin.springsecurity.annotation.Secured

class QuestionAnswerController {
    @Secured("ROLE_USER")
    def quiz() {
        List<QuestionAnswer> randomQuestions = new ArrayList<>()

        if(params.randomQuestions) {
            String questions = params.randomQuestions.split(',');
            for(String q in questions) {
                Scanner fi = new Scanner(q as String);
                fi.useDelimiter("[^\\p{Alnum},\\.-]");
                if (fi.hasNextInt()) {
                    def id = fi.nextInt()
                    randomQuestions.add(QuestionAnswer.findById(id))
                }
            }
        }

        if(randomQuestions) {
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
