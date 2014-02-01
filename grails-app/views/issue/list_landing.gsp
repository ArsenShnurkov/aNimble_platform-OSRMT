
<%@ page import="com.nimble.domain.issue.Issue" %>
        <g:set var="entityName" value="${message(code: 'issue.label', default: 'Issue')}" />

        <div class="body" style="width:95%;float:left;">
        
        <div class="nav">
        
		<% println(g.include(view:'/issue/navigation.gsp', params:params)) %>

		</div>        

            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog" style="padding-left:10px;">
                <table>
                    <thead>
                        <tr>

                            <g:sortableColumn action="index" property="id" title="${message(code: 'issue.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn action="index" property="issue_name" title="${message(code: 'issue.issue_name.label', default: 'Name')}" />
                   	    
                            <g:sortableColumn action="index" property="issue_nbr" title="${message(code: 'issue.issue_nbr.label', default: 'Code')}" />
                        
                            <th><g:message code="issue.description.label" default="Description" /></th>

                            <g:sortableColumn action="index" property="issue_status_ref" title="${message(code: 'issue.issue_status_ref.label', default: 'Status')}" />

                            <g:sortableColumn action="index" property="assigned_user" title="${message(code: 'issue.assigned_user.label', default: 'Assigned To')}" />

                            <g:sortableColumn action="index" property="fix_by_dt" title="${message(code: 'issue.fix_by_dt.label', default: 'Due Date')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${issueInstanceList}" status="i" var="issueInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                            <td align="center"><a ${(i % 2) == 0 ? "class='oddLink'" : ""} href="#" onClick="location = '${grailsApplication.metadata['app.namespace']}/issue/show/${issueInstance.id}'">${issueInstance?.id}</a></td>                        
                        
                            <td>&nbsp;${fieldValue(bean: issueInstance, field: "issue_name")}</td>

                            <td>&nbsp;${fieldValue(bean: issueInstance, field: "issue_nbr")}</td>
                        
                            <td>&nbsp;${fieldValue(bean: issueInstance, field: "description")}</td>

                            <td>&nbsp;${fieldValue(bean: issueInstance, field: "issue_status_ref")}</td>

                            <td>&nbsp;${fieldValue(bean: issueInstance, field: "assigned_user")}</td>
                            
                            <td>&nbsp;${fieldValue(bean: issueInstance, field: "fix_by_dt")}</td>                            
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <% if (params?.filter == null || params?.filter.equals('')) { %>
                <g:paginate total="${issueInstanceTotal}" action="index" />
                <% } %>
            </div>

   
        </div>
