package medical

class QuestionAnswer {

    String question
    String ans1,ans2,ans3,ans4
    Subject subject
    int correct
    static constraints = {
        question blank: false
        ans1 blank: false
        ans2 blank: false
        ans3 blank: false
        ans4 blank: false
        subject nullable: false
        correct min: 1, max: 4
    }
}
