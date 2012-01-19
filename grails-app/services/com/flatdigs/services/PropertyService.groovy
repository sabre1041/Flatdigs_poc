package com.flatdigs.services

import com.flatdigs.controller.InitialPropertySearchCommand
import com.flatdigs.Property
import com.flatdigs.util.AjaxResponseEnum
import com.flatdigs.util.State

class PropertyService {
	
	def geocodeService

    def initialPropertySearch(initialPropertyCommand) {
		
		String propertyAddress = initialPropertyCommand.toString()
		
		def geocodeResult = geocodeService.buildPropertyFromGMap(propertyAddress);
		
		def result = [:]
		
		if(AjaxResponseEnum.ERROR.equals(geocodeResult.status))
		{
			result.message = geocodeResult.message
			result.status = AjaxResponseEnum.ERROR
		}
		else
		{
			
			
			def prop = Property.findByLatitudeAndLongitude(geocodeResult.property.latitude, geocodeResult.property.longitude)

			if(prop == null)
			{
				geocodeResult.property.remove("state")
				
				prop = new Property(geocodeResult.property)
				prop.state = initialPropertyCommand.state
				prop.propertyType = initialPropertyCommand.propertyType
			}
						

			result.property = prop
			result.status = AjaxResponseEnum.OK
		}
		
		return result
    }
}
