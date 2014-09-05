
<%@ page import="grails.passatempo.Serie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="maintheme">
		<g:set var="entityName" value="${message(code: 'serie.label', default: 'Serie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-serie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-serie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="type" title="${message(code: 'serie.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="tittle" title="${message(code: 'serie.tittle.label', default: 'Tittle')}" />
					
						<g:sortableColumn property="ageClassification" title="${message(code: 'serie.ageClassification.label', default: 'Age Classification')}" />
					
						<g:sortableColumn property="modality" title="${message(code: 'serie.modality.label', default: 'Modality')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'serie.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="numberSeasons" title="${message(code: 'serie.numberSeasons.label', default: 'Number Seasons')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${serieInstanceList}" status="i" var="serieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${serieInstance.id}">${fieldValue(bean: serieInstance, field: "type")}</g:link></td>
					
						<td>${fieldValue(bean: serieInstance, field: "tittle")}</td>
					
						<td>${fieldValue(bean: serieInstance, field: "ageClassification")}</td>
					
						<td>${fieldValue(bean: serieInstance, field: "modality")}</td>
					
						<td>${fieldValue(bean: serieInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: serieInstance, field: "numberSeasons")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${serieInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
