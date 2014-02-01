<%@ page import="com.nimble.domain.view.*;com.nimble.domain.artifact.*;com.nimble.domain.issue.*;com.nimble.domain.reference.*;com.nimble.utils.view.ViewHelper; com.nimble.utils.domain.ReferenceHelper;org.codehaus.groovy.grails.commons.ApplicationHolder as AH;" %>

<g:set var="viewHelper" value="${request.viewHelper}" scope="request"/>
<g:set var="refHelper" value="${new ReferenceHelper(application)}" />
<g:set var="selectField" value="${fieldValue(bean: viewHelper.nimbleDomain, field: viewHelper.includeViewControl.control)}" />
<g:set var="selectFieldClass" value="${AH.application.getClassForName('com.nimble.domain.reference.' + viewHelper.includeViewControl.reference_group)}" />

<td class="name">
    <label for="${viewHelper.includeViewControl.control_text}">
    	${viewHelper.includeViewControl.control_text}
    </label>
</td>
<td class="value ${hasErrors(bean: viewHelper.nimbleDomain, field: viewHelper.includeViewControl.control_text, 'errors')}">
	<g:select name="${selectField}.id"
	 from="${refHelper.getRefDataForCreateSelect(selectFieldClass)}" optionKey="id"
	 value="{selectField.id}"  />
</td>