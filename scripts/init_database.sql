/*
create database and schemas

script purpose:
the script creats a new database named ddatawarehouse after checing if it already exits.additionaly , the sciprts sets up three schemas within the database bronze, silver, and gold.

warning:
running this scripts will drop the entire datawarehouse if exits 
all data in the database will deleted and proceed with caution
*/

IF EXISTS (SELECT * FROM database where name = 'Datawarehouse')
BEGIN
  ALTER DATABASE Datawarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE Datawarehouse;
END;

-- or

DROP DATABASE IF EXISTS Datawarehouse;

CREATE DATABASE Datawarehouse;
USE datawarehouse;

CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;

