# !/bin/bash

# Adam Kippenhan ajk8sb 05/01/2023 deployApp.sh
# Bash script to add a deployment timestamp whenever the application is deployed and then call deployApp.R script

# remove previous deploy time
sed -i '' -e '$ d' HurdlesToMars.Rmd

# add new deploy time
date=$(date +'%Y-%m-%d %H:%M:%S %Z')
printf 'Last updated: %s' "$date" >> HurdlesToMars.Rmd

# report deploy time to console
printf 'Added deploy date of: %s\n' "$date"

# run deployApp R script
Rscript deployApp.R