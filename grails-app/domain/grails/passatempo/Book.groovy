package grails.passatempo

class Book {
	String type = 'Book'
	String tittle
	String description
	String modality
	String author
	String publisher

    static constraints = {
    	type blindable:true
    	tittle blank:false, unique:true
    	author blank:false
    	modality blank:false
    }
}
