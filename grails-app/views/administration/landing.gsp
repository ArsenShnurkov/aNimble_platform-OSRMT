<%@ page import="com.nimble.domain.reference.*;com.nimble.utils.view.ViewHelper;com.nimble.domain.report.Report; com.nimble.controller.report.ReportsController;" %>

<g:set var="viewHelper" value="${request.viewHelper}" />

		<div id="pageBody" class="landing" style="background-color: #808080;width:30%;">

<% 
viewHelper.setSectionTitle('Administration')
println(g.include(view:'/layouts/header_block.gsp', params:params))
%>

	        <div id="controllerList" style="background-color: #FFFFFF;width:100%;">
	            <table style="width:100%;">
	                    <tr>
	                    <td align="center"><img src="${grailsApplication.metadata['app.namespace']}/images/bullet.png" border="0"></td>
	                    <td style="width:90%;"><a class="oddLink" href="${grailsApplication.metadata['app.namespace']}/applicationSetting" name="Application Settings">Application Settings</a></td>
	                    </tr>
	                    <tr>
	                    <td align="center"><img src="${grailsApplication.metadata['app.namespace']}/images/bullet.png" border="0"></td>
   	                    <td class="breadcrumb_blue_box" style="width:90%;"><a href="${grailsApplication.metadata['app.namespace']}/applicationControl" name="Field Controls">Field Controls</a></td>
	                    </tr>
	                    <tr>	                    	                    
	                    <td align="center"><img src="${grailsApplication.metadata['app.namespace']}/images/bullet.png" border="0"></td>
	                    <td style="width:90%;"><a class="oddLink" href="${grailsApplication.metadata['app.namespace']}/reference/list" name="Reference Data">Reference Data</a></td>
	                    </tr>
	                    <tr>
	                    <td align="center"><img src="${grailsApplication.metadata['app.namespace']}/images/bullet.png" border="0"></td>	                    
	                    <td class="breadcrumb_blue_box" style="width:90%;"><a href="${grailsApplication.metadata['app.namespace']}/report" name="Reports">Report Controls</a></td>
	                    </tr>
	                    <tr>
	                    <td align="center"><img src="${grailsApplication.metadata['app.namespace']}/images/bullet.png" border="0"></td>	                    
   	                    <td style="width:90%;"><a class="oddLink" href="${grailsApplication.metadata['app.namespace']}/reportParameter" name="Report Parameters">Report Parameters</a></td>
	                    </tr>
	                    <tr>
	                    <td align="center"><img src="${grailsApplication.metadata['app.namespace']}/images/bullet.png" border="0"></td>
	                    <td class="breadcrumb_blue_box" style="width:90%;"><a href="${grailsApplication.metadata['app.namespace']}/search/admin" name="Search">Search</a></td>
	                    </tr>
	                    <tr>
	                    <td align="center"><img src="${grailsApplication.metadata['app.namespace']}/images/bullet.png" border="0"></td>
	                    <td style="width:90%;"><a class="oddLink" href="${grailsApplication.metadata['app.namespace']}/applicationUser" name="Users">Users</a></td>
	                    </tr>
	                    <%--
	                    <tr>	                    
	                    <td align="center"><img src="${grailsApplication.metadata['app.namespace']}/images/bullet.png" border="0"></td>
   	                    <td class="breadcrumb_blue_box" style="width:90%;"><a href="${grailsApplication.metadata['app.namespace']}/applicationUserGroup" name="User Groups">User Groups</a></td>
	                    </tr>
	                    --%>	                    
	            </table>
	        </div>
	        
<% println(g.include(view:'/layouts/footer_block.gsp', params:params)) %>	        
		</div>