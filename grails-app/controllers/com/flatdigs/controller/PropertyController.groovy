package com.flatdigs.controller

import com.flatdigs.Property.PropertyType
import com.flatdigs.util.State

import com.flatdigs.util.AjaxResponseEnum

class PropertyController {
	
	def propertyService

    def index() { }
	
	def create = {
		
		[ intialPropertyCommand : new InitialPropertySearchCommand() ]
	}
	
	def initialPropertyCheck = { InitialPropertySearchCommand initialPropertyCommand -> 
				
				
		if(request.xhr)
		{
			def result = propertyService.initialPropertySearch(initialPropertyCommand)
										
			render(contentType:"text/json") {
				
				if(AjaxResponseEnum.OK.equals(result.status))
				{
					type = result.status.name()
					property = result.property
					if(result.property.id==null)
					{
						viewPage = g.render(template:'newProperty', model:[propertyInstance : result.property])
					}
					else
					{
						viewPage = g.render(template:'readOnlyProperty', model:[propertyInstance : result.property])
					}
				}
				else
				{
					type = result.status.name()
					message = result.message
				}
			}
		}
		else
		{
			redirect(action:create)
		}
		
		
		
		
		/*
		if (initialPropertyCommand.hasErrors()) {
			render view: 'create', model: [intialPropertyCommand : initialPropertyCommand]
			return
		}
		else
		{
			render "Success!"
		}
		*/
		
		
		
		
		
	}
}

class InitialPropertySearchCommand
{
	String streetNumber
	String streetName
	String city
	PropertyType propertyType
	State state
	String zip
	
	static constraints = {
		propertyType blank : false, nullable : false
		streetNumber blank : false
		streetName blank : false
		city blank : false
		state blank : false, nullable : false
		zip blank : false
	}
	
	String toString()
	{
		"${streetNumber} ${streetName} ${city} ${state} ${zip} "
	}
}
