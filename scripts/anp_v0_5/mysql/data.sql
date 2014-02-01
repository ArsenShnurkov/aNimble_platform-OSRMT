#allow anonymous to access favicon
INSERT INTO application_privilege (privilege_id,url,config_attribute,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)  
VALUES (10048,'/favicon.ico','IS_AUTHENTICATED_ANONYMOUSLY','2007-12-31 22:28:13',0,'2007-12-31 14:54:36',0,14,1,1,320);

#Fix multiple project id in params variable when running report from inside of project detail
update report_parameter set report_param_name='project_id_param' where report_param_name='project_id';

#insert issue reference data and set defaults
INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10360,'IssueVersion',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set version_ref_id=10360 where version_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10361,'IssueReproduce',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set reproduce_ref_id=10361 where reproduce_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10362,'IssueClosedCategory',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set closed_category_ref_id=10362 where closed_category_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10363,'IssueResolvedCategory',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set resolved_category_ref_id=10363 where resolved_category_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10364,'IssueCustomRef1',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set custom1_ref_id=10364 where custom1_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10365,'IssueCustomRef2',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set custom2_ref_id=10365 where custom2_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10366,'IssueCustomRef3',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set custom3_ref_id=10366 where custom3_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10367,'IssueCustomRef4',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set custom4_ref_id=10367 where custom4_ref_id=0;

INSERT INTO reference_group (reference_group_id,reference_group,display,description,modification_ref_id,category_ref_id,unique_display_code_ind,framework_ind,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES (10327,'IssueCustomRef1','Issue Custom Reference 1','Issue Custom Reference 1',326,343,1,0,'2007-12-31 22:28:13',0,'2007-12-31 14:54:36',0,14,1,1,320);

INSERT INTO reference_group (reference_group_id,reference_group,display,description,modification_ref_id,category_ref_id,unique_display_code_ind,framework_ind,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES (10328,'IssueCustomRef2','Issue Custom Reference 2','Issue Custom Reference 2',326,343,1,0,'2007-12-31 22:28:13',0,'2007-12-31 14:54:36',0,14,1,1,320);

INSERT INTO reference_group (reference_group_id,reference_group,display,description,modification_ref_id,category_ref_id,unique_display_code_ind,framework_ind,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES (10329,'IssueCustomRef3','Issue Custom Reference 3','Issue Custom Reference 3',326,343,1,0,'2007-12-31 22:28:13',0,'2007-12-31 14:54:36',0,14,1,1,320);

INSERT INTO reference_group (reference_group_id,reference_group,display,description,modification_ref_id,category_ref_id,unique_display_code_ind,framework_ind,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES (10330,'IssueCustomRef4','Issue Custom Reference 4','Issue Custom Reference 4',326,343,1,0,'2007-12-31 22:28:13',0,'2007-12-31 14:54:36',0,14,1,1,320);

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10371,'IssueStatus',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set status_ref_id=10371 where status_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10372,'IssuePriority',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set priority_ref_id=10372 where priority_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10373,'IssueType',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set version_ref_id=10373 where version_ref_id=0;

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)
VALUES  (10374,'IssueSeverity',0,'- SELECT -',0,'- Select -','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

update issue set severity_ref_id=10374 where severity_ref_id=0;

#add privileges for issue
INSERT INTO application_privilege (privilege_id,url,config_attribute,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)  
VALUES (10049,'/issue/**','ROLE_USER,IS_AUTHENTICATED_REMEMBERED','2007-12-31 22:28:13',0,'2007-12-31 14:54:36',0,14,1,1,320);

#adjust issue table; depending on pre-existing data from OSRMT, administrator may wish to review and adjust data class manually based on type of data
update issue set class='Issue';




   double effort
   Release release
   Sprint sprint
   
   Date issue_open_dt
   Date issue_occur_dt
   ApplicationUser submitted_user

   IssueFrequencyReference frequency_ref
   IssuePriorityReference priority_ref
   IssueReproduceReference reproduce_ref
   
   String reproduce_directions

   IssueVersionReference version_ref
   String last_update

   String history
   
   Date resolved_dt
   IssueResolvedCategoryReference resolved_category_ref   
   ApplicationUser resolved_user

   Date closed_dt
   IssueClosedCategoryReference closed_category_ref
   ApplicationUser closed_user

  

#add app control types

INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id) VALUES  (10368,'Artifact',0,'BUG',0,'Bug','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);
INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id) VALUES  (10369,'Artifact',0,'ISSUE',0,'Issue','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);
INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id) VALUES  (10370,'Artifact',0,'RISK',0,'Risk','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);

INSERT INTO reference_group (reference_group_id,reference_group,display,description,modification_ref_id,category_ref_id,unique_display_code_ind,framework_ind,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id)  VALUES (13,'ApplicationControlType','Application Control Type','Application Control Type',324,343,1,1,'2007-12-31 21:01:17',0,'2007-12-31 21:01:17',0,0,1,1,320);
INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id) VALUES  (10376,'ApplicationControlType',0,'TEXT',0,'TEXT','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);
INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id) VALUES  (10377,'ApplicationControlType',0,'SELECT',0,'SELECT','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);
INSERT INTO reference (ref_id,reference_group,app_type_ref_id,display_code,display_sequence,display,description,create_dt,create_user_id,update_dt,update_user_id,update_count,active_ind,system_assigned_version_nbr,record_type_ref_id) VALUES  (10378,'ApplicationControlType',0,'DATE',0,'DATE','','2007-12-31 22:28',0,'2007-12-31 1:33',1,1,1,1,322);



#add field controls for bugs, issues, risks
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id,control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10375, 1,'Name','Name',10376, null, 1, 'issue_name', 30,'2007-12-31 22:28:13',1,10368,0);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10376, 1,'Code','Code',10376, null, 1, 'issue_nbr', 30,'2007-12-31 22:28:13',2,10368,0);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10377, 1,'Ext. Code','Ext. Code',10376, null, 1, 'external_alias1', 30,'2007-12-31 22:28:13',3,10368,0);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10378, 2,'Status','Status',10377, 'IssueStatusReference', 1, 'issue_status_ref', 30,'2007-12-31 22:28:13',1,10368,0);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10379, 2,'Type','Type',10377, 'IssueTypeReference', 1, 'issue_type_ref', 30,'2007-12-31 22:28:13',2,10368,0);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10380, 2,'Severity','Severity',10377, 'IssueSeverityReference', 1, 'severity_ref', 30,'2007-12-31 22:28:13',3,10368,0);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10381, 3,'Description','Description',10376, null, 1, 'description', 30,'2007-12-31 22:28:13',1,10368,0);



   Date 
   ApplicationUser 
   ApplicationUserGroup 

INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10378, 2,'Fix By Date','Fix By Date',10377, 'IssueStatusReference', 1, 'fix_by_dt', 30,'2007-12-31 22:28:13',1,10368,0);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10378, 2,'Assigned User','Assigned User',10377, 'IssueStatusReference', 1, 'assigned_user', 30,'2007-12-31 22:28:13',1,10368,0);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description,control_type_ref_id, control_format,visible_ind,init_script,unit_height,create_dt,view_column,control_ref_id,application_custom_control_id)
VALUES (10378, 2,'Assigned User Group','Assigned User Group',10377, 'IssueStatusReference', 1, 'assigned_user_group', 30,'2007-12-31 22:28:13',1,10368,0);



#not visible on the following
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description, visible_ind,init_script,unit_height,create_dt)
VALUES (10369, 4,'Release','Release', 0, 'DesignArtifact.release', 30,'2007-12-31 22:28:13');

   String external_alias2
   String external_alias3
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
   
   update application_control set control_type_ref_id=10376 where control_type_ref_id=0;
   
#clean up reference data for modification access

update reference_group set modification_ref_id=325 where reference_group_id=53;

update reference_group set modification_ref_id=325 where reference_group_id=53;

update reference_group set modification_ref_id=325 where reference_group_id=10272;

update reference_group set modification_ref_id=325 where reference_group_id=10325;

update reference_group set modification_ref_id=325 where reference_group_id=25;

update reference_group set modification_ref_id=326 where reference_group_id=42;

update reference_group set modification_ref_id=326 where reference_group_id=2;

delete from reference_group where reference_group = 'SystemMessage';
delete from reference where reference_group = 'SystemMessage';