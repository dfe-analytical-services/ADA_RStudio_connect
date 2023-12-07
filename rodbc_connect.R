# NOTE this code is a template, you must replace any code that starts with 
# 'INSERT_' with a valid name in order to run.

library(RODBC)
library(dbplyr)
library(DBI)

# Use the name of the ODBC driver you have previously installed here. 
con <- odbcConnect('INSERT_ODBC_DRIVER_NAME')

# See what data catalogs are available on Databricks
sqlQuery(con, "SHOW CATALOGS")

# Set catalog to use (equivalent to 'USE' in SSMS)
sqlQuery(con, "USE CATALOG INSERT_CATALOG")

#See information abut the tables you have access too
tables <- sqlQuery(con, "SELECT * FROM INFORMATION_SCHEMA.TABLES")
View(tables)

# Read in a table you have access to
# Use the results above to identify schemas and table names
devData <- sqlQuery(con, "SELECT * FROM INSERT_SCHEMA.INSERT_TABLE_NAME")