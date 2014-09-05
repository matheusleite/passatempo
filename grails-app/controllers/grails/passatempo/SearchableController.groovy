package grails.passatempo
import org.compass.core.engine.SearchEngineQueryParseException
import grails.plugins.springsecurity.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class SearchableController {
	def searchableService

	def index = {
		if (!params.q?.trim()) {
			return [:]
		}
		try {
			return [searchResult: searchableService.search(params.q, params)]
		} catch (SearchEngineQueryParseException ex) {
			return [parseException: true]
		}
	}

	def indexAll = {
		Thread.start {
			searchableService.index()
		}
		render("bulk index started in a background thread")
	}

	def unindexAll = {
		searchableService.unindex()
		render("unindexAll done")
	}
}