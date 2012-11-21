<%@ page import="com.grails.addressbook.entity.Person" %>



<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="person.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" maxlength="30" pattern="${personInstance.constraints.firstName.matches}" required="" value="${personInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="person.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" maxlength="30" pattern="${personInstance.constraints.lastName.matches}" required="" value="${personInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'numbers', 'error')} ">
	<label for="numbers">
		<g:message code="person.numbers.label" default="Numbers" />
		
	</label>
	<g:select name="numbers" from="${com.grails.addressbook.entity.Phone.list()}" multiple="multiple" optionKey="id" size="5" value="${personInstance?.numbers*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'postCode', 'error')} ">
	<label for="postCode">
		<g:message code="person.postCode.label" default="Post Code" />
		
	</label>
	<g:textField name="postCode" value="${personInstance?.postCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="person.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${personInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'street', 'error')} ">
	<label for="street">
		<g:message code="person.street.label" default="Street" />
		
	</label>
	<g:textField name="street" value="${personInstance?.street}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: personInstance, field: 'suburb', 'error')} ">
	<label for="suburb">
		<g:message code="person.suburb.label" default="Suburb" />
		
	</label>
	<g:textField name="suburb" value="${personInstance?.suburb}"/>
</div>

