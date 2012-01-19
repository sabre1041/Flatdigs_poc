<div class="fieldcontain ${hasErrors(bean: userCommand, field: 'firstName', 'error')} ">
	<label for=firstName>
		First Name
	</label>
	<g:textField name="firstName" value="${userCommand?.firstName}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: userCommand, field: 'lastName', 'error')} ">
	<label for="lastName">
		Last Name
	</label>
	<g:textField name="lastName" value="${userCommand?.lastName}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: userCommand, field: 'userName', 'error')} ">
	<label for="userNanme">
		User Name
	</label>
	<g:textField name="userName" value="${userCommand?.userName}"/>
</div>
<div class="fieldcontain ${hasErrors(bean: userCommand, field: 'password', 'error')} ">
	<label for="password">
		Password
	</label>
	<input type="password" name="password"/>
</div>
<div class="fieldcontain ${hasErrors(bean: userCommand, field: 'passwordConfirm', 'error')} ">
	<label for="passwordConfirm">
		Confirm Password
	</label>
	<input type="password" name="passwordConfirm"/>
</div>
<div class="fieldcontain ${hasErrors(bean: userCommand, field: 'email', 'error')} ">
	<label for="email">
		Email
	</label>
	<g:textField name="email" value="${userCommand?.email}"/>
</div>
