<%@ page import="org.mm.linker.Link" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'link.label', default: 'Link')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-link" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			    <div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="message" role="status">${flash.message}</div>
			<g:form method="post" >
				<fieldset class="form" action="search">
					<label for="user">User: </label><g:textField name="user" /><p/>
					<label for="tag">Tag: </label><g:textField name="tag"/><p/>
					<label for="rating">Rating: </label><g:textField name="rating"/><p/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="search" action="search" value="${message(code: 'default.button.search.label', default: 'Search')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
