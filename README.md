# ADA_RStudio_connect

This repository contains example code for how to connect to data in Databricks from R Studio via ODBC connection. Details on how to set up an ODBC connection can be found in the [Analyst's guide - downloading an ODBC driver](https://dfe-analytical-services.github.io/analysts-guide/ADA/databricks_rstudio.html#downloading-an-odbc-driver). 

A video demonstrating how to use this code can be found in the [Analyst's guide - Pulling data into R studio from Databricks](Analyst's guide - downloading an ODBC driver](https://dfe-analytical-services.github.io/analysts-guide/ADA/databricks_rstudio.html#pulling-data-into-r-studio-from-databricks).  

## Using this code

This code will not run without edits. You need to install an ODBC driver as detailed in the guidance linked above, and use this code as a template to connect to your own databases and tables.

- robdc_connect.R: This script outlines one method of connecting to Databricks using the RODBC package.
- dbplyr_connect.R: This script outlines one method of connecting to Databricks using the dbplyr package.
- write_to_databricks.R: This script outlines one method of writing tables that you have created in R studio back into Databricks using the DBI package.
