import grails.passatempo.*

class BootStrap {

    def init = { servletContext ->
        /* If there are no Person in the record. */
        if(!Person.count()) {
            createData()
        }
    }
    def destroy = {
    }
}