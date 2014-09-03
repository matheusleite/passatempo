package grails.passatempo

import grails.plugins.springsecurity.Secured
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils.*
import org.springframework.dao.DataIntegrityViolationException

@Secured(['IS_AUTHENTICATED_FULLY'])

class StatusController {

    def springSecurityService

    def index() {
        def msgs = currentUserTimeLine()
        return [messages: msgs] // this is a map. key=>value
    }

   def updateStatus = {
        def status = new Status(message: params.message)
        status.author = lookupPerson()
        status.save()
        def messages = currentUserTimeLine()
        render template: 'messages', collection: messages, var: 'message'
    }

    private lookupPerson() {
        Person.get(springSecurityService.principal.id)
    }

    private currentUserTimeLine() {
        def per = lookupPerson()
        def query = Status.whereAny {
            author { username == per.username }
        }.order 'dateCreated', 'desc'
        def messages = query.list(max: 10)
        messages
    }
}
