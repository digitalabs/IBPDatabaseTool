-- for WorkbenchDataManager.addProjectUsers()
INSERT IGNORE INTO users ( userid, instalid, ustatus, uaccess, utype, uname, upswd, personid, adate, cdate ) 
VALUES (1,0,0,0,0,'workbench','workbench',0,0,0);

INSERT IGNORE INTO users(userid, instalid, ustatus, uaccess, utype, uname, upswd, personid, adate, cdate)
VALUES (2, 2, 1, 1, 1, 'test2', 'password', 2, 20130927, 20130927);


INSERT IGNORE INTO workbench_project (project_id, user_id, project_name, template_id) VALUES (1, 1, 'TEST', 1);


-- for WorkbenchDataManager.getMethodsByProjectId()
-- ---- Assumption: There is a workbench project with id = 1
INSERT IGNORE INTO workbench_project_method(project_id, method_id)
VALUES('1', '1');
INSERT IGNORE INTO workbench_project_method(project_id, method_id)
VALUES('1', '2');



