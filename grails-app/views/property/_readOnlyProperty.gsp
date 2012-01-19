<table>
		  <g:hiddenField name="property.id" value="${propertyInstance?.id}" />
          <g:hiddenField name="property.version" value="${propertyInstance?.version}" />
          <g:hiddenField name="property.name" value="${propertyInstance?.name}" />
          <g:hiddenField name="property.streetNumber" value="${propertyInstance?.streetNumber}" />
          <g:hiddenField name="property.streetName" value="${propertyInstance?.streetName}" />
          <tr class="prop">
              <td valign="top" class="name">
                  <label for="name"><g:message code="property.name.label" default="Name" /></label>
              </td>
              <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "name")}</td>
          </tr>
          <tr class="prop">
              <td valign="top" class="name">
                  <label for="streetNumber"><g:message code="property.streetNumber.label" default="Street Number" /></label>
              </td>
              <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "streetNumber")}</td>
          </tr>
          <tr class="prop">
              <td valign="top" class="name">
                  <label for="streetName"><g:message code="property.streetName.label" default="Street Name" /></label>
              </td>
              <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "streetName")}</td>
          </tr>
          <tr class="prop">
              <td valign="top" class="name">
                  <label for="city"><g:message code="property.city.label" default="City" /></label>
              </td>
              <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "city")}</td>
          </tr>
          <tr class="prop">
              <td valign="top" class="name">
                  <label for="state"><g:message code="property.state.label" default="State" /></label>
              </td>
              <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "state")}</td>
          </tr>
          
          <tr class="prop">
              <td valign="top" class="name">
                  <label for="zip"><g:message code="property.zip.label" default="Zip" /></label>
              </td>
              <td valign="top" class="value">${fieldValue(bean: propertyInstance, field: "zip")}</td>
          </tr>
</table>

<h1>Unit</h1>
<g:render template="newUnit" />