<%@ page import="com.nimble.domain.view.*;com.nimble.domain.artifact.*;com.nimble.domain.issue.*;com.nimble.domain.reference.*;com.nimble.utils.view.ViewHelper; com.nimble.utils.domain.ReferenceHelper;" %>

<g:set var="viewHelper" value="${request.viewHelper}" scope="request"/>
<g:set var="refHelper" value="${new ReferenceHelper(application)}" />

<td class="name">
    <label for="artifact_name">
    	<g:message code="artifact.artifact_name.label" default="${viewHelper.getAppControlLabel(viewHelper.includeViewControl.control_text)}" />
    </label>
</td>
<td class="value ${hasErrors(bean: viewHelper.nimbleDomain, field: viewHelper.includeViewControl.control_text, 'errors')}">
    <g:textField name="${viewHelper.includeViewControl.control}" value="${fieldValue(bean: viewHelper.nimbleDomain, field: viewHelper.includeViewControl.control)}" />
</td>