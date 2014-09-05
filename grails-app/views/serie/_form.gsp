<%@ page import="grails.passatempo.Serie" %>




<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'tittle', 'error')} required">
	<label for="tittle">
		<g:message code="serie.tittle.label" default="Título:" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tittle" required="" value="${serieInstance?.tittle}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="serie.description.label" default="Descrição:" />
		
	</label>
	<g:textField name="description" value="${serieInstance?.description}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'modality', 'error')} required">
	<label for="modality">
		<g:message code="serie.modality.label" default="Modalidade:" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modality" required="" value="${serieInstance?.modality}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'ageClassification', 'error')} required">
	<label for="ageClassification">
		<g:message code="serie.ageClassification.label" default="Classificação Etária:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ageClassification" type="number" value="${serieInstance.ageClassification}" required=""/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'numberSeasons', 'error')} required">
	<label for="numberSeasons">
		<g:message code="serie.numberSeasons.label" default="Quantidade de Temporadas:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numberSeasons" type="number" value="${serieInstance.numberSeasons}" required=""/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: serieInstance, field: 'yearCreated', 'error')} required">
	<label for="yearCreated">
		<g:message code="serie.yearCreated.label" default="Criado no ano:" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="yearCreated" type="number" value="${serieInstance.yearCreated}" required=""/>
</div>
<br>
<br>

