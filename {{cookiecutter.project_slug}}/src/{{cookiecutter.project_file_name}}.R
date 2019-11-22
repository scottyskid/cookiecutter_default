#{{cookiecutter.project_short_description}}
#
# {{cookiecutter.project_file_name}}
# Docstring long (multiline) description
#
#
# author = {{cookiecutter.full_name}}
# created = {{cookiecutter.date}}
# copyright = "Copyright 2019, CHE Proximity"
# credits = ["{{cookiecutter.full_name}}", ]# List of people who worked on the project
#
# version = {{cookiecutter.version}}
# maintainer = {{cookiecutter.full_name}}
# email = {{cookiecutter.email}}
# status = Development # Development, Prototype, or Production

pacman::p_load(configr,
               odbc,
               aws.s3,
               here,
               update= FALSE ,install=TRUE)
​
#clear all variables
​
rm(list = ls(all.names = TRUE))
# store setiing file paths and read files
​
p_user_setting_loc = file.path(gsub("\\\\","/",as.character(Sys.getenv(x=c('USERPROFILE'),names=TRUE))),"user_settings.config",fsep = "/")
user_config = read.config(p_user_setting_loc, file.type = 'ini')
​
p_project_setting_loc = file.path(here(),"project_settings.config",fsep="/")
project_config = read.config(p_project_setting_loc, file.type = 'ini')
​
# aws_chepdata_con = odbc::dbConnect(odbc(),
#                                    Driver = user_config$AWS_MSSQL_CHEPDATADB$DRIVER,
#                                    Server = user_config$AWS_MSSQL_CHEPDATADB$ENDPOINT,
#                                    Database = user_config$AWS_MSSQL_CHEPDATADB$DATABASE,
#                                    UID = user_config$AWS_MSSQL_CHEPDATADB$USERNAME,
#                                    PWD = user_config$AWS_MSSQL_CHEPDATADB$PASSWORD,
#                                    Port = as.numeric(user_config$AWS_MSSQL_CHEPDATADB$PORT))
# 
# odbc::dbDisconnect(aws_chepdata_con)
#
# sam_ce <- aws.s3::s3read_using(FUN = read.csv,
#                                bucket = <bucket name>,
#                                object = <>)

#  aws.s3::s3write_using(FUN = write.csv,
# 							x=df,
#                           bucket = <bucket name>,
#                           object = <>)



