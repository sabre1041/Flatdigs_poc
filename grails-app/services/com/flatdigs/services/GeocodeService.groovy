package com.flatdigs.services

import groovy.util.slurpersupport.NodeChild

class GeocodeService {

	static transactional = true
	final GOOGLE_URL = "http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address=";
	NodeChild root
	static LOCATION_TYPE = "ROOFTOP"


	def buildPropertyFromGMap(String query)
	{
		
		def geocodeResult = [:]
		
		try
		{
			def urlXML = new URL(GOOGLE_URL + removeSpaces(query));
			
			def requestValues = ["streetNumber" : "street_number", "streetName" : "route", "city" : "localitypolitical", "state" : "administrative_area_level_1political", "zip" : "postal_code", "neighborhood" : "sublocalitypolitical"]
			
			root = new XmlSlurper().parseText(urlXML.getText())
					
			if(LOCATION_TYPE.equals(root.result.geometry.location_type.text()))
			{
			
				def xmlResponse = [:]
				
				
				requestValues.each(){ propertyParameter, gmapValue ->
					
					String result = getElement(gmapValue)
					
					if(result.size()>0) xmlResponse.put("${propertyParameter}".toString(), result)
					
				}
				
				xmlResponse << ["latitude" : root.result.geometry.location.lat.text()]
				xmlResponse << ["longitude" : root.result.geometry.location.lng.text()]
		
				
				geocodeResult.status="OK"
				geocodeResult.property = xmlResponse
				return geocodeResult
				
			}
			else
			{
				println "could not locate property"
				geocodeResult.status = "ERROR"
				geocodeResult.message = "Could Not Locate Property"
				return geocodeResult
			}
		}
		catch(Exception e)
		{
			println(e)
			geocodeResult.status = "ERROR"
			geocodeResult.message = "Error Occurred While Performing Search"
			return geocodeResult
		}
		
	}

	private String removeSpaces(String query) {
		query.replaceAll(" ", "+")
	}
	
	private getElement(String element)
	{
		root.result.address_component.find {it.type.text() == element}.long_name.text()
	}
}
