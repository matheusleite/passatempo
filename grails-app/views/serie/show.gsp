
<%@ page import="grails.passatempo.Serie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="maintheme">
		<g:layoutBody/>
		<g:set var="entityName" value="${message(code: 'serie.label', default: 'Serie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-serie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-serie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list serie">
			
				<g:if test="${serieInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="serie.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${serieInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.tittle}">
				<li class="fieldcontain">
					<span id="tittle-label" class="property-label"><g:message code="serie.tittle.label" default="Tittle" /></span>
					
						<span class="property-value" aria-labelledby="tittle-label"><g:fieldValue bean="${serieInstance}" field="tittle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.ageClassification}">
				<li class="fieldcontain">
					<span id="ageClassification-label" class="property-label"><g:message code="serie.ageClassification.label" default="Age Classification" /></span>
					
						<span class="property-value" aria-labelledby="ageClassification-label"><g:fieldValue bean="${serieInstance}" field="ageClassification"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.modality}">
				<li class="fieldcontain">
					<span id="modality-label" class="property-label"><g:message code="serie.modality.label" default="Modality" /></span>
					
						<span class="property-value" aria-labelledby="modality-label"><g:fieldValue bean="${serieInstance}" field="modality"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="serie.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${serieInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.numberSeasons}">
				<li class="fieldcontain">
					<span id="numberSeasons-label" class="property-label"><g:message code="serie.numberSeasons.label" default="Number Seasons" /></span>
					
						<span class="property-value" aria-labelledby="numberSeasons-label"><g:fieldValue bean="${serieInstance}" field="numberSeasons"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${serieInstance?.yearCreated}">
				<li class="fieldcontain">
					<span id="yearCreated-label" class="property-label"><g:message code="serie.yearCreated.label" default="Year Created" /></span>
					
						<span class="property-value" aria-labelledby="yearCreated-label"><g:fieldValue bean="${serieInstance}" field="yearCreated"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${serieInstance?.id}" />
					<g:link class="edit" action="edit" id="${serieInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
