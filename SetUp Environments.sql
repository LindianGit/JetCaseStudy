CREATE OR REPLACE PROCEDURE setup_environments()
/*
Stored Procedure to Set Up the Environments
Created by: Lindian

This stored procedure sets up the necessary environments by creating a database and schemas.

Steps:
1. Drop and recreate the database:
   - The 'CREATE OR REPLACE DATABASE Jet' statement ensures that the 'Jet' database is created.
     If it already exists, it will be replaced.

2. Use the newly created database:
   - The 'USE DATABASE Jet' statement sets the context to the newly created 'Jet' database.

3. Drop and recreate schemas:
   - The 'CREATE OR REPLACE SCHEMA raw_data' statement ensures that the 'raw_data' schema is created.
     If it already exists, it will be replaced.
   - The 'CREATE OR REPLACE SCHEMA staging' statement ensures that the 'staging' schema is created.
     If it already exists, it will be replaced.
   - The 'CREATE OR REPLACE SCHEMA analytics' statement ensures that the 'analytics' schema is created.
     If it already exists, it will be replaced.

4. Return a success message:
   - The 'RETURN 'Environments set up successfully'' statement returns a success message indicating
     that the environments have been set up successfully.
     
5. CALL setup_environments();
*/
RETURNS STRING
LANGUAGE SQL
AS
$$
BEGIN
  -- Drop and recreate the database
  EXECUTE IMMEDIATE 'CREATE OR REPLACE DATABASE Jet';

  -- Use the newly created database
  EXECUTE IMMEDIATE 'USE DATABASE Jet';

  -- Drop and recreate schemas
  EXECUTE IMMEDIATE 'CREATE OR REPLACE SCHEMA raw_data';
  EXECUTE IMMEDIATE 'CREATE OR REPLACE SCHEMA staging';
  EXECUTE IMMEDIATE 'CREATE OR REPLACE SCHEMA analytics';

  RETURN 'Environments set up successfully';
END;
$$;

 
