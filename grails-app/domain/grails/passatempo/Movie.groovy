package grails.passatempo

class Movie {
	String type = "Movie"
	String tittle 
	String description
	String modality
	Integer yearCreated
	Integer ageClassification
	String mainActors

    static constraints = {
    	type blindable:true
    	tittle blank:false
    	ageClassification blank:false
    	modality blank:false
    }
}