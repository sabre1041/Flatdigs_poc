<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Flatdigs | User Registration</title>
	</head>
	<body>
		<div id="create-user" class="content scaffold-create" role="main">
			<h1>New User Registration</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${userCommand}">
			<ul class="errors" role="alert">
				<g:eachError bean="${userCommand}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="create" >
				<fieldset class="form">
					<g:render template="newUser"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save" value="Register" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
