<%@ page import="org.mm.linker.Link" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap">
		<g:set var="entityName" value="${message(code: 'link.label', default: 'Link')}" />
		<title>Search</title>
	</head>
	<body>
		<div id="edit-link" class="content scaffold-edit" role="main">
			<div class="row">
			<h1>Search</h1>
				<g:form method="post" class="form-horizontal" >
					<fieldset class="form" action="search">
						<div class="span3">
							<label for="user">User: </label><g:textField name="user" value="${user}"/><p/>
						</div>
						<div class="span3">
							<label for="tag">Tag: </label><g:textField name="tag" value="${tag}"/><p/>
						</div>
						<div class="span3">
							<label for="rating">Rating: </label><g:textField name="rating" value="${rating}"/><p/>
						</div>
					</fieldset>
					<fieldset class="buttons">
						<g:actionSubmit class="search" action="search" value="${message(code: 'default.button.search.label', default: 'Search')}" />
					</fieldset>
					</div>
				<!--<g:submitToRemote update="results" value="Search" url="[controller:'search', action:'search']"
                   onLoading="showSpinner(true)"  onComplete="showSpinner(false)" >
              	</g:submitToRemote> -->

				</g:form>
				<g:if test="${flash.message}">
				    <div class="message" role="status"><h2>${flash.message}</h2></div>
				</g:if>
				<g:else>
					<g:render template="results"/>
				</g:else>
			</div>
		</div>
		
	</body>
</html>
