import grails.passatempo.*

class BootStrap {

    def init = { servletContext ->
    	if(!Person.count()){
    		createData()
    	}
    }
    def destroy = {
    }

    private void createData(){

    	def userRole = new Authority(authority: 'ROLE_USER').save()

    	String password = 'admin'

    	[admin: 'Administrador', user: 'Usuario'].each {userName, realName ->
    		def user = new Person(username: userName, realName: realName, password: password, enable:true, accountExpired: false, accountLocked: false).save()
    		PersonAuthority.create(user, userRole, true)
    	}
 	}
}
