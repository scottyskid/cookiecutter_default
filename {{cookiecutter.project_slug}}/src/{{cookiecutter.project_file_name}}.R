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


if(!require(odbc))
{install.packages("odbc") }
if(!require(configr))
{install.packages("configr") }
if(!require(aws.s3))
{install.packages("aws.s3") }
if (!require(here))
{install.packages("here")}


#clear all variables


rm(list = ls(all.names = TRUE))

source(globals.R)



