#!/usr/bin/Rscript

# Load the rhli package
library("rhli")

# Initialize the C-HLI
status <- Integer(-1)
cfmini(status)
cat(sprintf("--\n  cfmini(status) status=%d\n",status$value))

# Get the C-HLI version number
ver <- Numeric(-1)
cfmver(status,ver)
cat(sprintf("  cfmver(status,ver) status=%d ver=%.5f\n\n",status$value,ver$value))

# Say hello!
cat("\tFIS MarketMap Analytic Platform\n\tHello World from R!\n")
cat(sprintf("\tFAME HLI %.5f\n\t%s %s\n\n",ver$value,
  R.Version()$version.string,R.Version()$nickname))

# Finish the C-HLI
cfmfin(status)
cat(sprintf("  cfmfin(status) status=%d\n--\n",status$value))

# Unload C-HLI shared library 
unloadNamespace("rhli")
