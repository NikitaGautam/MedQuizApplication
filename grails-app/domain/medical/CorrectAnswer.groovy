package medical

class CorrectAnswer {
   static belongsTo = [question:QuestionAnswer]
    String correct_answer
    static constraints = {
    }
}
