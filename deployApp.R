# Adam Kippenhan ajk8sb 05/01/2023 deployApp.R
# R script to authenticate with the shinyapps.io cloud platform and deploy the application

library(rsconnect)

# authenticate with shinyapps.io
setAccountInfo(name='akippenhan',
               token='TOKEN',
               secret='SECRET')

# deploy the application.
deployApp(appFiles=NULL, # NULL selects all files for deployment
          appName='HurdlesToMars',
          appTitle='HurdlesToMars')