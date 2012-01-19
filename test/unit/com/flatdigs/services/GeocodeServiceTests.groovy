package com.flatdigs.services

import com.flatdigs.util.AjaxResponseEnum
import grails.test.mixin.*
import org.junit.*

/**
 * See the API for {@link grails.test.mixin.services.ServiceUnitTestMixin} for usage instructions
 */
@TestFor(GeocodeService)
class GeocodeServiceTests {

    void testInvalidAddress() {
        def address = "123 Fake Street"
				
		def result =  service.buildPropertyFromGMap(address)
		
		assert result.status == AjaxResponseEnum.ERROR.name()
		assert result.message == "Could Not Locate Property" 
    }

	void testValidAddress() {
		
		def address2 = "1143 West George Chicago IL 60657"
	
		def result = service.buildPropertyFromGMap(address2)		
		
		
		assert result.property != null
		assert result.property.size() == 8
		assert result.property.streetName == "W George St"
		assert result.property.state == "Illinois"
		
	}
}
