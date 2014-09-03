<html>
<head>
    <meta name="layout" content="main" />
    <title>What Are You Doing?</title>
    <g:javascript library="jquery" plugin="jquery" />
</head>   
   <h1>What Are You Doing?</h1>
    <div class="updateStatusForm">
        <g:formRemote onSuccess="document.getElementById('messageArea').value='';" url="[action: 'updateStatus']" update="messageLists" name="updateStatusForm">
            <g:textArea name="message" value="" id="messageArea" /><br/>
            <g:submitButton name="Update Status" />
        </g:formRemote>
    </div>

    <div id="messageLists">
    	<g:render template="messages" collection="${messages}" var="message"/>
	</div>
</body>
</html>