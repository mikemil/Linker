
<%@ page import="org.mm.linker.Link" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'link.label', default: 'Link')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="row-fluid">
			
			<div class="span3">
				<div class="well">
					<ul class="nav nav-list">
						<li class="nav-header">${entityName}</li>
						<li>
							<g:link class="list" action="list">
								<i class="icon-list"></i>
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

				<div class="page-header">
					<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>

				<dl class="dl-horizontal">
					<g:if test="${linkInstance?.urlLink}">
						<dt><g:message code="link.urlLink.label" default="Url Link" /></dt>
						
							<dd><g:fieldValue bean="${linkInstance}" field="urlLink"/></dd>
						
					</g:if>
				
					<g:if test="${linkInstance?.rating}">
						<dt><g:message code="link.rating.label" default="Rating" /></dt>
						
							<dd><g:showRating rating="${linkInstance.rating}"/></dd>
						
					</g:if>
				
					<g:if test="${linkInstance?.user}">
						<dt><g:message code="link.user.label" default="User" /></dt>
						
							<dd><g:fieldValue bean="${linkInstance}" field="user"/></dd>
						
					</g:if>
					
					<g:if test="${linkInstance?.summary}">
						<dt><g:message code="link.summary.label" default="Summary" /></dt>
						
							<dd><g:fieldValue bean="${linkInstance}" field="summary"/></dd>
						
					</g:if>
				
					<g:if test="${linkInstance?.tags}">
						<dt><g:message code="link.tags.label" default="Tags" /></dt>
						
							<dd><g:join in="${linkInstance.tags}" delimiter=" "/></dd>
						
					</g:if>
				
					<g:if test="${linkInstance?.lastUpdated}">
						<dt><g:message code="link.lastUpdated.label" default="Last Updated" /></dt>
						
							<dd><g:formatDate date="${linkInstance?.lastUpdated}" /></dd>
						
					</g:if>
					
					<g:if test="${linkInstance?.dateCreated}">
						<dt><g:message code="link.dateCreated.label" default="Date Created" /></dt>
						
							<dd><g:formatDate date="${linkInstance?.dateCreated}" /></dd>
						
					</g:if>
				
				</dl>

				<g:form>
					<g:hiddenField name="id" value="${linkInstance?.id}" />
					<div class="form-actions">
						<g:link class="btn" action="edit" id="${linkInstance?.id}">
							<i class="icon-pencil"></i>
							<g:message code="default.button.edit.label" default="Edit" />
						</g:link>
						<button class="btn btn-danger" type="submit" name="_action_delete">
							<i class="icon-trash icon-white"></i>
							<g:message code="default.button.delete.label" default="Delete" />
						</button>
					</div>
				</g:form>

			</div>

		</div>
	</body>
</html>
