package medical

class QuestionAnswer {
     static belongsTo = [subject: Subject]
    String question
    String ans1,ans2,ans3,ans4
    static constraints = {
        question blank: false
        ans1 blank: false
        ans2 blank: false
        ans3 blank: false
        ans4 blank: false
    }
    static hasOne = [correct:CorrectAnswer]
}
