#-------------------------------------------------------------------
##################
# Libraries
##################

## Imported Packages: (.packages())
rfiles <- c("PACKAGES")
for( i in rfiles) {
    devtools::use_package( i, pkg=packg)
}
# devtools::use_package( i, "Suggests", pkg=pdir)}

#-------------------------------------------------------------------
##################
# Add Codes
################## 

# Which Codes
rfile <- c(
    "NewFunctions.R")

rfiles <- paste0(pdir, "Code/R_Code/", rfile)

# Move Code
file.copy(rfiles, rdir, overwrite=T )
devtools::load_all( rdir )

# Create Code Documentation
devtools::document( pkg=packg)


