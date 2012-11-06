<%@ page import="org.mm.linker.Link" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'link.label', default: 'Link')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-link" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-link" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${linkInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${linkInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${linkInstance?.id}" />
				<g:hiddenField name="version" value="${linkInstance?.version}" />
				<div class="control-group ">
					<label class="control-label" for="urlLink">Url Link</label>
					<div class="controls">
						<input type="url" name="urlLink" value="${linkInstance?.urlLink}" id="urlLink" />
					</div>
				</div>

				<div class="control-group ">
					<label class="control-label" for="rating">Rating</label>
					<div class="controls">
						<input type="range" name="rating" value="${linkInstance?.rating}" required="" min="1" max="5" id="rating" />
					</div>
				</div>
				
				<div class="control-group ">
					<label class="control-label" for="summary">Summary</label>
					<div class="controls">
						<input type="text" name="summary" value="${linkInstance?.summary}" required="" id="summary" />
					</div>
				</div>

				<div class="control-group ">
					<label class="control-label" for="user">User</label>
					<div class="controls">
						<input type="text" name="user" value="${linkInstance?.user}" required="" id="user" />
					</div>
				</div>
						
				<div class="control-group ">
					<label class="control-label" for="tags">Tags</label>
					<div class="controls">
						<input type="text" name="tags" value="${linkInstance?.tags}" id="tags" />
					</div>
				</div>
				
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
