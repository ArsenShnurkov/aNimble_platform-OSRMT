<%@ page import="com.nimble.domain.issue.*;com.nimble.utils.view.*;" %>

<g:set var="issueInstance" value="${request.issueInstance}" />
<g:set var="viewHelper" value="${request.viewHelper}" />

<table border="0" cellspacing="0" cellpadding="0"><tr>
<td class="buttonSeperator" width="1px" height="25px"></td>
<td id="List" class="buttonNotSelected" height="25px"><a href="#" onclick="location.href = '${grailsApplication.metadata['app.namespace']}/${session.curProject.projectType}/index/${session.curProject.id}?tab=${ViewTabs.PROJECT_BUGS}';" class="buttonTitle" onMouseOver="selectButton('List');" onMouseOut="unselectButton('List');">List</a></td>
<td class="buttonSeperator" width="1px" height="25px"></td>
<td id="Add" class="buttonNotSelected" height="25px"><a href="#" onclick="location.href='${grailsApplication.metadata['app.namespace']}/${viewHelper.getControllerName(issueInstance)}/create';" class="buttonTitle" onMouseOver="selectButton('Add');" onMouseOut="unselectButton('Add');">Add</a></td>
<td class="buttonSeperator" width="1px" height="25px"></td>


<% 
if (issueInstance != null){
	if (!actionName.equals('show_viewonly') ){ 

		if (actionName.equals('show')){
    	%>

<td id="Update" class="buttonNotSelected" height="25px"><a href="#" onclick="location.href='${grailsApplication.metadata['app.namespace']}/${viewHelper.getControllerName(issueInstance)}/edit/${issueInstance.id}';" class="buttonTitle" onMouseOver="selectButton('Update');" onMouseOut="unselectButton('Update');">Update</a></td>
<td class="buttonSeperator" width="1px" height="25px"></td>

		<% } %>

		<% if (actionName.equals('create') || actionName.equals('edit') || actionName.equals('save') || actionName.equals('update') ){ %>
<td id="Save" class="buttonNotSelected" height="25px"><a href="#" onclick="document.myform.submit();" class="buttonTitle" onMouseOver="selectButton('Save');" onMouseOut="unselectButton('Save');"> Save</a></td>
<td class="buttonSeperator" width="1px" height="25px"></td>

		<% } %>

<%      } else {  %>

<td id="WorkThis" class="buttonNotSelected" height="25px"><a href="#" onclick="location.href='${grailsApplication.metadata['app.namespace']}/${viewHelper.getControllerName(issueInstance)}/index/${issueInstance.id}';" class="buttonTitle" onMouseOver="selectButton('WorkThis');" onMouseOut="unselectButton('WorkThis');">More Detail</a></td>
<td class="buttonSeperator" width="1px" height="25px"></td>

<% 	} %>


<%	if (!actionName.equals('add')){ %>
<!--
<td id="Artifacts" class="buttonNotSelected" height="25px"><a href="#" onclick="location.href = '${grailsApplication.metadata['app.namespace']}/artifact/list?issue_id=${issueInstance.id}';" class="buttonTitle" onMouseOver="selectButton('Artifacts');" onMouseOut="unselectButton('Artifacts');">Show Artifacts</a></td>
<td class="buttonSeperator" width="1px" height="25px"></td>
-->
<%
	}
} 
%>
            
</tr></table>