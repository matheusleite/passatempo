<html>
<head>
	<meta name="layout" content="maintheme"/>
	<title>Passatempo</title>
	<g:javascript library="jquery" plugin="jquery" />
</head>
<body>
	<h1>Buscar: </h1>
	<div class="searchForm">
		<g:form controller="searchable">
			<g:textField name="q" value=""/>
		</g:form>
	</div>
	<h1>Novidades?</h1>
	<div class="udpateStatusForm">
		<g:formRemote onSuccess="document.getElementById('messageArea').value='';" url="[action: 'updateStatus']" update="messageLists" name="updateStatusForm">
			<g:textArea name="message" value="" id="messageArea"/><br/>
			<g:submitButton name="Publicar" />
		</g:formRemote>
	</div>

	<div id="messageLists">
		<g:render template="messages" collection="${messages}" var="message" />
	</div>
</body>
</html>