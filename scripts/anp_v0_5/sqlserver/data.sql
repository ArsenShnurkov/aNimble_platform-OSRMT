-- add view controls to allow for view height of artifact created, created by, updated, updated by
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description, visible_ind,init_script,unit_height,create_dt,control_ref_id)
VALUES (10375, 8,'Created','Created', 1, 'DesignArtifact.dateCreated', 30,'2007-12-31 22:28:13',130);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description, visible_ind,init_script,unit_height,create_dt,control_ref_id)
VALUES (10376, 9,'Created By','Created By', 1, 'DesignArtifact.create_user', 30,'2007-12-31 22:28:13',130);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description, visible_ind,init_script,unit_height,create_dt,control_ref_id)
VALUES (10377,	10,'Updated','Updated', 1, 'DesignArtifact.lastUpdate', 30,'2007-12-31 22:28:13',130);
INSERT INTO application_control
   (application_control_id,display_sequence,control_text,control_description, visible_ind,init_script,unit_height,create_dt,control_ref_id)
VALUES (10378, 11,'Updated By','Updated By', 1, 'DesignArtifact.update_user', 30,'2007-12-31 22:28:13',130);