<%@ page import="com.nimble.domain.issue.*;com.nimble.domain.reference.*;com.nimble.utils.view.ViewHelper; com.nimble.utils.domain.ReferenceHelper;" %>

<g:set var="viewHelper" value="${new ViewHelper()}" scope="request"/>
<% request.viewHelper.nimbleDomain = issueInstance %>

<%
	request.viewHelper.includeView="/issueDomain/create_inc.gsp"
%>

<g:render template="/layouts/nimble_main" />

<script language="JavaScript" someProperty="text/javascript">
setBreadCrumbs('Project: ${viewHelper.getSession()?.curProject?.projectCode} - ${viewHelper.getSession()?.curProject?.projectName}','project/index/${viewHelper.getSession()?.curProject?.id}');
</script>