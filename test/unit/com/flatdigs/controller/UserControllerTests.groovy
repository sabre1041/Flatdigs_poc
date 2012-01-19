package com.flatdigs.controller



import grails.test.mixin.*
import org.junit.*
import com.flatdigs.auth.User

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(UserController)
@Mock(User)
class UserControllerTests {

	
	void testGetCreateRedirect()
	{
		mockForConstraintsTests(User)
		
		request.method = 'GET'
		controller.create()
		
		assert response.redirectedUrl == "/user/register"
	}
	
	void testRegisterCommand()
	{
		
		def registerUserCommand = mockCommandObject(RegisterUserCommand)
		registerUserCommand.userName = ''
		
		
		assert !registerUserCommand.validate()
		assert null != registerUserCommand.errors['userName']		
	}
	
	void testRenderTemplateErrors()
	{
		params.user=''
		
		controller.create()
		
		assert model.userCommand !=null
		assert view == "/user/register"
	}
	
	void testPassword()
	{
		def registerUserCommand = mockCommandObject(RegisterUserCommand)
		registerUserCommand.password = 'testing12'
		registerUserCommand.passwordConfirm = 'testing1232'
		
		assert !registerUserCommand.validate()
		assert null != registerUserCommand.errors['password']
		
		
		def registerUserCommand2 = mockCommandObject(RegisterUserCommand)
		registerUserCommand2.password = 'testing12'
		registerUserCommand2.passwordConfirm = 'testing12'
		
		assert !registerUserCommand2.validate()
		assert null == registerUserCommand2.errors['password']
		
	}
}
