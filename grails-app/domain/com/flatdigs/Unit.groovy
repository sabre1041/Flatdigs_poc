package com.flatdigs

import com.flatdigs.auth.User
import com.flatdigs.Property


class Unit {

	static belongsTo = [ property : Property ]
	
	//static hasOne = [ currentLease : Lease, pendingLease : Lease, owner : User ]
	
	static hasOne = [ owner : User ]
	
	String number
	Integer bedrooms
	Integer bathrooms
	Date dateCreated
	Date lastUpdated
	Integer floors
	boolean available
	BigDecimal averageGas
	BigDecimal averageElectricity
	
	User owner
	
    static constraints = {
    }
}
