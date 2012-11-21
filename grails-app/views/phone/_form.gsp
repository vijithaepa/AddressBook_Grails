<%@ page import="com.grails.addressbook.entity.Phone" %>



<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'number', 'error')} required">
	<label for="number">
		<g:message code="phone.number.label" default="Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="number" maxlength="30" pattern="${phoneInstance.constraints.number.matches}" required="" value="${phoneInstance?.number}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: phoneInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="phone.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${phoneInstance?.type}"/>
</div>

