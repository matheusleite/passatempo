<html>
<head>
    <meta name="layout" content="main" />
    <title>Passatempo</title>
    <g:javascript library="jquery" plugin="jquery" />
</head>   
   <h1>O que há de novo?</h1>
    <div class="updateStatusForm">
        <g:formRemote onSuccess="document.getElementById('messageArea').value='';" url="[action: 'updateStatus']" update="messageLists" name="updateStatusForm">
            <g:textArea name="message" value="" id="messageArea" /><br/>
            <g:submitButton name="Atualizar" />
        </g:formRemote>
    </div>

    <div id="messageLists">
    	<g:render template="messages" collection="${messages}" var="message"/>
	</div>
</body>
</html>