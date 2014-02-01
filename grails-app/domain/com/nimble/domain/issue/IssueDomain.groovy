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

package com.nimble.domain.issue

import com.nimble.domain.NimbleDomain
import com.nimble.domain.artifact.*
import com.nimble.domain.project.*
import com.nimble.domain.release.*
import com.nimble.domain.reference.*
import com.nimble.domain.security.*

/*

NOT IMPLEMENTING
test_log_id                   int not null default 0,
organization_id               int default 0,
organization_environment_id   int default 0,
client_os_ref_id              int default 0,
server_os_ref_id              int default 0,
assigned_user_group_ref_id    int not null default 0,
parent_issue_id               int default 0,

*/

class IssueDomain extends NimbleDomain {

   Release release
   Sprint sprint
   Project project
   //Artifact artifact

   String issue_name
   String issue_nbr
   String external_alias1
   String external_alias2
   String external_alias3

   Date issue_occur_dt
   Date issue_open_dt
   ApplicationUserGroup assigned_user_group
   ApplicationUser assigned_user
   String description
   Date fix_by_dt
   ApplicationUser submitted_user
   double effort
   String reproduce_directions
   String last_update
   String history
   Date closed_dt
   ApplicationUser closed_user
   Date resolved_dt
   ApplicationUser resolved_user

   IssueTypeReference issue_type_ref
   IssueVersionReference version_ref
   IssueStatusReference issue_status_ref
   IssuePriorityReference priority_ref
   IssueSeverityReference severity_ref
   IssueFrequencyReference frequency_ref
   IssueReproduceReference reproduce_ref
   IssueClosedCategoryReference closed_category_ref
   IssueResolvedCategoryReference resolved_category_ref

   String custom_text1
   String custom_text2
   String custom_text3
   String custom_text4
   IssueCustomRef1Reference custom1_ref
   IssueCustomRef2Reference custom2_ref
   IssueCustomRef3Reference custom3_ref
   IssueCustomRef4Reference custom4_ref
   Date custom_date1
   Date custom_date2
   String custom_memo1
   String custom_memo2
   int custom_int1
   int custom_int2
   double custom_double1

   String toString(){
       return issue_name
   }

		//static hasMany = [ artifacts: Artifact]
		static fetchMode = [issue_type_ref:'eager', version_ref:'eager', status_ref:'status_ref_id', priority_ref:'eager', severity_ref:'eager', frequency_ref:'eager', reproduce_ref:'eager', closed_category_ref:'eager', resolved_category_ref:'eager', custom1_ref:'eager', custom2_ref:'eager', custom3_ref:'eager',  custom4_ref:'eager']
		//static belongsTo = [project:Project, release: Release, sprint: Sprint]
                     
  static mapping = {
      table 'issue'
      id column:'issue_id'

		issue_type_ref column:'issue_type_ref_id'
		version_ref column:'version_ref_id'
		issue_status_ref column:'status_ref_id'
		priority_ref column:'priority_ref_id'
		severity_ref column:'severity_ref_id'
		frequency_ref column:'frequency_ref_id'
		reproduce_ref column:'reproduce_ref_id'
		closed_category_ref column:'closed_category_ref_id'
		resolved_category_ref column:'resolved_category_ref_id'
		custom1_ref column:'custom1_ref_id'
		custom2_ref column:'custom2_ref_id'
		custom3_ref column:'custom3_ref_id'
		custom4_ref column:'custom4_ref_id'
    	  
      //artifactChildren column:'requirement_tree_id'
      //artifactParents column:'requirement_tree_id'

      //artifact column: 'artifact_id'
      project column: 'product_ref_id'
      release column: 'release_id'
      sprint column: 'sprint_id'
    	  
      autoTimestamp true
      id generator:'hilo', params:[table:'hi_value',column:'next_value',max_lo:100]
      dateCreated column:'create_dt' 
      lastUpdate column:'update_dt'
      version column:'system_assigned_version_nbr'
      create_user column:'create_user_id'
      update_user column:'update_user_id'
      active_ind column:'active_ind'
      
  }
  
      static constraints = {
        issue_name(validator: {
        	if (it==null || it.equals("")) return ['default.blank.message']
            if (it.contains("\'") || it.contains("\"")) return ['default.invalid.matches']
        })
        issue_nbr(blank:false,unique:true)
        
	   external_alias1(nullable:true)
	   external_alias2(nullable:true)
	   external_alias3(nullable:true)
	   issue_occur_dt(nullable:true)
	   issue_open_dt(nullable:true)
	   assigned_user_group(nullable:true)
	   assigned_user(nullable:true)
	   description(nullable:true)
	   fix_by_dt(nullable:true)
	   submitted_user(nullable:true)
	   reproduce_directions(nullable:true)
	   last_update(nullable:true)
	   history(nullable:true)
	   closed_dt(nullable:true)
	   closed_user(nullable:true)
	   resolved_dt(nullable:true)
	   resolved_user(nullable:true)
	   issue_type_ref(nullable:true)
	   version_ref(nullable:true)
	   issue_status_ref(nullable:true)
	   priority_ref(nullable:true)
	   severity_ref(nullable:true)
	   frequency_ref(nullable:true)
	   reproduce_ref(nullable:true)
	   closed_category_ref(nullable:true)
	   resolved_category_ref(nullable:true)
	   custom_text1(nullable:true)
	   custom_text2(nullable:true)
	   custom_text3(nullable:true)
	   custom_text4(nullable:true)
	   custom1_ref(nullable:true)
	   custom2_ref(nullable:true)
	   custom3_ref(nullable:true)
	   custom4_ref(nullable:true)
	   custom_date1(nullable:true)
	   custom_date2(nullable:true)
	   custom_memo1(nullable:true)
	   custom_memo2(nullable:true)
	   sprint(nullable:true)
	   release(nullable:true)	   
  }
  
}