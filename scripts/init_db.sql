/*

==============================================
CREATE DATABASE AND SCHEMAS
==============================================

Script Purpose:
  This script creates a new db called DataWareHouse after checking it exits or not. If it already exists, it is dropped and recreated. 
  Additionally, three new schemas are created called bronze, silver and gold with the DB. 

*/



-- Create Database 'DataWarehouse'
use master;

-- Drop and recreate the 'DataWarehouse' DB
if exists (select 1 from sys.databases where name='DataWareHouse')
begin
	alter database DataWareHouse set single_user with rollback immediate;
	drop database DataWareHouse;
end;

-- Create DB 'DataWareHouse'
create database DataWareHouse;

-- Use the DataWareHouse DB
use DataWareHouse;

-- Create Bronze Schema
create schema bronze;

-- Create Silver Schema
create schema silver;

-- Create Gold Schema
create schema gold;

