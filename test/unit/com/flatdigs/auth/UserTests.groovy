package com.flatdigs.auth



import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserTests {


	
	void testToString()
	{
		def user = new User(firstName:"Andy", lastName:"Block")
		
		assert "Andy Block" == user.toString()
	}
}
