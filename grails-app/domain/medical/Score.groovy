package medical

class Score {
    User user
    Subject subject
    int score
    static constraints = {
        user nullable: true
        subject nullable: true
    }
}
