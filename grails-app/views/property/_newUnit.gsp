<table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bedrooms"><g:message code="unit.bedrooms.label" default="Bedrooms" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: unitInstance, field: 'bedrooms', 'errors')}">
                                    <g:select name="unit.bedrooms" from="${1..10}" value="${unitInstance?.bedrooms}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bathrooms"><g:message code="unit.bathrooms.label" default="Bathrooms" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: unitInstance, field: 'bathrooms', 'errors')}">
                                    <g:select name="unit.bathrooms" from="${1..10}" value="${unitInstance?.bathrooms}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="number"><g:message code="unit.number.label" default="Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: unitInstance, field: 'number', 'errors')}">
                                    <g:textField name="unit.number" value="${unitInstance?.number}" />
                                </td>
                            </tr>
                              <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="number"><g:message code="unit.floors.label" default="Floors" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: unitInstance, field: 'floors', 'errors')}">
                                    <g:select name="unit.floors" from="${1..100}" value="${unitInstance?.floors}"  />
                                </td>
                            </tr> 
                            
                             <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="number"><g:message code="unit.averageGas.label" default="Aveage Gas" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: unitInstance, field: 'averageGas', 'errors')}">
                                    <g:textField name="unit.averageGas" value="${unitInstance?.averageGas}" />
                                </td>
                            </tr> 
                            
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="number"><g:message code="unit.averageElectricity.label" default="Aveage Electricity" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: unitInstance, field: 'averageElectricity', 'errors')}">
                                    <g:textField name="unit.averageElectricity" value="${unitInstance?.averageElectricity}" />
                                </td>
                            </tr> 
                                               
                        
                        </tbody>
                    </table>