<%@ page import="org.mm.linker.Link" %>



<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'rating', 'error')} ">
	<label for="rating">
		<g:message code="link.rating.label" default="Rating" />
		
	</label>
	<g:field type="number" name="rating" value="${fieldValue(bean: linkInstance, field: 'rating')}" />
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'summary', 'error')} ">
	<label for="summary">
		<g:message code="link.summary.label" default="Summary" />
		
	</label>
	<g:textField name="summary" value="${linkInstance?.summary}" />
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'urlLink', 'error')} ">
	<label for="urlLink">
		<g:message code="link.urlLink.label" default="Url Link" />
		
	</label>
	<g:textField name="urlLink" value="${linkInstance?.urlLink}" />
</div>

<div class="fieldcontain ${hasErrors(bean: linkInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="link.user.label" default="User" />
		
	</label>
	<g:textField name="user" value="${linkInstance?.user}" />
</div>

