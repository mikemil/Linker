<%@ page import="org.mm.linker.Link" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'link.label', default: 'Link')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div class="row-fluid">
		
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li class="active">
							<g:link class="list" action="list">
								<i class="icon-list icon-white"></i>
								<g:message code="default.list.label" args="[entityName]" />
							</g:link>
						</li>
						<li>
							<g:link class="create" action="create">
								<i class="icon-plus"></i>
								<g:message code="default.create.label" args="[entityName]" />
							</g:link>
						</li>
					</ul>
				</div>
			</div>

			<div class="span9">
				<div id="create-link" class="content scaffold-create" role="main">
					<h1><g:message code="default.create.label" args="[entityName]" /></h1>
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
					
					<form action="/Linker/link/save" method="post" >
						<fieldset class="form">
							
						<div class="control-group ">
							<label class="control-label" for="urlLink">Url Link</label>
							<div class="controls">
								<input type="url" name="urlLink" value="" id="urlLink" />
							</div>
						</div>

						<div class="control-group ">
							<label class="control-label" for="rating">Rating</label>
							<div class="controls">
								<input type="range" name="rating" value="" required="" min="1" max="5" id="rating" />
							</div>
						</div>

						<div class="control-group ">
							<label class="control-label" for="summary">Summary</label>
							<div class="controls">
								<input type="text" name="summary" value="" required="" id="summary" />
							</div>
						</div>

						<div class="control-group ">
							<label class="control-label" for="user">User</label>
							<div class="controls">
								<input type="text" name="user" value="" required="" id="user" />
							</div>
						</div>
						
						<div class="control-group ">
							<label class="control-label" for="tags">Tags</label>
							<div class="controls">
								<input type="text" name="tags" value="" id="tags" />
							</div>
						</div>
						
						</fieldset>
						<fieldset class="buttons">
							<input type="submit" name="create" class="save" value="Create" id="create" />
						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
