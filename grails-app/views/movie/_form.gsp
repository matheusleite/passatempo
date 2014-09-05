<%@ page import="grails.passatempo.Movie" %>


<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'tittle', 'error')} required">
	<label for="tittle">
		<g:message code="movie.tittle.label" default="Título:" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tittle" required="" value="${movieInstance?.tittle}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="movie.description.label" default="Descrição:" />
		
	</label>
	<g:textField name="description" value="${movieInstance?.description}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'modality', 'error')} required">
	<label for="modality">
		<g:message code="movie.modality.label" default="Modalidade:" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modality" required="" value="${movieInstance?.modality}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'mainActors', 'error')} ">
	<label for="mainActors">
		<g:message code="movie.mainActors.label" default="Atores Principais:" />
		
	</label>
	<g:textField name="mainActors" value="${movieInstance?.mainActors}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'ageClassification', 'error')} required">
	<label for="ageClassification">
		<g:message code="movie.ageClassification.label" default="Classificação Etária:" />
	</label>
	<g:field name="ageClassification" type="number" value="${movieInstance.ageClassification}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: movieInstance, field: 'yearCreated', 'error')} required">
	<label for="yearCreated">
		<g:message code="movie.yearCreated.label" default="Criado no ano:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="yearCreated" type="number" value="${movieInstance.yearCreated}" required=""/>
</div>
<br>
<br>
