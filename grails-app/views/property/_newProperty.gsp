    <%@ page import="com.flatdigs.util.State" %>
    <%@ page import="com.flatdigs.Property.PropertyType" %>
                <g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${propertyInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${propertyInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
                
                <div class="dialog">
                    <table>
                        <tbody>  
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="property.propertyType.label" default="Property Type" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'state', 'errors')}">
                                    <g:select noSelection="['' :'Select Property Type']" optionKey="key" name="property.propertyType" from="${PropertyType.list()}" value="${propertyInstance?.propertyType?.key}"  />
                                </td>
                            </tr> 
                            
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="streetNumber"><g:message code="property.streetNumber.label" default="Street Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'streetNumber', 'errors')}">
                                    <g:textField name="property.streetNumber" value="${fieldValue(bean: propertyInstance, field: 'streetNumber')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="streetName"><g:message code="property.streetName.label" default="Street Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'streetName', 'errors')}">
                                    <g:textField name="property.streetName" value="${fieldValue(bean: propertyInstance, field: 'streetName')}" />
                                </td>
                            </tr>                       
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city"><g:message code="property.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'city', 'errors')}">
                                    <g:textField name="property.city" value="${fieldValue(bean: propertyInstance, field: 'city')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="property.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'state', 'errors')}">
                                    <g:select noSelection="['' :'Select State']" optionValue="name" name="property.state.id" from="${State.list()}" optionKey="id" value="${propertyInstance?.state?.id}"  />
                                </td>
                            </tr>
                                                    
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zip"><g:message code="property.zip.label" default="Zip" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'zip', 'errors')}">
                                    <g:textField name="property.zip" value="${propertyInstance?.zip}" />
                                </td>
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zip"><g:message code="property.floors.label" default="Floors" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: propertyInstance, field: 'Floors', 'errors')}">
                                    <g:select name="property.floors" from="${1..100}" value="${propertyInstance?.floors}"  />
                                </td>
                            </tr>                            
                       
                        
                                                </tbody>
                    </table>
                </div>
                
                <h1>Unit</h1>
                <g:render template="newUnit" />
