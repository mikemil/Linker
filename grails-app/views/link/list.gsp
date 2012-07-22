<%@ page import="org.mm.linker.Link" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'link.label', default: 'Link')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
				
				<div class="page-header">
					<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				</div>

				<g:if test="${flash.message}">
				<bootstrap:alert class="alert-info">${flash.message}</bootstrap:alert>
				</g:if>
				
				<table class="table table-striped">
					<thead>
						<tr>
							<g:sortableColumn property="urlLink" title="${message(code: 'link.urlLink.label', default: 'Url Link')}" />
							<g:sortableColumn property="rating" title="${message(code: 'link.rating.label', default: 'Rating')}" />
							<g:sortableColumn property="user" title="${message(code: 'link.user.label', default: 'User')}" />
							<g:sortableColumn property="tags" title="${message(code: 'link.tags.label', default: 'Tags')}" />
							<g:sortableColumn property="summary" title="${message(code: 'link.summary.label', default: 'Summary')}" />
							<!--
							<g:sortableColumn property="dateCreated" title="${message(code: 'link.dateCreated.label', default: 'Date Created')}" />
							<g:sortableColumn property="lastUpdated" title="${message(code: 'link.lastUpdated.label', default: 'Last Updated')}" />
							-->
						
							<th></th>
						</tr>
					</thead>
					<tbody>
					<g:each in="${linkInstanceList}" var="linkInstance">
						<tr>
							<td>${fieldValue(bean: linkInstance, field: "urlLink")}</td>
							<!-- <td>${fieldValue(bean: linkInstance, field: "rating")}</td> -->
							<td><g:showRating rating="${linkInstance.rating}"/></td>
							<td>${fieldValue(bean: linkInstance, field: "user")}</td>
							<td>${linkInstance?.tagsToString()}</td>
							<td>${fieldValue(bean: linkInstance, field: "summary")}</td>
							<!--
							<td><g:formatDate date="${linkInstance.dateCreated}" /></td>
							<td><g:formatDate date="${linkInstance.lastUpdated}" /></td>
							-->
							<td class="link">
								<g:link action="show" id="${linkInstance.id}" class="btn btn-small">Show &raquo;</g:link>
							</td>
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<bootstrap:paginate total="${linkInstanceTotal}" />
				</div>
			</div>

		</div>
	</body>
</html>
