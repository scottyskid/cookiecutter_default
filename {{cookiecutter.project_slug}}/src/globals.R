
if(!require(odbc))
{install.packages("odbc") }
if(!require(configr))
{install.packages("configr") }
if(!require(aws.s3))
{install.packages("aws.s3") }
if (!require(here))
{install.packages("here")}

user_config = read.config(file.path(gsub("\\\\","/",as.character(Sys.getenv(x=c('USERPROFILE'),names=TRUE))),"user_settings.config",fsep = "/"), file.type = 'ini')

proj_config = file.path(gsub("\\\\","/",as.character(Sys.getenv(x=c('USERPROFILE'),names=TRUE))),"user_settings.config",fsep = "/"), file.type = 'ini')

aws_chepdata_con = odbc::dbConnect(odbc(),
                                   Driver = config$AWS_MSSQL_CHEPDATADB$DRIVER,
                                   Server = config$AWS_MSSQL_CHEPDATADB$ENDPOINT,
                                   Database = "chep__attribution",
                                   UID = config$AWS_MSSQL_CHEPDATADB$USERNAME,
                                   PWD = config$AWS_MSSQL_CHEPDATADB$PASSWORD,
                                   Port = as.numeric(config$AWS_MSSQL_CHEPDATADB$PORT))