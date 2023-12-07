# NOTE this code is a template, you must replace any code that starts with 
# 'INSERT_' with a valid name in order to run.

library(DBI)

# In order to perform these actions, the user must have CREATE SCHEMA and CREATE TABLE permissions 
# for the current database.

# In order to perform these actions, the user must also have created a connection (con variable)
# and set the catalog using one of the methods in either rodbc_connect.R or dplyr_connect.R

# Define what you want the schema and name to be in Databricks of the table you are writing
table_spec <- DBI::Id(schema = "INSERT_SCHEMA", table = "INSERT_DESIRED_NAME")

# This creates an empty table with the right variable names
DBI::dbCreateTable(
  con,
  name = table_spec,
  
  # Column names/types will be inferred from the structure of the table
  fields = INSERT_TABLE_OBJECT # a table you have created in R Sstudio that you now wish to save to Databricks
)

# This adds the data into the table that was made in the last step
DBI::dbAppendTable(
  con,
  name = table_spec,
  value = INSERT_TABLE_OBJECT # a table you have created in R Sstudio that you now wish to save to Databricks
)

