# CRAN comments for _rhli_

## Test environments
* Windows 10, R 3.5.1, x64 + i386
* Debian 9.5, R 3.5.1
* win-builder, R Under development, x64 + i386

## R CMD check results
0 errors | 1 warning  | 1 note 

 There were no ERRORs.

The WARNING on Debian 9.5 R 3.5.1 is:

* Compilation used the following non-portable flag(s): 
    ‘-Wdate-time’ ‘-Werror=format-security’ ‘-Wformat’
* _rhli_ does not set compiler flags.

The NOTE on Debian 9.5 R 3.5.1 is:

* GNU make is a SystemRequirements.

The spelling in the file DESCRIPTION is intentional.

* FIS (company name)
* HLI ("host language interface")
* MarketMap (FIS trademark)
* econometrics (correct)
* multicolor (acceptable, common spelling, consistent with FIS documentation)
* rhli (this package, "R host language interface")
    
## Downstream dependencies
There are currently no downstream dependencies for this package.