<%@ page import="grails.passatempo.Book" %>

<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'tittle', 'error')} required">
	<label for="tittle">
		<g:message code="book.tittle.label" default="Título: " />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tittle" required="" value="${bookInstance?.tittle}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'author', 'error')} required">
	<label for="author">
		<g:message code="book.author.label" default="Autor:" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="author" required="" value="${bookInstance?.author}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'publisher', 'error')} ">
	<label for="publisher">
		<g:message code="book.publisher.label" default="Editora:" />
		
	</label>
	<g:textField name="publisher" value="${bookInstance?.publisher}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'modality', 'error')} required">
	<label for="modality">
		<g:message code="book.modality.label" default="Modalidade:" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="modality" required="" value="${bookInstance?.modality}"/>
</div>
<br>
<div class="fieldcontain ${hasErrors(bean: bookInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="book.description.label" default="Descrição:" />
		
	</label>
	<g:textField name="description" value="${bookInstance?.description}"/>
</div>
<br>
<br>


