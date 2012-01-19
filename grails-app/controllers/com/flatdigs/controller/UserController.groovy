package com.flatdigs.controller

import com.flatdigs.auth.User
import com.flatdigs.auth.SecRole
import com.flatdigs.auth.SecUserSecRole

import grails.plugins.springsecurity.Secured

class UserController {	
	
    def index = {
		render User.list().size()
		 }
	
	def register = {
		[ userCommand : new RegisterUserCommand() ]
	}
	
	@Secured(['ROLE_RENTER', 'ROLE_ADMIN'])
	def secured = {
		
		render "This is a secured page"
	}
	
	
	def create = { RegisterUserCommand userCommand ->
		
		if(request.method!='POST')
		{
			redirect(action:register)
		}
		
		if (userCommand.hasErrors()) {
			render view: 'register', model: [userCommand : userCommand]
			return
		}
		
		
		def user = new User(username : userCommand.userName, firstName : userCommand.firstName,
			 lastName : userCommand.lastName, email : userCommand.email, password : userCommand.password, enabled : true)
		

		
		def role = SecRole.findByAuthority("ROLE_RENTER")
		
		user.save(flush : true, failOnError : true);
		
		
		SecUserSecRole.create(user, role)
						
		redirect(action : "index")
		
	}
	
}

class RegisterUserCommand
{
	String userName
	String firstName
	String lastName
	String email
	String password
	String passwordConfirm
	
	static constraints = {
		userName blank : false, validator: { value, obj ->
			if(value)
			{
				if (User.findByUsername(value)) {
					return 'unique'
				}
			}			
		}
		firstName blank : false
		lastName blank : false
		email blank : false, email : true
		password blank : false, minSize : 6, validator: { value, obj ->
			if(obj.passwordConfirm != value)
			{ 
				return 'mismatch'
			}
		}
		passwordConfirm blank : false, minSize : 6
	}
}
