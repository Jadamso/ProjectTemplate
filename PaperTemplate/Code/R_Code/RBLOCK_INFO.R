#########################
# RBLOCK INFO
#########################
## Print any information needed for replication
## MiscUtils::all_info()

## Prints computer information
Sys.info()

## Prints R information
sessionInfo()

## Rprofile loaded every session
readLines( paste0( R.home(), "/etc/Rprofile.site"))

## Renvironment loaded every session
readLines( paste0( R.home(), "/etc/Renviron"))


