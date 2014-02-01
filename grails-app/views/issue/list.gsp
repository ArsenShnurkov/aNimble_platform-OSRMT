<%@ page import="com.nimble.domain.reference.*;com.nimble.utils.view.ViewHelper;com.nimble.domain.issue.*;" %>
<g:set var="viewHelper" value="${new ViewHelper()}" scope="request" />

<% 
request.viewHelper.includeParams=[project_id:params.project_id] 
request.viewHelper.projectType = params.projectType
%>

<%
					println(g.include(view:'/issue/list_landing.gsp', params:params))
%>