#adjust issue table
ALTER TABLE issue
ADD custom_text1 varchar(255);

ALTER TABLE issue
ADD custom_text2 varchar(255);

ALTER TABLE issue
ADD custom_text3 varchar(255);

ALTER TABLE issue
ADD custom_text4 varchar(255);

ALTER TABLE issue
ADD custom1_ref_id int not null default 0;

ALTER TABLE issue
ADD custom2_ref_id int not null default 0;

ALTER TABLE issue
ADD custom3_ref_id int not null default 0;

ALTER TABLE issue
ADD custom4_ref_id int not null default 0;

ALTER TABLE issue
ADD custom_date1 datetime;

ALTER TABLE issue
ADD custom_date2 datetime;

ALTER TABLE issue
ADD custom_memo1 longtext;

ALTER TABLE issue
ADD custom_memo2 longtext;

ALTER TABLE issue
ADD custom_int1 int default 0;

ALTER TABLE issue
ADD custom_int2 int default 0;

ALTER TABLE issue
ADD custom_double1 double default 0;

ALTER TABLE issue
change issue_nbr issue_nbr varchar(50);

ALTER TABLE issue
ADD release_id int;

ALTER TABLE issue
ADD sprint_id int;

#adjust issue table
ALTER TABLE issue
ADD class varchar(255);

#create view column on app control
ALTER TABLE `application_control` CHANGE COLUMN `model_column_ref_id` `view_column` INT(11) NOT NULL DEFAULT '0'  ;
