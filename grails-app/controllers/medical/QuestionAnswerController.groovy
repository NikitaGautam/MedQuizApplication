package medical

import grails.plugin.springsecurity.annotation.Secured

class QuestionAnswerController {
    @Secured("ROLE_USER")
    def quiz() {

        List<QuestionAnswer> randomQuestions = new ArrayList<>()
//        println(params.randomQuestions)
        if(params.randomQuestions) {
            def s = params.randomQuestions
            s = s.replaceAll("[\\D]+", ",")
            s = s.substring(1,s.length() - 1)
//            println(s)
            String[] questions = s.split(',');
            println "sdfsdfs"
            for(String q in questions) {
                    def id = q as int
//                    println(id)
                    def questionAnswer = QuestionAnswer.findById(id)
                    if(questionAnswer)randomQuestions.add(questionAnswer)
            }
            println(randomQuestions)
        }

        def score = params.score
        if(randomQuestions) {
            def correctValue = randomQuestions.get(params.index as int).correct
            if ((params.options as int) == (correctValue)) {
                println("correct")
                score++

            }else {
                println("incorrect")
            }

            if(params.index as int  == randomQuestions.size() - 1) {

                params.score = score
                redirect(action: 'score', params: params)
                return
            }

            [index: (params.index as int) + 1, randomQuestions: randomQuestions, score: score]
        }
        else {

            randomQuestions = QuestionAnswer.findAllBySubject(Subject.findById(params.id))
            long seed = System.nanoTime();
            Collections.shuffle(randomQuestions, new Random(seed))
//            println(randomQuestions)
//            println randomQuestions.size()

            [randomQuestions: randomQuestions, score: 0, index: 0, subject: Subject.findById(params.id).subject_name]
        }
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
    def score(){

        [score: params.score]
    }


    @Secured("ROLE_USER")
    def test(){

    }
}
