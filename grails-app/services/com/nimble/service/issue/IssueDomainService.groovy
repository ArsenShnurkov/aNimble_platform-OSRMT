/*

aNimble Platform: Application Lifecycle Management Tool
Copyright (C) 2010-2012 ideaStub, LLC

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

*/

package com.nimble.service.issue

import com.nimble.service.NimbleService
import com.nimble.domain.reference.*
import com.nimble.domain.issue.*
import com.nimble.domain.security.*

class IssueDomainService extends NimbleService{

    static transactional = true
    
    def prepIssueDomainForSave(IssueDomain issueDomain) {
        issueDomain = prepDomainObjectForSave(issueDomain)
        issueDomain = checkForNullRefData(issueDomain)
        
        
        return issueDomain
    }

    def prepIssueDomainForUpdate(IssueDomain issueDomain) {
        issueDomain = prepDomainObjectForUpdate(issueDomain)
        issueDomain = checkForNullRefData(issueDomain)
        
        return issueDomain
    }


    def checkForNullRefData(Issue issue) {

        if (issue.assigned_user == null){ issue.assigned_user = ApplicationUser.get(0)}  //FIXME replace this logic with actual user in context
        if (issue.submitted_user == null){ issue.submitted_user = ApplicationUser.get(0)}  //FIXME replace this logic with actual user in context
        
        if (issue.custom1_ref == null){ issue.custom1_ref = refHelper.getRefDataDefault("IssueCustomRef1Reference")}
        if (issue.custom2_ref == null){ issue.custom2_ref = refHelper.getRefDataDefault("IssueCustomRef2Reference")}
        if (issue.custom3_ref == null){ issue.custom3_ref = refHelper.getRefDataDefault("IssueCustomRef3Reference")}
        if (issue.custom4_ref == null){ issue.custom4_ref = refHelper.getRefDataDefault("IssueCustomRef4Reference")}

		if (issue.issue_status_ref == null){ issue.issue_status_ref = refHelper.getRefDataDefault("IssueStatusReference")}
		if (issue.priority_ref == null){ issue.priority_ref = refHelper.getRefDataDefault("IssuePriorityReference")}

		if (issue.issue_type_ref == null){ issue.issue_type_ref = refHelper.getRefDataDefault("IssueTypeReference")}
		if (issue.version_ref == null){ issue.version_ref = refHelper.getRefDataDefault("IssueVersionReference")}
		if (issue.severity_ref == null){ issue.severity_ref = refHelper.getRefDataDefault("IssueSeverityReference")}
		if (issue.frequency_ref == null){ issue.frequency_ref = refHelper.getRefDataDefault("IssueFrequencyReference")}
		if (issue.reproduce_ref == null){ issue.reproduce_ref = refHelper.getRefDataDefault("IssueReproduceReference")}
		if (issue.closed_category_ref == null){ issue.closed_category_ref = refHelper.getRefDataDefault("IssueClosedCategoryReference")}
		if (issue.resolved_category_ref == null){ issue.resolved_category_ref = refHelper.getRefDataDefault("IssueResolvedCategoryReference")}

/**
    	String artifactType = artifact.class.name.substring(artifact.class.name.lastIndexOf('.')+1,artifact.class.name.indexOf('Artifact'))
        
        if (artifact.planned_version_ref == null){ artifact.planned_version_ref = refHelper.getRefDataDefault(artifactType + "VersionReference")}
        if (artifact.version_ref == null){ artifact.version_ref = refHelper.getRefDataDefault(artifactType + "VersionReference")}
        if (artifact.priority_ref == null){ artifact.priority_ref = refHelper.getRefDataDefault(artifactType + "PriorityReference")}
        
**/

        return issue
    }


}
