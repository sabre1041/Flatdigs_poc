package com.flatdigs

import com.flatdigs.util.State
import com.flatdigs.auth.User


class Property {
	
	public enum PropertyType implements Serializable {
		TOWNHOUSE("Townhouse"),
		APARTMENT_BUILDING("Apartment Building"),
		SINGLE_FAMILY("Single Family"),
		CORPORATE_HOUSING("Corporate Housing")
		
 
		final String value;
 
		PropertyType(String value) {
			this.value = value;
		}
		String toString(){
			value;
		}
		
		String getValue()
		{
			value;
		}
		
		String getKey()
		 {
			 name()
		 }
		 
		 static list() {
			 [TOWNHOUSE, APARTMENT_BUILDING, SINGLE_FAMILY, CORPORATE_HOUSING]
		 }
	}
	
	String name
	String description
	PropertyType propertyType
	Integer floors
	Date opened
	Date closed
	boolean active
	
	String streetNumber
	String streetName
	String city
	State state
	String zip
	String latitude
	String longitude
	
	static hasMany = [ units : Unit ]
	static hasOne = [ manager : User ]
	

    static constraints = {
		streetNumber blank : false
		propertyType nullable : false
		streetNumber blank : false
		streetName blank : false
		city blank : false
		state nullable : false
		zip blank : false
		latitude blank : false
		longitude blank : false
		
		// Optional Fields
		closed nullable : true
		description nullable : true
		manager nullable : true
		name nullable : true
		opened nullable : true
    }
	
	String toString()
	{
		"${streetNumber} ${streetName}"
	}
}
