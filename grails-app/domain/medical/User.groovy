package medical

class User {
    String fname
    String lname
    String email
    String password

    static constraints = {
        fname blank: false, nullable: false
        password blank: false, nullable:false
        email blank: false, email: true, unique: true
    }
}
