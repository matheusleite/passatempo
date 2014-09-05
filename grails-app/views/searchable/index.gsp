<html>
<head>
	<meta name="layout" content="maintheme" />
</head>
<body>
	<g:each var="person" in="${searchResult?.results}">
	<div id="name">
		<g:link id="${person.id}" action="follow" controller="status">Seguir </g:link>${person.realName}
	</div>
	</g:each>
</body>
</html>