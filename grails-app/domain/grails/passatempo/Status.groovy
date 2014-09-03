package grails.passatempo

class Status {

	String message
	Person author
	Date dateCreated

    static constraints = {
    	message blank:false
    }
}
