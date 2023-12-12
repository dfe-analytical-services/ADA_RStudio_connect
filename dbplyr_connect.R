# NOTE this code is a template, you must replace any code that starts with 
# 'INSERT_' with a valid name in order to run.

library(dplyr)
library(dbplyr)
library(DBI)

# Use the name of the ODBC driver you have previously installed here, and the name of the catalog you wish to use
# (see rodbc_connect.R script if you don't know the catalog name)
con <- DBI::dbConnect(
  odbc::odbc(), 
  "INSERT_ODBC_DRIVER_NAME", # name of the ODBC driver - you chose this when you installed
  catalog = "INSERT_CATALOG" 
)


# The following method uses tbl, and therefore dev_data is a live connection to the Databricks data rather
# than pulling the data into a table object!

Data <- tbl(
  con,
  DBI::Id(
    schema = "INSERT_SCHEMA",
    table = "INSERT_TABLE_NAME"
  )
)

# You can perform some operations behind the scenes with a tbl connection:
Data %>% 
  count(INSERT_COLUMN_NAME)

# This shows the SQL query that is really being sent to Databricks
Data %>% 
  count(INSERT_COLUMN_NAME) %>% 
  show_query()

# to save this as a data table object use collect()
Data %>% 
  count(INSERT_COLUMN_NAME) %>% 
  collect()


