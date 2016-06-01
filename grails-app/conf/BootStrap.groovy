import medical.Role
import medical.User
import medical.UserRole

class BootStrap {
    def init = {
        servletContext ->
            def adminRole
            def userRole
            if(!Role.findByAuthority('ROLE_ADMIN')) {
                adminRole = new Role('ROLE_ADMIN').save(flush: true, failOnError: true)

            }
            if(!Role.findByAuthority('ROLE_USER')) {
                userRole = new Role('ROLE_USER').save(flush: true, failOnError: true)
            }
            if(!User.findByUsername('me')){
                def testUser = new User('me', 'asd').save(flush: true, failOnError: true)
                UserRole.create(testUser, adminRole, true)
                assert User.count() == 1
                assert Role.count() == 2
                assert UserRole.count() == 1
            }

    }

    def destroy = {
    }
}