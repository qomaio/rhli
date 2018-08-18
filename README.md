# R Host Language Interface
The rhli package offers complete access from R to the [FIS MarketMap](https://fame.sungard.com/support.html) 
C-Toolkit ("FAME C-HLI"). The [qoma.smuggler](https://github.com/qomaio/r-smuggler) package offers higher level functionality when working with both R and FAME.

FAME is a fully integrated software and database 
management system from FIS that provides the following capabilities: 

* Time series and cross-sectional data management;
* Financial calculation, data analysis, econometrics, and forecasting;
* Table generation and detailed multicolor, presentation-quality report writing;
* Multicolor, presentation-quality graphics;
* "What-if" analysis;
* Application development and structured programming;
* Data transfer to and from other applications;
* Tools for building customized graphical user interfaces.

## Prerequisites

* Install R Studio and successfully render an R Markdown page.
* Install FAME and successfully enter and exit the FAME 4GL environment.

## Installation and testing

From an R console, 

* install.packages("rhli")
* source(paste(find.package("rhli"),"examples/HelloWorld.R",sep="/"))

From an R console inside R Studio,     

* file.edit(paste(find.package("rhli"),"examples/0-hello-rhli.Rmd",sep="/"))
    * from the editor, hit the `Knitr` button to render the R Markdown example

On first use, you will be directed to a website to obtain a `QOMA_PIN` which will entitle you to use the RHLI for the duration of your FAME license.
