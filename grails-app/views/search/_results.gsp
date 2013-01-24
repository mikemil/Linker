<div id="results">
    <g:if test="${linkInstanceList}">
       <br/>
       <h3>Search Results</h3>
        <div class="list">
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <g:sortableColumn property="urlLink" title="${message(code: 'link.urlLink.label', default: 'Url Link')}" />
                            <g:sortableColumn property="rating" title="${message(code: 'link.rating.label', default: 'Rating')}" />
                            <g:sortableColumn property="user" title="${message(code: 'link.user.label', default: 'User')}" />
                            <g:sortableColumn property="tags" title="${message(code: 'link.tags.label', default: 'Tags')}" />
                            <g:sortableColumn property="summary" title="${message(code: 'link.summary.label', default: 'Summary')}" />
                            
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${linkInstanceList}" var="linkInstance">
                        <tr>
                            <td>${fieldValue(bean: linkInstance, field: "urlLink")}</td>
                            <td><g:showRating rating="${linkInstance.rating}"/></td>
                            <td>${fieldValue(bean: linkInstance, field: "user")}</td>
                            <td>${linkInstance?.tagsToString()}</td>
                            <td>${fieldValue(bean: linkInstance, field: "summary")}</td>
                            <td class="link">
                                <g:link action="show" id="${linkInstance.id}" controller="link" class="btn btn-small">Show &raquo;</g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
    </g:if>
</div>