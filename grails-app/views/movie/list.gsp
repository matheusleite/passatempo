
<%@ page import="grails.passatempo.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="maintheme">
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-movie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'movie.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="tittle" title="${message(code: 'movie.tittle.label', default: 'Tittle')}" />
					
						<g:sortableColumn property="ageClassification" title="${message(code: 'movie.ageClassification.label', default: 'Age Classification')}" />
					
						<g:sortableColumn property="modality" title="${message(code: 'movie.modality.label', default: 'Modality')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'movie.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="mainActors" title="${message(code: 'movie.mainActors.label', default: 'Main Actors')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${movieInstanceList}" status="i" var="movieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${movieInstance.id}">${fieldValue(bean: movieInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: movieInstance, field: "tittle")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "ageClassification")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "modality")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: movieInstance, field: "mainActors")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${movieInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
