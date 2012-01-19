<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Flatdigs | Create Property</title>
		<script type="text/javascript">

		function updatePropertyForm(data,textStatus)
		{

				if(data.type == "ERROR")
				{	
					alert(data.message);
				}
				else
				{
					$('#totalEntry').show();
					$('#propertyEntry').append(data.viewPage)
					
					$('#initialCreation').hide();
				}
				
		}
		</script>


	</head>
	<body>
		<div id="create-user" class="content scaffold-create" role="main">
			<h1>New Property</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${intialPropertyCommand}">
			<ul class="errors" role="alert">
				<g:eachError bean="${intialPropertyCommand}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<div id='initialCreation'>
				<g:render template="newPropertyQuery"/>
			</div>
			
			<!-- Will be invisible during initial load -->
			<div id='totalEntry' style="display:none">
			
				<div id='propertyEntry'></div>
				
				<div class="buttons">
          			<span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
        		</div>
			
			</div>
		</div>
	</body>
</html>
