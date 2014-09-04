package grails.passatempo

class Serie {

    String type = 'Serie'
	String tittle 
	String description
	String modality
	Integer yearCreated
	Integer ageClassification
	Integer numberSeasons

    static constraints = {
    	type blindable: true
    	tittle blank: false, unique: true
    	ageClassification blank: false
    	modality blank:false
    }
}
