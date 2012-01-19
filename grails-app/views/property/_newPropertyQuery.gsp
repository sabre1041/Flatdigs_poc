<g:form action="save" >
	<fieldset class="form">	



			<div class="fieldcontain ${hasErrors(bean: intialPropertyCommand, field: 'propertyType', 'error')} ">
				<label for=propertyType>
					Property Type
				</label>
				<g:select noSelection="['' :'Select Property Type']" optionKey="key" name="propertyType" from="${com.flatdigs.Property.PropertyType.values()}" value="${intialPropertyCommand?.propertyType?.key}"  />
			</div>
			<div class="fieldcontain ${hasErrors(bean: intialPropertyCommand, field: 'streetNumber', 'error')} ">
				<label for=streetNumber>
					Street Number
				</label>
				<g:textField name="streetNumber" value="${intialPropertyCommand?.streetNumber}"/>
			</div>
			<div class="fieldcontain ${hasErrors(bean: intialPropertyCommand, field: 'streetName', 'error')} ">
				<label for=streetNamer>
					Street Number
				</label>
				<g:textField name="streetName" value="${intialPropertyCommand?.streetName}"/>
			</div>
			<div class="fieldcontain ${hasErrors(bean: intialPropertyCommand, field: 'city', 'error')} ">
				<label for="city">
					City
				</label>
				<g:textField name="city" value="${intialPropertyCommand?.city}"/>
				</div>
				<div class="fieldcontain ${hasErrors(bean: intialPropertyCommand, field: 'state', 'error')} ">
				<label for="state">
					State
				</label>
	 			<g:select noSelection="[null :'Select State']" optionValue="name" name="state.id" from="${com.flatdigs.util.State.list()}" optionKey="id" value="${intialPropertyCommand.state?.id}"  />
			</div>
			<div class="fieldcontain ${hasErrors(bean: userCommand, field: 'zip', 'error')} ">
			<label for="zip">
				Zip Code
			</label>
			<g:textField name="zip" value="${userCommand?.zip}"/>
		
		</div>
		<br/>
		<fieldset class="buttons">
			<g:submitToRemote url="[controller:'property', action:'initialPropertyCheck']" onSuccess="updatePropertyForm(data,textStatus)" class="save" value="Next" />
		</fieldset>
	</fieldset>
</g:form>