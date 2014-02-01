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

package com.nimble.controller.issue

import com.nimble.domain.issue.*
import com.nimble.controller.NimbleController
import com.nimble.service.issue.IssueDomainService

class IssueDomainController extends NimbleController{

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    public getNewInstance(){return new IssueDomain();}
    public getNewInstanceWithParams(){return new IssueDomain(params);}
    public getDomainClass(){return IssueDomain;}

	def issueDomainService

    def index = {
        show()
        //redirect(action: "list", params: params)
    }

  	def list = {
        def issueInstance = getNewInstance()
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        def results
        //if (params.filter != null && params.filter != ''){
        	//results = (java.util.ArrayList) ApplicationControlQuery.getApplicationControlsByDomain(params.filter)
        //} else {
        	results = Issue.list(params)
        //}
        [issueInstance: issueInstance,issueInstanceList: results, issueInstanceTotal: Issue.count()]
    }

    def show = {
        def issueInstance = getDomainClass().get(params.id)
        if (!issueInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'issue.label', default: 'Issue'), params.id])}"
            redirect(action: "list")
        }
        else {
            [issueInstance: issueInstance]
        }
    }

    def create = {
        def issueInstance = getNewInstance()
        issueInstance.properties = params
        return [issueInstance: issueInstance]
    }

    def save = {
        def issueInstance = getNewInstanceWithParams()

        issueInstance = issueDomainService.prepIssueDomainForSave(issueInstance)

        if (!issueInstance.hasErrors() && issueInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'issue.label', default: 'Issue'), issueInstance.id])}"
            redirect(action: "show", id: issueInstance.id)
        }
        else {
            render(view: "create", model: [issueInstance: issueInstance])
        }
    }


    def edit = {
        def issueInstance = getDomainClass().get(params.id)
        if (!issueInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'issue.label', default: 'Issue'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [issueInstance: issueInstance]
        }
    }

    def update = {
        def issueInstance = getDomainClass().get(params.id)
        if (issueInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (issueInstance.version > version) {
                    
                    issueInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'issue.label', default: 'Issue')] as Object[], "Another user has updated this Issue while you were editing")
                    render(view: "edit", model: [issueInstance: issueInstance])
                    return
                }
            }
            issueInstance.properties = params

            issueInstance = issueDomainService.prepIssueDomainForUpdate(issueInstance)
            
            if (!issueInstance.hasErrors() && issueInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'issue.label', default: 'Issue'), issueInstance.id])}"
                redirect(action: "index", id: issueInstance.id)
            }
            else {
                render(view: "edit", model: [issueInstance: issueInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'issue.label', default: 'Issue'), params.id])}"
            redirect(action: "list")
        }
    }
/**
    def delete = {
        def issueInstance = getDomainClass().get(params.id)
        if (issueInstance) {
            try {
                issueInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'issue.label', default: 'Issue'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'issue.label', default: 'Issue'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'issue.label', default: 'Issue'), params.id])}"
            redirect(action: "list")
        }
    }
**/

}
