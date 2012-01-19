package com.flatdigs.auth

import com.flatdigs.Unit
import com.flatdigs.Property

class User extends SecUser {
	
	String firstName
	String lastName
	int age
	int creditScore
	String email
	
	static hasMany = [props : Property, unit : Unit]

    static constraints = {
		firstName blank : false
		lastName blank : false
		
    }
	
	String toString()
	{
		"${firstName} ${lastName}"
	}
}
