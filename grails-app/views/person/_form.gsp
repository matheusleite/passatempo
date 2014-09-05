<%@ page import="grails.passatempo.Person" %>


<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'realName', 'error')} ">
	<label for="realName">
		<g:message code="person.realName.label" default="Nome Completo:" />
		
	</label>
	<g:textField name="realName" value="${personInstance?.realName}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="person.username.label" default="Nome de usuário:" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${personInstance?.username}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="person.password.label" default="Senha:" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${personInstance?.password}"/>
</div>



