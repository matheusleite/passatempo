<html>
<head>
	<meta name="layout" content="main"/>
	<title>Passatempo</title>
	<g:javascript library="jquery" plugin="jquery" />
</head>
<body>
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