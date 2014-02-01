<%@ page import="com.nimble.domain.view.*;com.nimble.domain.issue.*;com.nimble.domain.reference.*;com.nimble.utils.view.ViewHelper; com.nimble.utils.domain.ReferenceHelper;" %>

<g:set var="viewHelper" value="${request.viewHelper}" scope="request"/>
<g:set var="refHelper" value="${new ReferenceHelper(application)}" />        

<div class="body" style="float:left;width:98%;">

<%

	request.viewHelper.setSectionTitle('Issue Detail')
	println(g.include(view:'/layouts/header_block.gsp', params:params))

%>

    <g:if test="${flash.message}">
    <div class="message" style="position:relative;">${flash.message}</div>
    </g:if>
   <g:hasErrors bean="${issueInstance}">
    <div class="errors" style="position:relative;">
        <g:renderErrors bean="${issueInstance}" as="list" />
    </div>
    </g:hasErrors>
        
        <div class="nav">

			<% println(g.include(view:'/issue/navigation.gsp', params:params)) %>

        </div>


        <div class="dialog" style="">

		    <g:form method="post" name="myform" action="save"> 

			<g:hiddenField name="project.id" value="${viewHelper.projectId}" />

                <table>
                    <tbody>

<%
	ApplicationViewControlVO viewControl = request.viewHelper.getAppControlsByDomain('Bug')
	
	for (int y = 0; y <= viewControl.sequenceMax; y++) {
	
%>
                        <tr class="prop">
<%	
		for (int x = 1; x <= viewControl.columnMax; x++) {
			
			ApplicationControl appControl = viewControl.fieldControls.get(y + '_' + x)
			if (appControl != null){
			request.viewHelper.includeViewControl = appControl
			def controlTypeView = '/layouts/controlTypes/' + appControl?.control_type_ref + '.gsp'
			
            println(g.include(view:controlTypeView))

			} else {
%>
							<td valign="top" class="name"></td>
							<td valign="top" class="value"></td>
<%			
			}
		}
%>
                        </tr>
<%
	}
%>



                    </tbody>
                </table>
                
            </g:form>                
                
            </div>
    

	<% println(g.include(view:'/layouts/footer_block.gsp', params:params)) %>

</div>     
        