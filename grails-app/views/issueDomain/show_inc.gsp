<%@ page import="com.nimble.domain.view.*;com.nimble.domain.issue.*;com.nimble.domain.reference.*;com.nimble.utils.view.ViewHelper; com.nimble.utils.domain.ReferenceHelper;" %>

<g:set var="viewHelper" value="${request.viewHelper}" scope="request"/>
<g:set var="refHelper" value="${new ReferenceHelper(application)}" />        

<div class="body" style="float:left;">

<%

	request.viewHelper.setSectionTitle('Issue Detail')
	println(g.include(view:'/layouts/header_block.gsp', params:params))

%>
        
        <div class="nav">

			<% println(g.include(view:'/issue/navigation.gsp', params:params)) %>

        </div>


        <div class="dialog" style="width:100%;">
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
%>			
                            <td valign="top" class="name">
                            	${appControl.control_text}
                            </td>
                            <td valign="top" class="value">
                                ${fieldValue(bean: issueInstance, field: appControl.control)}
                            </td>
<%			
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
            </div>
    

	<% println(g.include(view:'/layouts/footer_block.gsp', params:params)) %>

</div>     
        