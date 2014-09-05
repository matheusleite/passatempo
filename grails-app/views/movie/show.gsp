
<%@ page import="grails.passatempo.Movie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="maintheme">
		<g:layoutBody/>
		<g:set var="entityName" value="${message(code: 'movie.label', default: 'Movie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-movie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-movie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list movie">
			
				<g:if test="${movieInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="movie.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${movieInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.tittle}">
				<li class="fieldcontain">
					<span id="tittle-label" class="property-label"><g:message code="movie.tittle.label" default="Tittle" /></span>
					
						<span class="property-value" aria-labelledby="tittle-label"><g:fieldValue bean="${movieInstance}" field="tittle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.ageClassification}">
				<li class="fieldcontain">
					<span id="ageClassification-label" class="property-label"><g:message code="movie.ageClassification.label" default="Age Classification" /></span>
					
						<span class="property-value" aria-labelledby="ageClassification-label"><g:fieldValue bean="${movieInstance}" field="ageClassification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.modality}">
				<li class="fieldcontain">
					<span id="modality-label" class="property-label"><g:message code="movie.modality.label" default="Modality" /></span>
					
						<span class="property-value" aria-labelledby="modality-label"><g:fieldValue bean="${movieInstance}" field="modality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="movie.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${movieInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.mainActors}">
				<li class="fieldcontain">
					<span id="mainActors-label" class="property-label"><g:message code="movie.mainActors.label" default="Main Actors" /></span>
					
						<span class="property-value" aria-labelledby="mainActors-label"><g:fieldValue bean="${movieInstance}" field="mainActors"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${movieInstance?.yearCreated}">
				<li class="fieldcontain">
					<span id="yearCreated-label" class="property-label"><g:message code="movie.yearCreated.label" default="Year Created" /></span>
					
						<span class="property-value" aria-labelledby="yearCreated-label"><g:fieldValue bean="${movieInstance}" field="yearCreated"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${movieInstance?.id}" />
					<g:link class="edit" action="edit" id="${movieInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
