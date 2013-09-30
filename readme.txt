This is the project for database tools.
Current Database Tools:

1.  Database Refresh/Migration Using Flyway

    This will create the following databases into your database (port 3306): 
    *  test_local, test_central, test_groundnut_local, test_groundnut_central, test_workbench

    a.  If you do not have these databases yet, you may execute the scripts for creating them.
        mvn properties:read-project-properties sql:execute

    b.  To refresh your database
        mvn -P <profile> compile properties:read-project-properties flyway:clean flyway:init flyway:migrate

    c.  If your migration fail, and wants to re-execute
        mvn -P <profile> properties:read-project-properties flyway:repair flyway:migrate

    d.  To find out what's on your database
        mvn -P <profile> properties:read-project-properties flyway:info

   *Valid profile values are:
    - testLocal, testCentral, testLocalGroundnut, testCentralGroundnut, testWorkbench
   
   Convention for adding new migration scripts:
   *  create a new folder for each new version in src/main/resources/db/migration/test/...
   *  common scripts starts at Vx.1 (not expected to be more than 10 scripts)
   *  crop specific scripts such as user-defined test data scripts starts at Vx.11


