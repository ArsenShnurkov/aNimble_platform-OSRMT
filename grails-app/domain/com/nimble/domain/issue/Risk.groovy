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

import com.nimble.domain.artifact.*
import com.nimble.domain.project.*
import com.nimble.domain.release.*
import com.nimble.domain.reference.*
import com.nimble.domain.security.*

class Risk extends IssueDomain {

 static mapping = {

      discriminator value: "Risk"     

  }

  static searchable = {
      update_user component: true
      issue_status_ref component: true
      nullValue: ''
  }
  
}