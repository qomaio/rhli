#' rhli: R access to the FAME C-HLI.
#'
#' Complete access from R to the FIS MarketMap
#' C-Toolkit (FAME C-HLI). 
#' 
#' FAME is a fully integrated software and database
#' management system from FIS that provides the following capabilities:
#' \itemize{
#' \item Time series and cross-sectional data management;
#' \item Financial calculation, data analysis, econometrics, and forecasting;
#' \item Table generation and detailed multicolor, presentation-quality report writing;
#' \item Multicolor, presentation-quality graphics;
#' \item "What-if" analysis;
#' \item Application development and structured programming;
#' \item Data transfer to and from other applications;
#' \item Tools for building customized graphical user interfaces.
#' }
#'
#' Programs should:
#' \itemize{
#' \item Initialize with \code{\link{cfmini}} first.
#' \item Display the version number with \code{\link{cfmver}}.
#' \item \emph{( do other work )}
#' \item Finish with \code{\link{cfmfin}}.
#' }
#' 
#' There are three data classes for use with rhli:
#' \itemize{
#' \item \code{\link{Character}} 
#' \item \code{\link{Integer}} 
#' \item \code{\link{Numeric}}
#' }
#' 
#' @docType package
#' @name rhli
#'
#' @useDynLib rhli
#' @importFrom methods new
NULL

#' \code{Integer}
#'
#' A reference class to implement mutable integer data.
#'
#' @field value An integer vector.
#' @examples 
#' status <- Integer(-1)
#' 
#' @export Integer
Integer <- setRefClass(
  "Integer",
  fields = list(value = "integer"),
  methods = list(
    initialize = function(i = 0L) {
      "Initialize an integer array."
      value <<- as.integer(i)
    }
  )
)

#' \code{Numeric}
#'
#' A reference class to implement mutable numeric data.
#'
#' @field value A numeric vector.
#' @examples 
#' ver <- Numeric(-1)
#' 
#' @export Numeric
Numeric <- setRefClass(
  "Numeric",
  fields = list(value = "numeric"),
  methods = list(
    initialize = function(x = 0) {
      "Initialize a numeric vector."
      value <<- as.numeric(x)
    }
  )
)

#' \code{Character}
#'
#' A reference class to implement mutable character data.
#'
#' @field value A character vector.
#' @examples 
#' blankLine <- Character(sprintf("%80s",""))
#' 
#' @export Character
Character <- setRefClass(
  "Character",
  fields = list(value = "character"),
  methods = list(
    initialize = function(s = "") {
      "Initialize a character vector."
      value <<- as.character(s)
    }
  )
)

# constants
#' C-HLI constant \code{HSUCC}
#' @examples
#' status <- Integer(-1L)
#' cfmini(status)
#' if(status$value!=HSUCC){
#'   cat(sprintf("cfmini(status=%d)",status$value))
#' }
#' 
#' @export
HSUCC  <-   0L

#' C-HLI constant \code{HINITD}
#' @export
HINITD <-   1L

#' C-HLI constant \code{HNINIT}
#' @export
HNINIT <-   2L

#' C-HLI constant \code{HFIN}
#' @export
HFIN   <-   3L

#' C-HLI constant \code{HBFILE}
#' @export
HBFILE <-   4L

#' C-HLI constant \code{HBMODE}
#' @export
HBMODE <-   5L

#' C-HLI constant \code{HBKEY}
#' @export
HBKEY  <-   6L

#' C-HLI constant \code{HBSRNG}
#' @export
HBSRNG <-   8L

#' C-HLI constant \code{HBERNG}
#' @export
HBERNG <-   9L

#' C-HLI constant \code{HBNRNG}
#' @export
HBNRNG <-  10L

#' C-HLI constant \code{HNOOBJ}
#' @export
HNOOBJ <-  13L

#' C-HLI constant \code{HBRNG}
#' @export
HBRNG  <-  14L

#' C-HLI constant \code{HDUTAR}
#' @export
HDUTAR <-  15L

#' C-HLI constant \code{HBOBJT}
#' @export
HBOBJT <-  16L

#' C-HLI constant \code{HBFREQ}
#' @export
HBFREQ <-  17L

#' C-HLI constant \code{HTRUNC}
#' @export
HTRUNC <-  18L

#' C-HLI constant \code{HNPOST}
#' @export
HNPOST <-  20L

#' C-HLI constant \code{HFUSE}
#' @export
HFUSE  <-  21L

#' C-HLI constant \code{HNFMDB}
#' @export
HNFMDB <-  22L

#' C-HLI constant \code{HRNEXI}
#' @export
HRNEXI <-  23L

#' C-HLI constant \code{HCEXI}
#' @export
HCEXI  <-  24L

#' C-HLI constant \code{HNRESW}
#' @export
HNRESW <-  25L

#' C-HLI constant \code{HBCLAS}
#' @export
HBCLAS <-  26L

#' C-HLI constant \code{HBOBSV}
#' @export
HBOBSV <-  27L

#' C-HLI constant \code{HBBASI}
#' @export
HBBASI <-  28L

#' C-HLI constant \code{HOEXI}
#' @export
HOEXI  <-  29L

#' C-HLI constant \code{HBMONT}
#' @export
HBMONT <-  30L

#' C-HLI constant \code{HBFLAB}
#' @export
HBFLAB <-  31L

#' C-HLI constant \code{HBMISS}
#' @export
HBMISS <-  32L

#' C-HLI constant \code{HBINDX}
#' @export
HBINDX <-  33L

#' C-HLI constant \code{HNWILD}
#' @export
HNWILD <-  34L

#' C-HLI constant \code{HBNCHR}
#' @export
HBNCHR <-  35L

#' C-HLI constant \code{HBGROW}
#' @export
HBGROW <-  36L

#' C-HLI constant \code{HQUOTA}
#' @export
HQUOTA <-  37L

#' C-HLI constant \code{HOLDDB}
#' @export
HOLDDB <-  38L

#' C-HLI constant \code{HMPOST}
#' @export
HMPOST <-  39L

#' C-HLI constant \code{HSPCDB}
#' @export
HSPCDB <-  40L

#' C-HLI constant \code{HBFLAG}
#' @export
HBFLAG <-  41L

#' C-HLI constant \code{HPACK}
#' @export
HPACK  <-  42L

#' C-HLI constant \code{HNEMPT}
#' @export
HNEMPT <-  43L

#' C-HLI constant \code{HBATTR}
#' @export
HBATTR <-  44L

#' C-HLI constant \code{HDUP}
#' @export
HDUP   <-  45L

#' C-HLI constant \code{HBYEAR}
#' @export
HBYEAR <-  46L

#' C-HLI constant \code{HBPER}
#' @export
HBPER  <-  47L

#' C-HLI constant \code{HBDAY}
#' @export
HBDAY  <-  48L

#' C-HLI constant \code{HBDATE}
#' @export
HBDATE <-  49L

#' C-HLI constant \code{HBSEL}
#' @export
HBSEL  <-  50L

#' C-HLI constant \code{HBREL}
#' @export
HBREL  <-  51L

#' C-HLI constant \code{HBTIME}
#' @export
HBTIME <-  52L

#' C-HLI constant \code{HBCPU}
#' @export
HBCPU  <-  53L

#' C-HLI constant \code{HEXPIR}
#' @export
HEXPIR <-  54L

#' C-HLI constant \code{HBPROD}
#' @export
HBPROD <-  55L

#' C-HLI constant \code{HBUNIT}
#' @export
HBUNIT <-  56L

#' C-HLI constant \code{HBCNTX}
#' @export
HBCNTX <-  57L

#' C-HLI constant \code{HLOCKD}
#' @export
HLOCKD <-  58L

#' C-HLI constant \code{HNETCN}
#' @export
HNETCN <-  59L

#' C-HLI constant \code{HNFAME}
#' @export
HNFAME <-  60L

#' C-HLI constant \code{HNBACK}
#' @export
HNBACK <-  61L

#' C-HLI constant \code{HSUSPN}
#' @export
HSUSPN <-  62L

#' C-HLI constant \code{HBSRVR}
#' @export
HBSRVR <-  63L

#' C-HLI constant \code{HCLNLM}
#' @export
HCLNLM <-  64L

#' C-HLI constant \code{HBUSER}
#' @export
HBUSER <-  65L

#' C-HLI constant \code{HSRVST}
#' @export
HSRVST <-  66L

#' C-HLI constant \code{HBOPT}
#' @export
HBOPT  <-  67L

#' C-HLI constant \code{HBOPTV}
#' @export
HBOPTV <-  68L

#' C-HLI constant \code{HNSUPP}
#' @export
HNSUPP <-  69L

#' C-HLI constant \code{HBLEN}
#' @export
HBLEN  <-  70L

#' C-HLI constant \code{HNULLP}
#' @export
HNULLP <-  71L

#' C-HLI constant \code{HREADO}
#' @export
HREADO <-  72L

#' C-HLI constant \code{HNWFEA}
#' @export
HNWFEA <-  73L

#' C-HLI constant \code{HBGLNM}
#' @export
HBGLNM <-  74L

#' C-HLI constant \code{HCLCHN}
#' @export
HCLCHN <-  75L

#' C-HLI constant \code{HDPRMC}
#' @export
HDPRMC <-  76L

#' C-HLI constant \code{HWKOPN}
#' @export
HWKOPN <-  77L

#' C-HLI constant \code{HNUFRD}
#' @export
HNUFRD <-  78L

#' C-HLI constant \code{HNOMEM}
#' @export
HNOMEM <-  79L

#' C-HLI constant \code{HBFUNC}
#' @export
HBFUNC <-  80L

#' C-HLI constant \code{HBPHAS}
#' @export
HBPHAS <-  81L

#' C-HLI constant \code{HAPOST}
#' @export
HAPOST <-  82L

#' C-HLI constant \code{HUPDRD}
#' @export
HUPDRD <-  83L

#' C-HLI constant \code{HP1REQ}
#' @export
HP1REQ <-  84L

#' C-HLI constant \code{HP2REQ}
#' @export
HP2REQ <-  85L

#' C-HLI constant \code{HUNEXP}
#' @export
HUNEXP <-  86L

#' C-HLI constant \code{HBVER}
#' @export
HBVER  <-  87L

#' C-HLI constant \code{HNFILE}
#' @export
HNFILE <-  88L

#' C-HLI constant \code{HMFILE}
#' @export
HMFILE <-  89L

#' C-HLI constant \code{HSCLLM}
#' @export
HSCLLM <-  90L

#' C-HLI constant \code{HDBCLM}
#' @export
HDBCLM <-  91L

#' C-HLI constant \code{HSNFIL}
#' @export
HSNFIL <-  92L

#' C-HLI constant \code{HSMFIL}
#' @export
HSMFIL <-  93L

#' C-HLI constant \code{HRESFD}
#' @export
HRESFD <-  94L

#' C-HLI constant \code{HTMOUT}
#' @export
HTMOUT <-  95L

#' C-HLI constant \code{HCHGAC}
#' @export
HCHGAC <-  96L

#' C-HLI constant \code{HFMENV}
#' @export
HFMENV <-  97L

#' C-HLI constant \code{HLICFL}
#' @export
HLICFL <-  98L

#' C-HLI constant \code{HLICNS}
#' @export
HLICNS <-  99L

#' C-HLI constant \code{HRMTDB}
#' @export
HRMTDB <- 100L

#' C-HLI constant \code{HBCONN}
#' @export
HBCONN <- 101L

#' C-HLI constant \code{HABORT}
#' @export
HABORT <- 102L

#' C-HLI constant \code{HNCONN}
#' @export
HNCONN <- 103L

#' C-HLI constant \code{HNMCA}
#' @export
HNMCA  <- 104L

#' C-HLI constant \code{HBATYP}
#' @export
HBATYP <- 105L

#' C-HLI constant \code{HBASRT}
#' @export
HBASRT <- 106L

#' C-HLI constant \code{HBPRSP}
#' @export
HBPRSP <- 107L

#' C-HLI constant \code{HBGRP}
#' @export
HBGRP  <- 108L

#' C-HLI constant \code{HNLOCL}
#' @export
HNLOCL <- 109L

#' C-HLI constant \code{HDHOST}
#' @export
HDHOST <- 110L

#' C-HLI constant \code{HOPENW}
#' @export
HOPENW <- 111L

#' C-HLI constant \code{HOPEND}
#' @export
HOPEND <- 112L

#' C-HLI constant \code{HNTWIC}
#' @export
HNTWIC <- 113L

#' C-HLI constant \code{HPWWOU}
#' @export
HPWWOU <- 114L

#' C-HLI constant \code{HLSERV}
#' @export
HLSERV <- 115L

#' C-HLI constant \code{HLRESV}
#' @export
HLRESV <- 116L

#' C-HLI constant \code{HMAXDB}
#' @export
HMAXDB <- 117L

#' C-HLI constant \code{HREMSUP}
#' @export
HREMSUP <- 119L

#' C-HLI constant \code{HBADVAL}
#' @export
HBADVAL <- 120L

#' C-HLI constant \code{HNOMAP}
#' @export
HNOMAP <- 121L

#' C-HLI constant \code{HROSCONN}
#' @export
HROSCONN <- 122L

#' C-HLI constant \code{HRKEYINV}
#' @export
HRKEYINV <- 123L

#' C-HLI constant \code{HRUSERINV}
#' @export
HRUSERINV <- 124L

#' C-HLI constant \code{HROSTRANS}
#' @export
HROSTRANS <- 125L

#' C-HLI constant \code{HRDISTRANS}
#' @export
HRDISTRANS <- 126L

#' C-HLI constant \code{HRHANDINV}
#' @export
HRHANDINV <- 127L

#' C-HLI constant \code{HNSUPDB}
#' @export
HNSUPDB <- 128L

#' C-HLI constant \code{HCVTDB}
#' @export
HCVTDB <- 129L

#' C-HLI constant \code{HOBSFUNC}
#' @export
HOBSFUNC <- 130L

#' C-HLI constant \code{HBV3TYPE}
#' @export
HBV3TYPE <- 131L

#' C-HLI constant \code{HBV3RANGE}
#' @export
HBV3RANGE <- 132L

#' C-HLI constant \code{HBV3DATE}
#' @export
HBV3DATE <- 133L

#' C-HLI constant \code{HNTOOLONG}
#' @export
HNTOOLONG <- 134L

#' C-HLI constant \code{HUTOOLONG}
#' @export
HUTOOLONG <- 135L

#' C-HLI constant \code{HFUTURE_TYPE}
#' @export
HFUTURE_TYPE <- 136L

#' C-HLI constant \code{HBTYPE}
#' @export
HBTYPE <- 137L

#' C-HLI constant \code{HOBJSIZE}
#' @export
HOBJSIZE <- 138L

#' C-HLI constant \code{HUSRPWTOOLONG}
#' @export
HUSRPWTOOLONG <- 139L

#' C-HLI constant \code{HFTOUT}
#' @export
HFTOUT <- 140L

#' C-HLI constant \code{HTRUNCDB}
#' @export
HTRUNCDB <- 141L

#' C-HLI constant \code{HUNSUPPORTED_FAME_VER}
#' @export
HUNSUPPORTED_FAME_VER <- 142L

#' C-HLI constant \code{HINUSE}
#' @export
HINUSE <- 143L

#' C-HLI constant \code{HNTSAFE}
#' @export
HNTSAFE <- 144L

#' C-HLI constant \code{HNFSRCLONG}
#' @export
HNFSRCLONG <- 145L

#' C-HLI constant \code{HFRMSYNTAXERR}
#' @export
HFRMSYNTAXERR <- 146L

#' C-HLI constant \code{HNOFORMV3}
#' @export
HNOFORMV3 <- 147L

#' C-HLI constant \code{HIFAIL}
#' @export
HIFAIL <- 511L

#' C-HLI constant \code{HFAMER}
#' @export
HFAMER <- 513L

#' C-HLI constant \code{HBFMON}
#' @export
HBFMON <-  30L

#' C-HLI constant \code{HNAMLEN_V3}
#' @export
HNAMLEN_V3 <-  64L

#' C-HLI constant \code{HNAMLEN_V4}
#' @export
HNAMLEN_V4 <- 242L

#' C-HLI constant \code{HNAMLEN}
#' @export
HNAMLEN <- 242L

#' C-HLI constant \code{HNAMSIZ}
#' @export
HNAMSIZ <- 243L

#' C-HLI constant \code{HRMODE}
#' @export
HRMODE <-   1L

#' C-HLI constant \code{HCMODE}
#' @export
HCMODE <-   2L

#' C-HLI constant \code{HOMODE}
#' @export
HOMODE <-   3L

#' C-HLI constant \code{HUMODE}
#' @export
HUMODE <-   4L

#' C-HLI constant \code{HSMODE}
#' @export
HSMODE <-   5L

#' C-HLI constant \code{HWMODE}
#' @export
HWMODE <-   6L

#' C-HLI constant \code{HDMODE}
#' @export
HDMODE <-   7L

#' C-HLI constant \code{HSERIE}
#' @export
HSERIE <-   1L

#' C-HLI constant \code{HSCALA}
#' @export
HSCALA <-   2L

#' C-HLI constant \code{HFRMLA}
#' @export
HFRMLA <-   3L

#' C-HLI constant \code{HGLNAM}
#' @export
HGLNAM <-   5L

#' C-HLI constant \code{HGLFOR}
#' @export
HGLFOR <-   6L

#' C-HLI constant \code{HUNDFT}
#' @export
HUNDFT <-   0L

#' C-HLI constant \code{HNUMRC}
#' @export
HNUMRC <-   1L

#' C-HLI constant \code{HNAMEL}
#' @export
HNAMEL <-   2L

#' C-HLI constant \code{HBOOLN}
#' @export
HBOOLN <-   3L

#' C-HLI constant \code{HSTRNG}
#' @export
HSTRNG <-   4L

#' C-HLI constant \code{HPRECN}
#' @export
HPRECN <-   5L

#' C-HLI constant \code{HDATE}
#' @export
HDATE  <-   6L

#' C-HLI constant \code{HBSUND}
#' @export
HBSUND <-   0L

#' C-HLI constant \code{HBSDAY}
#' @export
HBSDAY <-   1L

#' C-HLI constant \code{HBSBUS}
#' @export
HBSBUS <-   2L

#' C-HLI constant \code{HOBUND}
#' @export
HOBUND <-   0L

#' C-HLI constant \code{HOBBEG}
#' @export
HOBBEG <-   1L

#' C-HLI constant \code{HOBEND}
#' @export
HOBEND <-   2L

#' C-HLI constant \code{HOBAVG}
#' @export
HOBAVG <-   3L

#' C-HLI constant \code{HOBSUM}
#' @export
HOBSUM <-   4L

#' C-HLI constant \code{HOBANN}
#' @export
HOBANN <-   5L

#' C-HLI constant \code{HOBFRM}
#' @export
HOBFRM <-   6L

#' C-HLI constant \code{HOBHI}
#' @export
HOBHI  <-   7L

#' C-HLI constant \code{HOBLO}
#' @export
HOBLO  <-   8L

#' C-HLI constant \code{HUNDFX}
#' @export
HUNDFX <-   0L

#' C-HLI constant \code{HDAILY}
#' @export
HDAILY <-   8L

#' C-HLI constant \code{HBUSNS}
#' @export
HBUSNS <-   9L

#' C-HLI constant \code{HWKSUN}
#' @export
HWKSUN <-  16L

#' C-HLI constant \code{HWKMON}
#' @export
HWKMON <-  17L

#' C-HLI constant \code{HWKTUE}
#' @export
HWKTUE <-  18L

#' C-HLI constant \code{HWKWED}
#' @export
HWKWED <-  19L

#' C-HLI constant \code{HWKTHU}
#' @export
HWKTHU <-  20L

#' C-HLI constant \code{HWKFRI}
#' @export
HWKFRI <-  21L

#' C-HLI constant \code{HWKSAT}
#' @export
HWKSAT <-  22L

#' C-HLI constant \code{HTENDA}
#' @export
HTENDA <-  32L

#' C-HLI constant \code{HWASUN}
#' @export
HWASUN <-  64L

#' C-HLI constant \code{HWAMON}
#' @export
HWAMON <-  65L

#' C-HLI constant \code{HWATUE}
#' @export
HWATUE <-  66L

#' C-HLI constant \code{HWAWED}
#' @export
HWAWED <-  67L

#' C-HLI constant \code{HWATHU}
#' @export
HWATHU <-  68L

#' C-HLI constant \code{HWAFRI}
#' @export
HWAFRI <-  69L

#' C-HLI constant \code{HWASAT}
#' @export
HWASAT <-  70L

#' C-HLI constant \code{HWBSUN}
#' @export
HWBSUN <-  71L

#' C-HLI constant \code{HWBMON}
#' @export
HWBMON <-  72L

#' C-HLI constant \code{HWBTUE}
#' @export
HWBTUE <-  73L

#' C-HLI constant \code{HWBWED}
#' @export
HWBWED <-  74L

#' C-HLI constant \code{HWBTHU}
#' @export
HWBTHU <-  75L

#' C-HLI constant \code{HWBFRI}
#' @export
HWBFRI <-  76L

#' C-HLI constant \code{HWBSAT}
#' @export
HWBSAT <-  77L

#' C-HLI constant \code{HTWICM}
#' @export
HTWICM <- 128L

#' C-HLI constant \code{HMONTH}
#' @export
HMONTH <- 129L

#' C-HLI constant \code{HBMNOV}
#' @export
HBMNOV <- 144L

#' C-HLI constant \code{HBIMON}
#' @export
HBIMON <- 145L

#' C-HLI constant \code{HQTOCT}
#' @export
HQTOCT <- 160L

#' C-HLI constant \code{HQTNOV}
#' @export
HQTNOV <- 161L

#' C-HLI constant \code{HQTDEC}
#' @export
HQTDEC <- 162L

#' C-HLI constant \code{HANJAN}
#' @export
HANJAN <- 192L

#' C-HLI constant \code{HANFEB}
#' @export
HANFEB <- 193L

#' C-HLI constant \code{HANMAR}
#' @export
HANMAR <- 194L

#' C-HLI constant \code{HANAPR}
#' @export
HANAPR <- 195L

#' C-HLI constant \code{HANMAY}
#' @export
HANMAY <- 196L

#' C-HLI constant \code{HANJUN}
#' @export
HANJUN <- 197L

#' C-HLI constant \code{HANJUL}
#' @export
HANJUL <- 198L

#' C-HLI constant \code{HANAUG}
#' @export
HANAUG <- 199L

#' C-HLI constant \code{HANSEP}
#' @export
HANSEP <- 200L

#' C-HLI constant \code{HANOCT}
#' @export
HANOCT <- 201L

#' C-HLI constant \code{HANNOV}
#' @export
HANNOV <- 202L

#' C-HLI constant \code{HANDEC}
#' @export
HANDEC <- 203L

#' C-HLI constant \code{HSMJUL}
#' @export
HSMJUL <- 204L

#' C-HLI constant \code{HSMAUG}
#' @export
HSMAUG <- 205L

#' C-HLI constant \code{HSMSEP}
#' @export
HSMSEP <- 206L

#' C-HLI constant \code{HSMOCT}
#' @export
HSMOCT <- 207L

#' C-HLI constant \code{HSMNOV}
#' @export
HSMNOV <- 208L

#' C-HLI constant \code{HSMDEC}
#' @export
HSMDEC <- 209L

#' C-HLI constant \code{HAYPP}
#' @export
HAYPP  <- 224L

#' C-HLI constant \code{HAPPY}
#' @export
HAPPY  <- 225L

#' C-HLI constant \code{HSEC}
#' @export
HSEC   <- 226L

#' C-HLI constant \code{HMIN}
#' @export
HMIN   <- 227L

#' C-HLI constant \code{HHOUR}
#' @export
HHOUR  <- 228L

#' C-HLI constant \code{HMSEC}
#' @export
HMSEC  <- 229L

#' C-HLI constant \code{HCASEX}
#' @export
HCASEX <- 232L

#' C-HLI constant \code{HWEEK_PATTERN}
#' @export
HWEEK_PATTERN <- 233L

#' C-HLI constant \code{HJAN}
#' @export
HJAN   <-   1L

#' C-HLI constant \code{HFEB}
#' @export
HFEB   <-   2L

#' C-HLI constant \code{HMAR}
#' @export
HMAR   <-   3L

#' C-HLI constant \code{HAPR}
#' @export
HAPR   <-   4L

#' C-HLI constant \code{HMAY}
#' @export
HMAY   <-   5L

#' C-HLI constant \code{HJUN}
#' @export
HJUN   <-   6L

#' C-HLI constant \code{HJUL}
#' @export
HJUL   <-   7L

#' C-HLI constant \code{HAUG}
#' @export
HAUG   <-   8L

#' C-HLI constant \code{HSEP}
#' @export
HSEP   <-   9L

#' C-HLI constant \code{HOCT}
#' @export
HOCT   <-  10L

#' C-HLI constant \code{HNOV}
#' @export
HNOV   <-  11L

#' C-HLI constant \code{HDEC}
#' @export
HDEC   <-  12L

#' C-HLI constant \code{HFYJAN}
#' @export
HFYJAN <-   1L

#' C-HLI constant \code{HFYFEB}
#' @export
HFYFEB <-   2L

#' C-HLI constant \code{HFYMAR}
#' @export
HFYMAR <-   3L

#' C-HLI constant \code{HFYAPR}
#' @export
HFYAPR <-   4L

#' C-HLI constant \code{HFYMAY}
#' @export
HFYMAY <-   5L

#' C-HLI constant \code{HFYJUN}
#' @export
HFYJUN <-   6L

#' C-HLI constant \code{HFYJUL}
#' @export
HFYJUL <-   7L

#' C-HLI constant \code{HFYAUG}
#' @export
HFYAUG <-   8L

#' C-HLI constant \code{HFYSEP}
#' @export
HFYSEP <-   9L

#' C-HLI constant \code{HFYOCT}
#' @export
HFYOCT <-  10L

#' C-HLI constant \code{HFYNOV}
#' @export
HFYNOV <-  11L

#' C-HLI constant \code{HFYDEC}
#' @export
HFYDEC <-  12L

#' C-HLI constant \code{HSUN}
#' @export
HSUN   <-   1L

#' C-HLI constant \code{HMON}
#' @export
HMON   <-   2L

#' C-HLI constant \code{HTUE}
#' @export
HTUE   <-   3L

#' C-HLI constant \code{HWED}
#' @export
HWED   <-   4L

#' C-HLI constant \code{HTHU}
#' @export
HTHU   <-   5L

#' C-HLI constant \code{HFRI}
#' @export
HFRI   <-   6L

#' C-HLI constant \code{HSAT}
#' @export
HSAT   <-   7L

#' C-HLI constant \code{HASUN}
#' @export
HASUN  <-   1L

#' C-HLI constant \code{HAMON}
#' @export
HAMON  <-   2L

#' C-HLI constant \code{HATUE}
#' @export
HATUE  <-   3L

#' C-HLI constant \code{HAWED}
#' @export
HAWED  <-   4L

#' C-HLI constant \code{HATHU}
#' @export
HATHU  <-   5L

#' C-HLI constant \code{HAFRI}
#' @export
HAFRI  <-   6L

#' C-HLI constant \code{HASAT}
#' @export
HASAT  <-   7L

#' C-HLI constant \code{HBSUN}
#' @export
HBSUN  <-   8L

#' C-HLI constant \code{HBMON}
#' @export
HBMON  <-   9L

#' C-HLI constant \code{HBTUE}
#' @export
HBTUE  <-  10L

#' C-HLI constant \code{HBWED}
#' @export
HBWED  <-  11L

#' C-HLI constant \code{HBTHU}
#' @export
HBTHU  <-  12L

#' C-HLI constant \code{HBFRI}
#' @export
HBFRI  <-  13L

#' C-HLI constant \code{HBSAT}
#' @export
HBSAT  <-  14L

#' C-HLI constant \code{HFYFST}
#' @export
HFYFST <-   1L

#' C-HLI constant \code{HFYLST}
#' @export
HFYLST <-   2L

#' C-HLI constant \code{HFYAUT}
#' @export
HFYAUT <-   3L

#' C-HLI constant \code{HBEGIN}
#' @export
HBEGIN <-   1L

#' C-HLI constant \code{HEND}
#' @export
HEND   <-   2L

#' C-HLI constant \code{HINTVL}
#' @export
HINTVL <-   3L

#' C-HLI constant \code{HBEFOR}
#' @export
HBEFOR <-   1L

#' C-HLI constant \code{HAFTER}
#' @export
HAFTER <-   2L

#' C-HLI constant \code{HCONT}
#' @export
HCONT  <-   3L

#' C-HLI constant \code{HNMVAL}
#' @export
HNMVAL <-   0L

#' C-HLI constant \code{HNCVAL}
#' @export
HNCVAL <-   1L

#' C-HLI constant \code{HNAVAL}
#' @export
HNAVAL <-   2L

#' C-HLI constant \code{HNDVAL}
#' @export
HNDVAL <-   3L

#' C-HLI constant \code{HMGVAL}
#' @export
HMGVAL <-   4L

#' C-HLI constant \code{HUNCHG}
#' @export
HUNCHG <-   0L

#' C-HLI constant \code{HSERVR}
#' @export
HSERVR <-   0L

#' C-HLI constant \code{HCLNT}
#' @export
HCLNT  <-   1L

#' C-HLI constant \code{HCHANL}
#' @export
HCHANL <-   2L

#' C-HLI constant \code{HREAD}
#' @export
HREAD  <-   0L

#' C-HLI constant \code{HWRITE}
#' @export
HWRITE <-   1L

#' C-HLI constant \code{HALL}
#' @export
HALL   <-   2L

#' C-HLI constant \code{HNTMIS}
#' @export
HNTMIS <-   0L

#' C-HLI constant \code{HTMIS}
#' @export
HTMIS  <-   1L

#' C-HLI constant \code{HSMLEN}
#' @export
HSMLEN <-   2L

#' C-HLI constant \code{HNO}
#' @export
HNO    <-   0L

#' C-HLI constant \code{HYES}
#' @export
HYES   <-   1L

#' C-HLI constant \code{HNLALL}
#' @export
HNLALL <-  -1L

#' C-HLI constant \code{HLI_MAX_STR_LEN}
#' @export
HLI_MAX_STR_LEN <- 65534L

#' C-HLI constant \code{HMAXSCMD}
#' @export
HMAXSCMD <- 5002L

#' C-HLI constant \code{HLI_MAX_FAME_INPUT}
#' @export
HLI_MAX_FAME_INPUT <- 65534L

#' C-HLI constant \code{HLI_MAX_FAME_INPUT_SIZE}
#' @export
HLI_MAX_FAME_INPUT_SIZE <- 65535L

#' C-HLI constant \code{HLI_MAX_FAME_CMD}
#' @export
HLI_MAX_FAME_CMD <- 1048578L

#' C-HLI constant \code{HRMKEY}
#' @export
HRMKEY <-   0L


# functions
#' \code{cfmabrt}
#'
#' Abort a unit of work on a connection.
#'
#' @param status Integer
#' @param connkey Integer
#' @export
cfmabrt <- function(status, connkey) {
  result <- .C("_cfmabrt",
               as.integer(status$value),
               as.integer(connkey$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmalob}
#'
#' Add a new object and specify its allocation.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param class Integer
#' @param freq Integer
#' @param type Integer
#' @param basis Integer
#' @param observ Integer
#' @param numobs Integer
#' @param numchr Integer
#' @param growth Numeric
#' @export
cfmalob <-
  function(status,
           dbkey,
           objnam,
           class,
           freq,
           type,
           basis,
           observ,
           numobs,
           numchr,
           growth) {
    result <- .C(
      "_cfmalob",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(class$value),
      as.integer(freq$value),
      as.integer(type$value),
      as.integer(basis$value),
      as.integer(observ$value),
      as.integer(numobs$value),
      as.integer(numchr$value),
      as.single(growth$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])

  }

#' \code{cfmasrt}
#'
#' Check for database changes during a unit of work.
#'
#' @param status Integer
#' @param connkey Integer
#' @param assert_type Integer
#' @param assertion Character
#' @param perspective Integer
#' @param grouping Integer
#' @param dblist Integer
#' @export
cfmasrt <-
  function(status,
           connkey,
           assert_type,
           assertion,
           perspective,
           grouping,
           dblist) {
    result <- .C(
      "_cfmasrt",
      as.integer(status$value),
      as.integer(connkey$value),
      as.integer(assert_type$value),
      as.character(assertion$value),
      as.integer(perspective$value),
      as.integer(grouping$value),
      as.integer(dblist$value)
    )

    status$value <- as.integer(result[[1]])
    assertion$value <- as.character(result[[4]])
    dblist$value <- as.integer(result[[7]])

  }

#' \code{cfmbwdy}
#'
#' Get the biweekday of a date.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param biwkdy Integer
#' @export
cfmbwdy <- function(status, freq, date, biwkdy) {
  result <- .C(
    "_cfmbwdy",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(biwkdy$value)
  )

  status$value <- as.integer(result[[1]])
  biwkdy$value <- as.integer(result[[4]])

}

#' \code{cfmchfr}
#'
#' Change a date to a different frequency.
#'
#' @param status Integer
#' @param sfreq Integer
#' @param sdate Integer
#' @param select Integer
#' @param tfreq Integer
#' @param tdate Integer
#' @param relate Integer
#' @export
cfmchfr <-
  function(status,
           sfreq,
           sdate,
           select,
           tfreq,
           tdate,
           relate) {
    result <- .C(
      "_cfmchfr",
      as.integer(status$value),
      as.integer(sfreq$value),
      as.integer(sdate$value),
      as.integer(select$value),
      as.integer(tfreq$value),
      as.integer(tdate$value),
      as.integer(relate$value)
    )

    status$value <- as.integer(result[[1]])
    tdate$value <- as.integer(result[[6]])

  }

#' \code{cfmclcn}
#'
#' Close a connection to a FAME Database Server.
#'
#' @param status Integer
#' @param connkey Integer
#' @export
cfmclcn <- function(status, connkey) {
  result <- .C("_cfmclcn",
               as.integer(status$value),
               as.integer(connkey$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmcldb}
#'
#' Close a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @export
cfmcldb <- function(status, dbkey) {
  result <- .C("_cfmcldb",
               as.integer(status$value),
               as.integer(dbkey$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmcmmt}
#'
#' Commit a unit of work on a connection.
#'
#' @param status Integer
#' @param connkey Integer
#' @export
cfmcmmt <- function(status, connkey) {
  result <- .C("_cfmcmmt",
               as.integer(status$value),
               as.integer(connkey$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmcpob}
#'
#' Copy one object to another.
#'
#' @param status Integer
#' @param srckey Integer
#' @param tarkey Integer
#' @param srcnam Character
#' @param tarnam Character
#' @export
cfmcpob <- function(status, srckey, tarkey, srcnam, tarnam) {
  result <- .C(
    "_cfmcpob",
    as.integer(status$value),
    as.integer(srckey$value),
    as.integer(tarkey$value),
    as.character(srcnam$value),
    as.character(tarnam$value)
  )

  status$value <- as.integer(result[[1]])
  srcnam$value <- as.character(result[[4]])
  tarnam$value <- as.character(result[[5]])

}

#' \code{cfmdatd}
#'
#' Convert a date to a year, month, and day.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param month Integer
#' @param day Integer
#' @export
cfmdatd <- function(status, freq, date, year, month, day) {
  result <- .C(
    "_cfmdatd",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(year$value),
    as.integer(month$value),
    as.integer(day$value)
  )

  status$value <- as.integer(result[[1]])
  year$value <- as.integer(result[[4]])
  month$value <- as.integer(result[[5]])
  day$value <- as.integer(result[[6]])

}

#' \code{cfmdatf}
#'
#' Convert a date to a fiscal year and period.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param period Integer
#' @param fmonth Integer
#' @param flabel Integer
#' @export
cfmdatf <-
  function(status,
           freq,
           date,
           year,
           period,
           fmonth,
           flabel) {
    result <- .C(
      "_cfmdatf",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.integer(year$value),
      as.integer(period$value),
      as.integer(fmonth$value),
      as.integer(flabel$value)
    )

    status$value <- as.integer(result[[1]])
    year$value <- as.integer(result[[4]])
    period$value <- as.integer(result[[5]])

  }

#' \code{cfmdati}
#'
#' Convert a date to a string using an image.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param datstr Character
#' @param image Character
#' @param fmonth Integer
#' @param flabel Integer
#' @export
cfmdati <-
  function(status,
           freq,
           date,
           datstr,
           image,
           fmonth,
           flabel) {
    result <- .C(
      "_cfmdati",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.character(datstr$value),
      as.character(image$value),
      as.integer(fmonth$value),
      as.integer(flabel$value)
    )

    status$value <- as.integer(result[[1]])
    datstr$value <- as.character(result[[4]])
    image$value <- as.character(result[[5]])

  }

#' \code{cfmdatl}
#'
#' Convert a date to a date literal string.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param datstr Character
#' @param fmonth Integer
#' @param flabel Integer
#' @export
cfmdatl <- function(status, freq, date, datstr, fmonth, flabel) {
  result <- .C(
    "_cfmdatl",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.character(datstr$value),
    as.integer(fmonth$value),
    as.integer(flabel$value)
  )

  status$value <- as.integer(result[[1]])
  datstr$value <- as.character(result[[4]])

}

#' \code{cfmdatp}
#'
#' Convert a date to a year and period.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param period Integer
#' @export
cfmdatp <- function(status, freq, date, year, period) {
  result <- .C(
    "_cfmdatp",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(year$value),
    as.integer(period$value)
  )

  status$value <- as.integer(result[[1]])
  year$value <- as.integer(result[[4]])
  period$value <- as.integer(result[[5]])

}

#' \code{cfmdatt}
#'
#' Convert an intraday date to a daily date and time.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param hour Integer
#' @param minute Integer
#' @param second Integer
#' @param ddate Integer
#' @export
cfmdatt <-
  function(status,
           freq,
           date,
           hour,
           minute,
           second,
           ddate) {
    result <- .C(
      "_cfmdatt",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.integer(hour$value),
      as.integer(minute$value),
      as.integer(second$value),
      as.integer(ddate$value)
    )

    status$value <- as.integer(result[[1]])
    hour$value <- as.integer(result[[4]])
    minute$value <- as.integer(result[[5]])
    second$value <- as.integer(result[[6]])
    ddate$value <- as.integer(result[[7]])

  }

#' \code{cfmddat}
#'
#' Convert a year, month, and day to a date.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param month Integer
#' @param day Integer
#' @export
cfmddat <- function(status, freq, date, year, month, day) {
  result <- .C(
    "_cfmddat",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(year$value),
    as.integer(month$value),
    as.integer(day$value)
  )

  status$value <- as.integer(result[[1]])
  date$value <- as.integer(result[[3]])

}

#' \code{cfmddes}
#'
#' Set a database's DESCRIPTION attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param des Character
#' @export
cfmddes <- function(status, dbkey, des) {
  result <- .C(
    "_cfmddes",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(des$value)
  )

  status$value <- as.integer(result[[1]])
  des$value <- as.character(result[[3]])

}

#' \code{cfmddoc}
#'
#' Set a database's DOCUMENTATION attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param doc Character
#' @export
cfmddoc <- function(status, dbkey, doc) {
  result <- .C(
    "_cfmddoc",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(doc$value)
  )

  status$value <- as.integer(result[[1]])
  doc$value <- as.character(result[[3]])

}

#' \code{cfmdlen}
#'
#' Get the length of an object's DESCRIPTION and DOCUMENTATION attributes.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param deslen Integer
#' @param doclen Integer
#' @export
cfmdlen <- function(status, dbkey, objnam, deslen, doclen) {
  result <- .C(
    "_cfmdlen",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(deslen$value),
    as.integer(doclen$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  deslen$value <- as.integer(result[[4]])
  doclen$value <- as.integer(result[[5]])

}

#' \code{cfmdlob}
#'
#' Delete an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @export
cfmdlob <- function(status, dbkey, objnam) {
  result <- .C(
    "_cfmdlob",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])

}

#' \code{cfmexpiration}
#'
#' Get the license expiration date.
#'
#' @param status Integer
#' @param date Integer
#' @export
cfmexpiration <- function(status, date) {
  result <- .C("_cfmexpiration",
               as.integer(status$value),
               as.integer(date$value))

  status$value <- as.integer(result[[1]])
  date$value <- as.integer(result[[2]])

}

#' \code{cfmfame}
#'
#' Send the FAME process a command to be executed.
#'
#' @param status Integer
#' @param cmd Character
#' @export
cfmfame <- function(status, cmd) {
  result <- .C("_cfmfame",
               as.integer(status$value),
               as.character(cmd$value))

  status$value <- as.integer(result[[1]])
  cmd$value <- as.character(result[[2]])

}

#' \code{cfmfdat}
#'
#' Convert a fiscal year and period to a date.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param period Integer
#' @param fmonth Integer
#' @param flabel Integer
#' @export
cfmfdat <-
  function(status,
           freq,
           date,
           year,
           period,
           fmonth,
           flabel) {
    result <- .C(
      "_cfmfdat",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.integer(year$value),
      as.integer(period$value),
      as.integer(fmonth$value),
      as.integer(flabel$value)
    )

    status$value <- as.integer(result[[1]])
    date$value <- as.integer(result[[3]])

  }

#' \code{cfmfdiv}
#'
#' See if one frequency is evenly divisible by another.
#'
#' @param status Integer
#' @param freq1 Integer
#' @param freq2 Integer
#' @param flag Integer
#' @export
cfmfdiv <- function(status, freq1, freq2, flag) {
  result <- .C(
    "_cfmfdiv",
    as.integer(status$value),
    as.integer(freq1$value),
    as.integer(freq2$value),
    as.integer(flag$value)
  )

  status$value <- as.integer(result[[1]])
  flag$value <- as.integer(result[[4]])

}

#' \code{cfmferr}
#'
#' Get the text of the FAME error.
#'
#' @param status Integer
#' @param errtxt Character
#' @export
cfmferr <- function(status, errtxt) {
  result <- .C("_cfmferr",
               as.integer(status$value),
               as.character(errtxt$value))

  status$value <- as.integer(result[[1]])
  errtxt$value <- as.character(result[[2]])

}

#' \code{cfmfin}
#'
#' Finish the C HLI.
#'
#' @param status Integer
#' @examples
#' status <- Integer(-1L)
#' cfmfin(status)
#' 
#' @export
cfmfin <- function(status) {
  result <- .C("_cfmfin",
               as.integer(status$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmgcid}
#'
#' Get the connection key for a database key.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param connkey Integer
#' @export
cfmgcid <- function(status, dbkey, connkey) {
  result <- .C(
    "_cfmgcid",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(connkey$value)
  )

  status$value <- as.integer(result[[1]])
  connkey$value <- as.integer(result[[3]])

}

#' \code{cfmgdat}
#'
#' Get an object's creation and last modification dates.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param freq Integer
#' @param cdate Integer
#' @param mdate Integer
#' @export
cfmgdat <- function(status, dbkey, objnam, freq, cdate, mdate) {
  result <- .C(
    "_cfmgdat",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(freq$value),
    as.integer(cdate$value),
    as.integer(mdate$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  cdate$value <- as.integer(result[[5]])
  mdate$value <- as.integer(result[[6]])

}

#' \code{cfmgdba}
#'
#' Get database attributes.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param cyear Integer
#' @param cmonth Integer
#' @param cday Integer
#' @param myear Integer
#' @param mmonth Integer
#' @param mday Integer
#' @param desc Character
#' @param doc Character
#' @export
cfmgdba <-
  function(status,
           dbkey,
           cyear,
           cmonth,
           cday,
           myear,
           mmonth,
           mday,
           desc,
           doc) {
    result <- .C(
      "_cfmgdba",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.integer(cyear$value),
      as.integer(cmonth$value),
      as.integer(cday$value),
      as.integer(myear$value),
      as.integer(mmonth$value),
      as.integer(mday$value),
      as.character(desc$value),
      as.character(doc$value)
    )

    status$value <- as.integer(result[[1]])
    cyear$value <- as.integer(result[[3]])
    cmonth$value <- as.integer(result[[4]])
    cday$value <- as.integer(result[[5]])
    myear$value <- as.integer(result[[6]])
    mmonth$value <- as.integer(result[[7]])
    mday$value <- as.integer(result[[8]])
    desc$value <- as.character(result[[9]])
    doc$value <- as.character(result[[10]])

  }

#' \code{cfmgdbd}
#'
#' Get a database's creation and last modification dates.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param freq Integer
#' @param cdate Integer
#' @param mdate Integer
#' @export
cfmgdbd <- function(status, dbkey, freq, cdate, mdate) {
  result <- .C(
    "_cfmgdbd",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(freq$value),
    as.integer(cdate$value),
    as.integer(mdate$value)
  )

  status$value <- as.integer(result[[1]])
  cdate$value <- as.integer(result[[4]])
  mdate$value <- as.integer(result[[5]])

}

#' \code{cfmget_dimension}
#'
#' Get the dimension attribute for a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param dimen Integer
#' @export
cfmget_dimension <- function(status, dbkey, dimen) {
  result <- .C(
    "_cfmget_dimension",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(dimen$value)
  )

  status$value <- as.integer(result[[1]])
  dimen$value <- as.integer(result[[3]])

}

#' \code{cfmget_extradots}
#'
#' Get the extradots attribute for a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param xdots Integer
#' @export
cfmget_extradots <- function(status, dbkey, xdots) {
  result <- .C(
    "_cfmget_extradots",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(xdots$value)
  )

  status$value <- as.integer(result[[1]])
  xdots$value <- as.integer(result[[3]])

}

#' \code{cfmglen}
#'
#' Get the length of a database's DESCRIPTION and DOCUMENTATION attributes.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param deslen Integer
#' @param doclen Integer
#' @export
cfmglen <- function(status, dbkey, deslen, doclen) {
  result <- .C(
    "_cfmglen",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(deslen$value),
    as.integer(doclen$value)
  )

  status$value <- as.integer(result[[1]])
  deslen$value <- as.integer(result[[3]])
  doclen$value <- as.integer(result[[4]])

}

#' \code{cfmgnam}
#'
#' Get an object's real name.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param basnam Character
#' @export
cfmgnam <- function(status, dbkey, objnam, basnam) {
  result <- .C(
    "_cfmgnam",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(basnam$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  basnam$value <- as.character(result[[4]])

}

#' \code{cfmgsln}
#'
#' Get an object's STRINGLENGTH attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param length Integer
#' @export
cfmgsln <- function(status, dbkey, objnam, length) {
  result <- .C(
    "_cfmgsln",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(length$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  length$value <- as.integer(result[[4]])

}

#' \code{cfmgtali}
#'
#' Get an object's ALIAS attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param aliass Character
#' @param inlen Integer
#' @param outlen Integer
#' @export
cfmgtali <- function(status,
                     dbkey,
                     objnam,
                     aliass,
                     inlen,
                     outlen) {
  result <- .C(
    "_cfmgtali",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(aliass$value),
    as.integer(inlen$value),
    as.integer(outlen$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  aliass$value <- as.character(result[[4]])
  outlen$value <- as.integer(result[[6]])

}

#' \code{cfmgtaso}
#'
#' Get an object's ASSOCIATE attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param assoc Character
#' @param inlen Integer
#' @param outlen Integer
#' @export
cfmgtaso <- function(status, dbkey, objnam, assoc, inlen, outlen) {
  result <- .C(
    "_cfmgtaso",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(assoc$value),
    as.integer(inlen$value),
    as.integer(outlen$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  assoc$value <- as.character(result[[4]])
  outlen$value <- as.integer(result[[6]])

}


#' \code{cfmgtatt_char}
#'
#' Get the value of a user-defined \code{Character} attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param value Character
#' @param inlen Integer
#' @param outlen Integer
#' @export
cfmgtatt_char <-
  function(status,
           dbkey,
           objnam,
           atttyp,
           attnam,
           value,
           inlen,
           outlen) {
    result <- .C(
      "_cfmgtatt_char",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(atttyp$value),
      as.character(attnam$value),
      as.character(value$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    atttyp$value <- as.integer(result[[4]])
    attnam$value <- as.character(result[[5]])
    value$value <- as.character(result[[6]])
    outlen$value <- as.integer(result[[8]])

  }

#' \code{cfmgtatt_double}
#'
#' Get the value of a user-defined \code{Numeric} attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param value Numeric
#' @param inlen Integer
#' @param outlen Integer
#' @export
cfmgtatt_double <-
  function(status,
           dbkey,
           objnam,
           atttyp,
           attnam,
           value,
           inlen,
           outlen) {
    result <- .C(
      "_cfmgtatt_double",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(atttyp$value),
      as.character(attnam$value),
      as.numeric(value$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    atttyp$value <- as.integer(result[[4]])
    attnam$value <- as.character(result[[5]])
    value$value <- as.numeric(result[[6]])
    outlen$value <- as.integer(result[[8]])

  }

#' \code{cfmgtatt_float}
#'
#' Get the value of a user-defined \code{Numeric} attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param value Numeric
#' @param inlen Integer
#' @param outlen Integer
#' @export
cfmgtatt_float <-
  function(status,
           dbkey,
           objnam,
           atttyp,
           attnam,
           value,
           inlen,
           outlen) {
    result <- .C(
      "_cfmgtatt_float",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(atttyp$value),
      as.character(attnam$value),
      as.single(value$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    atttyp$value <- as.integer(result[[4]])
    attnam$value <- as.character(result[[5]])
    value$value <- as.single(result[[6]])
    outlen$value <- as.integer(result[[8]])

  }

#' \code{cfmgtatt_int}
#'
#' Get the value of a user-defined \code{Integer} attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param value Integer
#' @param inlen Integer
#' @param outlen Integer
#' @export
cfmgtatt_int <-
  function(status,
           dbkey,
           objnam,
           atttyp,
           attnam,
           value,
           inlen,
           outlen) {
    result <- .C(
      "_cfmgtatt_int",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(atttyp$value),
      as.character(attnam$value),
      as.integer(value$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    atttyp$value <- as.integer(result[[4]])
    attnam$value <- as.character(result[[5]])
    value$value <- as.integer(result[[6]])
    outlen$value <- as.integer(result[[8]])

  }

#' \code{cfmgtnl}
#'
#' Get an element of a namelist or the whole namelist.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param index Integer
#' @param strval Character
#' @param inlen Integer
#' @param outlen Integer
#' @export
cfmgtnl <-
  function(status,
           dbkey,
           objnam,
           index,
           strval,
           inlen,
           outlen) {
    result <- .C(
      "_cfmgtnl",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(index$value),
      as.character(strval$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    strval$value <- as.character(result[[5]])
    outlen$value <- as.integer(result[[7]])

  }

#' \code{cfmgtstr}
#'
#' Get a single string value.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param strval Character
#' @param ismiss Integer
#' @param inlen Integer
#' @param outlen Integer
#' @export
cfmgtstr <-
  function(status,
           dbkey,
           objnam,
           range,
           strval,
           ismiss,
           inlen,
           outlen) {
    result <- .C(
      "_cfmgtstr",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.character(strval$value),
      as.integer(ismiss$value),
      as.integer(inlen$value),
      as.integer(outlen$value),
      length(range$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    strval$value <- as.character(result[[5]])
    ismiss$value <- as.integer(result[[6]])
    outlen$value <- as.integer(result[[8]])

  }

#' \code{cfmgtsts}
#'
#' Get a range of string values.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param strary Character vector
#' @param misary Integer vector
#' @param inlenary Integer vector
#' @param outlenary Integer vector
#' @export
cfmgtsts <-
  function(status,
           dbkey,
           objnam,
           range,
           strary,
           misary,
           inlenary,
           outlenary) {
    result <- .C(
      "_cfmgtsts",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.character(strary$value),
      as.integer(misary$value),
      as.integer(inlenary$value),
      as.integer(outlenary$value),
      length(range$value),
      length(strary$value),
      length(misary$value),
      length(inlenary$value),
      length(outlenary$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    strary$value <- as.character(result[[5]])
    misary$value <- as.integer(result[[6]])
    outlenary$value <- as.integer(result[[8]])

  }

#' \code{cfmidat}
#'
#' Convert a string to a date using an image.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param datstr Character
#' @param image Character
#' @param fmonth Integer
#' @param flabel Integer
#' @param centry Integer
#' @export
cfmidat <-
  function(status,
           freq,
           date,
           datstr,
           image,
           fmonth,
           flabel,
           centry) {
    result <- .C(
      "_cfmidat",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.character(datstr$value),
      as.character(image$value),
      as.integer(fmonth$value),
      as.integer(flabel$value),
      as.integer(centry$value)
    )

    status$value <- as.integer(result[[1]])
    date$value <- as.integer(result[[3]])
    datstr$value <- as.character(result[[4]])
    image$value <- as.character(result[[5]])

  }

#' \code{cfmini}
#'
#' Initialize the C HLI.
#'
#' @param status Integer
#' @examples
#' status <- Integer(-1L)
#' cfmini(status)
#' 
#' @export
cfmini <- function(status) {
  result <- .C("_cfmini",
               as.integer(status$value))

  status$value <- as.integer(result[[1]])

  if (status$value == 98) {
    if (Sys.getenv("FAME") != "") {
      cat(
        sprintf(
          paste0("\nTo use the FIS MarketMap C-Toolkit (FAME C-HLI):\n\t",
          "1) exit R\n\t",
          "2) delete the fake version:\n\t\t%s\n\t",
          "3) restart R\n\n"),
          paste0(
            find.package("rhli"),
            "/libs",
            Sys.getenv("R_ARCH"),
            "/chli",
            .Platform$dynlib.ext
          )
        )
      )
    }
    else{
      cat("\nFAME does not appear to be installed\n")
    }
  }
  else if (status$value == 55) {
    cat(
      "\n\nEnvironment variable QOMA_PIN is incorrect or not set.\n\n",
      sep = ""
    )
  }

}

#' \code{cfminwc}
#'
#' Initialize a wildcard expansion.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param wilnam Character
#' @export
cfminwc <- function(status, dbkey, wilnam) {
  result <- .C(
    "_cfminwc",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(wilnam$value)
  )

  status$value <- as.integer(result[[1]])
  wilnam$value <- as.character(result[[3]])

}

#' \code{cfmisbm}
#'
#' See if a Boolean value is a missing value.
#'
#' @param status Integer
#' @param value Integer
#' @param ismiss Integer
#' @export
cfmisbm <- function(status, value, ismiss) {
  result <- .C(
    "_cfmisbm",
    as.integer(status$value),
    as.integer(value$value),
    as.integer(ismiss$value)
  )

  status$value <- as.integer(result[[1]])
  ismiss$value <- as.integer(result[[3]])

}

#' \code{cfmisdm}
#'
#' See if a date value is a missing value.
#'
#' @param status Integer
#' @param value Integer
#' @param ismiss Integer
#' @export
cfmisdm <- function(status, value, ismiss) {
  result <- .C(
    "_cfmisdm",
    as.integer(status$value),
    as.integer(value$value),
    as.integer(ismiss$value)
  )

  status$value <- as.integer(result[[1]])
  ismiss$value <- as.integer(result[[3]])

}

#' \code{cfmislp}
#'
#' See if a year is a leap year.
#'
#' @param status Integer
#' @param year Integer
#' @param leap Integer
#' @export
cfmislp <- function(status, year, leap) {
  result <- .C(
    "_cfmislp",
    as.integer(status$value),
    as.integer(year$value),
    as.integer(leap$value)
  )

  status$value <- as.integer(result[[1]])
  leap$value <- as.integer(result[[3]])

}

#' \code{cfmisnm}
#'
#' See if a numeric value is a missing value.
#'
#' @param status Integer
#' @param value Numeric
#' @param ismiss Integer
#' @export
cfmisnm <- function(status, value, ismiss) {
  result <- .C(
    "_cfmisnm",
    as.integer(status$value),
    as.single(value$value),
    as.integer(ismiss$value)
  )

  status$value <- as.integer(result[[1]])
  ismiss$value <- as.integer(result[[3]])

}

#' \code{cfmispm}
#'
#' See if a precision value is a missing value.
#'
#' @param status Integer
#' @param value Numeric
#' @param ismiss Integer
#' @export
cfmispm <- function(status, value, ismiss) {
  result <- .C(
    "_cfmispm",
    as.integer(status$value),
    as.numeric(value$value),
    as.integer(ismiss$value)
  )

  status$value <- as.integer(result[[1]])
  ismiss$value <- as.integer(result[[3]])

}

#' \code{cfmissm}
#'
#' See if a string value is a missing value.
#'
#' @param status Integer
#' @param value Character
#' @param ismiss Integer
#' @export
cfmissm <- function(status, value, ismiss) {
  result <- .C(
    "_cfmissm",
    as.integer(status$value),
    as.character(value$value),
    as.integer(ismiss$value)
  )

  status$value <- as.integer(result[[1]])
  value$value <- as.character(result[[2]])
  ismiss$value <- as.integer(result[[3]])

}

#' \code{cfmlali}
#'
#' Get the length of an object's ALIAS attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param alilen Integer
#' @export
cfmlali <- function(status, dbkey, objnam, alilen) {
  result <- .C(
    "_cfmlali",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(alilen$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  alilen$value <- as.integer(result[[4]])

}

#' \code{cfmlaso}
#'
#' Get the length of an object's ASSOCIATE attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param asolen Integer
#' @export
cfmlaso <- function(status, dbkey, objnam, asolen) {
  result <- .C(
    "_cfmlaso",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(asolen$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  asolen$value <- as.integer(result[[4]])

}

#' \code{cfmlatt}
#'
#' Get the length of a user-defined string or namelist attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param attlen Integer
#' @export
cfmlatt <- function(status,
                    dbkey,
                    objnam,
                    atttyp,
                    attnam,
                    attlen) {
  result <- .C(
    "_cfmlatt",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(atttyp$value),
    as.character(attnam$value),
    as.integer(attlen$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  attnam$value <- as.character(result[[5]])
  attlen$value <- as.integer(result[[6]])

}

#' \code{cfmldat}
#'
#' Convert a date literal string to a date.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param datstr Character
#' @param fmonth Integer
#' @param flabel Integer
#' @param centry Integer
#' @export
cfmldat <-
  function(status,
           freq,
           date,
           datstr,
           fmonth,
           flabel,
           centry) {
    result <- .C(
      "_cfmldat",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.character(datstr$value),
      as.integer(fmonth$value),
      as.integer(flabel$value),
      as.integer(centry$value)
    )

    status$value <- as.integer(result[[1]])
    date$value <- as.integer(result[[3]])
    datstr$value <- as.character(result[[4]])

  }

#' \code{cfmlerr}
#'
#' Get the length of the FAME error.
#'
#' @param status Integer
#' @param len Integer
#' @export
cfmlerr <- function(status, len) {
  result <- .C("_cfmlerr",
               as.integer(status$value),
               as.integer(len$value))

  status$value <- as.integer(result[[1]])
  len$value <- as.integer(result[[2]])

}

#' \code{cfmlsts}
#'
#' Get the lengths of a range of string values.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param lenary Integer vector
#' @export
cfmlsts <- function(status, dbkey, objnam, range, lenary) {
  result <- .C(
    "_cfmlsts",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.integer(lenary$value),
    length(range$value),
    length(lenary$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  lenary$value <- as.integer(result[[5]])

}

#' \code{cfmncnt}
#'
#' Get the length of a namelist.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param length Integer
#' @export
cfmncnt <- function(status, dbkey, objnam, length) {
  result <- .C(
    "_cfmncnt",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(length$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  length$value <- as.integer(result[[4]])

}

#' \code{cfmnlen}
#'
#' Get the length of the buffer for reading a namelist.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param index Integer
#' @param length Integer
#' @export
cfmnlen <- function(status, dbkey, objnam, index, length) {
  result <- .C(
    "_cfmnlen",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(index$value),
    as.integer(length$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  length$value <- as.integer(result[[5]])

}

#' \code{cfmnwob}
#'
#' Add a new object to a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param class Integer
#' @param freq Integer
#' @param type Integer
#' @param basis Integer
#' @param observ Integer
#' @export
cfmnwob <-
  function(status,
           dbkey,
           objnam,
           class,
           freq,
           type,
           basis,
           observ) {
    result <- .C(
      "_cfmnwob",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(class$value),
      as.integer(freq$value),
      as.integer(type$value),
      as.integer(basis$value),
      as.integer(observ$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])

  }

#' \code{cfmnxwc}
#'
#' Get the next name matching a wildcard.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param class Integer
#' @param type Integer
#' @param freq Integer
#' @export
cfmnxwc <- function(status, dbkey, objnam, class, type, freq) {
  result <- .C(
    "_cfmnxwc",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(class$value),
    as.integer(type$value),
    as.integer(freq$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  class$value <- as.integer(result[[4]])
  type$value <- as.integer(result[[5]])
  freq$value <- as.integer(result[[6]])

}

#' \code{cfmopcn}
#'
#' Open a connection to a FAME Database Server.
#'
#' @param status Integer
#' @param connkey Integer
#' @param service Character
#' @param hostname Character
#' @param username Character
#' @param password Character
#' @export
cfmopcn <-
  function(status,
           connkey,
           service,
           hostname,
           username,
           password) {
    result <- .C(
      "_cfmopcn",
      as.integer(status$value),
      as.integer(connkey$value),
      as.character(service$value),
      as.character(hostname$value),
      as.character(username$value),
      as.character(password$value)
    )

    status$value <- as.integer(result[[1]])
    connkey$value <- as.integer(result[[2]])
    service$value <- as.character(result[[3]])
    hostname$value <- as.character(result[[4]])
    username$value <- as.character(result[[5]])
    password$value <- as.character(result[[6]])

  }

#' \code{cfmopdb}
#'
#' Open a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param dbname Character
#' @param mode Integer
#' @export
cfmopdb <- function(status, dbkey, dbname, mode) {
  result <- .C(
    "_cfmopdb",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(dbname$value),
    as.integer(mode$value)
  )

  status$value <- as.integer(result[[1]])
  dbkey$value <- as.integer(result[[2]])
  dbname$value <- as.character(result[[3]])

}

#' \code{cfmopdc}
#'
#' Open a database on a connection.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param dbname Character
#' @param mode Integer
#' @param connkey Integer
#' @export
cfmopdc <- function(status, dbkey, dbname, mode, connkey) {
  result <- .C(
    "_cfmopdc",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(dbname$value),
    as.integer(mode$value),
    as.integer(connkey$value)
  )

  status$value <- as.integer(result[[1]])
  dbkey$value <- as.integer(result[[2]])
  dbname$value <- as.character(result[[3]])

}

#' \code{cfmoprc}
#'
#' Open an analytical channel on a connection.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param connkey Integer
#' @export
cfmoprc <- function(status, dbkey, connkey) {
  result <- .C(
    "_cfmoprc",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(connkey$value)
  )

  status$value <- as.integer(result[[1]])
  dbkey$value <- as.integer(result[[2]])

}

#' \code{cfmopre}
#'
#' Open an analytical channel to a server.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param svname Character
#' @export
cfmopre <- function(status, dbkey, svname) {
  result <- .C(
    "_cfmopre",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(svname$value)
  )

  status$value <- as.integer(result[[1]])
  dbkey$value <- as.integer(result[[2]])
  svname$value <- as.character(result[[3]])

}

#' \code{cfmopwk}
#'
#' Open the FAME session WORK database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @export
cfmopwk <- function(status, dbkey) {
  result <- .C("_cfmopwk",
               as.integer(status$value),
               as.integer(dbkey$value))

  status$value <- as.integer(result[[1]])
  dbkey$value <- as.integer(result[[2]])

}

#' \code{cfmosiz}
#'
#' Get the size of an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param class Integer
#' @param type Integer
#' @param freq Integer
#' @param fyear Integer
#' @param fprd Integer
#' @param lyear Integer
#' @param lprd Integer
#' @export
cfmosiz <-
  function(status,
           dbkey,
           objnam,
           class,
           type,
           freq,
           fyear,
           fprd,
           lyear,
           lprd) {
    result <- .C(
      "_cfmosiz",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(class$value),
      as.integer(type$value),
      as.integer(freq$value),
      as.integer(fyear$value),
      as.integer(fprd$value),
      as.integer(lyear$value),
      as.integer(lprd$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    class$value <- as.integer(result[[4]])
    type$value <- as.integer(result[[5]])
    freq$value <- as.integer(result[[6]])
    fyear$value <- as.integer(result[[7]])
    fprd$value <- as.integer(result[[8]])
    lyear$value <- as.integer(result[[9]])
    lprd$value <- as.integer(result[[10]])

  }

#' \code{cfmpack}
#'
#' Mark a database as packed.
#'
#' @param status Integer
#' @param dbkey Integer
#' @export
cfmpack <- function(status, dbkey) {
  result <- .C("_cfmpack",
               as.integer(status$value),
               as.integer(dbkey$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmpdat}
#'
#' Convert a year and period to a date.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param period Integer
#' @export
cfmpdat <- function(status, freq, date, year, period) {
  result <- .C(
    "_cfmpdat",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(year$value),
    as.integer(period$value)
  )

  status$value <- as.integer(result[[1]])
  date$value <- as.integer(result[[3]])

}

#' \code{cfmpfrq}
#'
#' Pack a frequency.
#'
#' @param status Integer
#' @param freq Integer
#' @param base Integer
#' @param nunits Integer
#' @param year Integer
#' @param month Integer
#' @export
cfmpfrq <- function(status, freq, base, nunits, year, month) {
  result <- .C(
    "_cfmpfrq",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(base$value),
    as.integer(nunits$value),
    as.integer(year$value),
    as.integer(month$value)
  )

  status$value <- as.integer(result[[1]])
  freq$value <- as.integer(result[[2]])

}

#' \code{cfmpind}
#'
#' Get the number of periods in a day.
#'
#' @param status Integer
#' @param freq Integer
#' @param count Integer
#' @export
cfmpind <- function(status, freq, count) {
  result <- .C(
    "_cfmpind",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(count$value)
  )

  status$value <- as.integer(result[[1]])
  count$value <- as.integer(result[[3]])

}

#' \code{cfmpinm}
#'
#' Get the number of periods in a month.
#'
#' @param status Integer
#' @param freq Integer
#' @param year Integer
#' @param month Integer
#' @param count Integer
#' @export
cfmpinm <- function(status, freq, year, month, count) {
  result <- .C(
    "_cfmpinm",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(year$value),
    as.integer(month$value),
    as.integer(count$value)
  )

  status$value <- as.integer(result[[1]])
  count$value <- as.integer(result[[5]])

}

#' \code{cfmpiny}
#'
#' Get the number of periods in a year.
#'
#' @param status Integer
#' @param freq Integer
#' @param year Integer
#' @param count Integer
#' @export
cfmpiny <- function(status, freq, year, count) {
  result <- .C(
    "_cfmpiny",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(year$value),
    as.integer(count$value)
  )

  status$value <- as.integer(result[[1]])
  count$value <- as.integer(result[[4]])

}

#' \code{cfmpodb}
#'
#' Post a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @export
cfmpodb <- function(status, dbkey) {
  result <- .C("_cfmpodb",
               as.integer(status$value),
               as.integer(dbkey$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmrdfa_double}
#'
#' Read all of the \code{Numeric} data from an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param wntobs Integer
#' @param syear Integer
#' @param sprd Integer
#' @param gotobs Integer
#' @param valary Numeric vector
#' @param tmiss Integer
#' @param mistt Numeric vector
#' @export
cfmrdfa_double <-
  function(status,
           dbkey,
           objnam,
           wntobs,
           syear,
           sprd,
           gotobs,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmrdfa_double",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(wntobs$value),
      as.integer(syear$value),
      as.integer(sprd$value),
      as.integer(gotobs$value),
      as.numeric(valary$value),
      as.integer(tmiss$value),
      as.numeric(mistt$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    syear$value <- as.integer(result[[5]])
    sprd$value <- as.integer(result[[6]])
    gotobs$value <- as.integer(result[[7]])
    valary$value <- as.numeric(result[[8]])
    mistt$value <- as.numeric(result[[10]])

  }

#' \code{cfmrdfa_float}
#'
#' Read all of the \code{Numeric} data from an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param wntobs Integer
#' @param syear Integer
#' @param sprd Integer
#' @param gotobs Integer
#' @param valary Numeric vector
#' @param tmiss Integer
#' @param mistt Numeric vector
#' @export
cfmrdfa_float <-
  function(status,
           dbkey,
           objnam,
           wntobs,
           syear,
           sprd,
           gotobs,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmrdfa_float",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(wntobs$value),
      as.integer(syear$value),
      as.integer(sprd$value),
      as.integer(gotobs$value),
      as.single(valary$value),
      as.integer(tmiss$value),
      as.single(mistt$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    syear$value <- as.integer(result[[5]])
    sprd$value <- as.integer(result[[6]])
    gotobs$value <- as.integer(result[[7]])
    valary$value <- as.single(result[[8]])
    mistt$value <- as.single(result[[10]])

  }

#' \code{cfmrdfa_int}
#'
#' Read all of the \code{Integer} data from an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param wntobs Integer
#' @param syear Integer
#' @param sprd Integer
#' @param gotobs Integer
#' @param valary Integer vector
#' @param tmiss Integer
#' @param mistt Integer vector
#' @export
cfmrdfa_int <-
  function(status,
           dbkey,
           objnam,
           wntobs,
           syear,
           sprd,
           gotobs,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmrdfa_int",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(wntobs$value),
      as.integer(syear$value),
      as.integer(sprd$value),
      as.integer(gotobs$value),
      as.integer(valary$value),
      as.integer(tmiss$value),
      as.integer(mistt$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    syear$value <- as.integer(result[[5]])
    sprd$value <- as.integer(result[[6]])
    gotobs$value <- as.integer(result[[7]])
    valary$value <- as.integer(result[[8]])
    mistt$value <- as.integer(result[[10]])

  }

#' \code{cfmrdfm}
#'
#' Read the source code for a formula from a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param source Character
#' @param ilen Integer
#' @param olen Integer
#' @export
cfmrdfm <- function(status, dbkey, objnam, source, ilen, olen) {
  result <- .C(
    "_cfmrdfm",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(source$value),
    as.integer(ilen$value),
    as.integer(olen$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  source$value <- as.character(result[[4]])
  olen$value <- as.integer(result[[6]])

}

#' \code{cfmrmev}
#'
#' Call on analytical channel to evaluate an expression.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param expr Character
#' @param optns Character
#' @param wdbkey Integer
#' @param objnam Character
#' @export
cfmrmev <- function(status, dbkey, expr, optns, wdbkey, objnam) {
  result <- .C(
    "_cfmrmev",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(expr$value),
    as.character(optns$value),
    as.integer(wdbkey$value),
    as.character(objnam$value)
  )

  status$value <- as.integer(result[[1]])
  expr$value <- as.character(result[[3]])
  optns$value <- as.character(result[[4]])
  objnam$value <- as.character(result[[6]])

}

#' \code{cfmrnob}
#'
#' Rename an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param srcnam Character
#' @param tarnam Character
#' @export
cfmrnob <- function(status, dbkey, srcnam, tarnam) {
  result <- .C(
    "_cfmrnob",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(srcnam$value),
    as.character(tarnam$value)
  )

  status$value <- as.integer(result[[1]])
  srcnam$value <- as.character(result[[3]])
  tarnam$value <- as.character(result[[4]])

}

#' \code{cfmrrng_double}
#'
#' Read a range of Numeric data from an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Numeric vector
#' @param tmiss Integer
#' @param mistt Numeric vector
#' @export
cfmrrng_double <-
  function(status,
           dbkey,
           objnam,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmrrng_double",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.numeric(valary$value),
      as.integer(tmiss$value),
      as.numeric(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.numeric(result[[5]])
    mistt$value <- as.numeric(result[[7]])

  }

#' \code{cfmrrng_float}
#'
#' Read a range of Numeric data from an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Numeric vector
#' @param tmiss Integer
#' @param mistt Numeric vector
#' @export
cfmrrng_float <-
  function(status,
           dbkey,
           objnam,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmrrng_float",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.single(valary$value),
      as.integer(tmiss$value),
      as.single(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.single(result[[5]])
    mistt$value <- as.single(result[[7]])

  }

#' \code{cfmrrng_int}
#'
#' Read a range of Integer data from an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Integer vector
#' @param tmiss Integer
#' @param mistt Integer vector
#' @export
cfmrrng_int <-
  function(status,
           dbkey,
           objnam,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmrrng_int",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.integer(valary$value),
      as.integer(tmiss$value),
      as.integer(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.integer(result[[5]])
    mistt$value <- as.integer(result[[7]])

  }

#' \code{cfmrsdb}
#'
#' Restore a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @export
cfmrsdb <- function(status, dbkey) {
  result <- .C("_cfmrsdb",
               as.integer(status$value),
               as.integer(dbkey$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmsali}
#'
#' Set an object's ALIAS attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param aliass Character
#' @export
cfmsali <- function(status, dbkey, objnam, aliass) {
  result <- .C(
    "_cfmsali",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(aliass$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  aliass$value <- as.character(result[[4]])

}

#' \code{cfmsaso}
#'
#' Set an object's ASSOCIATE attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param assoc Character
#' @export
cfmsaso <- function(status, dbkey, objnam, assoc) {
  result <- .C(
    "_cfmsaso",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(assoc$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  assoc$value <- as.character(result[[4]])

}

#' \code{cfmsatt_char}
#'
#' Set the value of a user-defined Character attribute
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param value Character
#' @export
cfmsatt_char <-
  function(status,
           dbkey,
           objnam,
           atttyp,
           attnam,
           value) {
    result <- .C(
      "_cfmsatt_char",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(atttyp$value),
      as.character(attnam$value),
      as.character(value$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    attnam$value <- as.character(result[[5]])
    value$value <- as.character(result[[6]])

  }

#' \code{cfmsatt_double}
#'
#' Set the value of a user-defined Numeric attribute
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param value Numeric
#' @export
cfmsatt_double <-
  function(status,
           dbkey,
           objnam,
           atttyp,
           attnam,
           value) {
    result <- .C(
      "_cfmsatt_double",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(atttyp$value),
      as.character(attnam$value),
      as.numeric(value$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    attnam$value <- as.character(result[[5]])
    value$value <- as.numeric(result[[6]])

  }

#' \code{cfmsatt_float}
#'
#' Set the value of a user-defined Numeric attribute
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param value Numeric
#' @export
cfmsatt_float <-
  function(status,
           dbkey,
           objnam,
           atttyp,
           attnam,
           value) {
    result <- .C(
      "_cfmsatt_float",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(atttyp$value),
      as.character(attnam$value),
      as.single(value$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    attnam$value <- as.character(result[[5]])
    value$value <- as.single(result[[6]])

  }

#' \code{cfmsatt_int}
#'
#' Set the value of a user-defined Integer attribute
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param atttyp Integer
#' @param attnam Character
#' @param value Integer
#' @export
cfmsatt_int <-
  function(status,
           dbkey,
           objnam,
           atttyp,
           attnam,
           value) {
    result <- .C(
      "_cfmsatt_int",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(atttyp$value),
      as.character(attnam$value),
      as.integer(value$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    attnam$value <- as.character(result[[5]])
    value$value <- as.integer(result[[6]])

  }

#' \code{cfmsbas}
#'
#' Set an object's BASIS attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param basis Integer
#' @export
cfmsbas <- function(status, dbkey, objnam, basis) {
  result <- .C(
    "_cfmsbas",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(basis$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])

}

#' \code{cfmsbm}
#'
#' Set a boolean missing value translation table.
#'
#' @param status Integer
#' @param nctran Integer
#' @param ndtran Integer
#' @param natran Integer
#' @param bmistt Integer vector
#' @export
cfmsbm <- function(status, nctran, ndtran, natran, bmistt) {
  result <- .C(
    "_cfmsbm",
    as.integer(status$value),
    as.integer(nctran$value),
    as.integer(ndtran$value),
    as.integer(natran$value),
    as.integer(bmistt$value),
    length(bmistt$value)
  )

  status$value <- as.integer(result[[1]])
  bmistt$value <- as.integer(result[[5]])

}

#' \code{cfmsdes}
#'
#' Set an object's DESCRIPTION attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param desc Character
#' @export
cfmsdes <- function(status, dbkey, objnam, desc) {
  result <- .C(
    "_cfmsdes",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(desc$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  desc$value <- as.character(result[[4]])

}

#' \code{cfmsdm}
#'
#' Set a date missing value translation table.
#'
#' @param status Integer
#' @param nctran Integer
#' @param ndtran Integer
#' @param natran Integer
#' @param dmistt Integer vector
#' @export
cfmsdm <- function(status, nctran, ndtran, natran, dmistt) {
  result <- .C(
    "_cfmsdm",
    as.integer(status$value),
    as.integer(nctran$value),
    as.integer(ndtran$value),
    as.integer(natran$value),
    as.integer(dmistt$value),
    length(dmistt$value)
  )

  status$value <- as.integer(result[[1]])
  dmistt$value <- as.integer(result[[5]])

}

#' \code{cfmsdoc}
#'
#' Set an object's DOCUMENTATION attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param doc Character
#' @export
cfmsdoc <- function(status, dbkey, objnam, doc) {
  result <- .C(
    "_cfmsdoc",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(doc$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  doc$value <- as.character(result[[4]])

}

#' \code{cfmset_dimension}
#'
#' Set the dimension attribute for a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param dimen Integer
#' @export
cfmset_dimension <- function(status, dbkey, dimen) {
  result <- .C(
    "_cfmset_dimension",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(dimen$value)
  )

  status$value <- as.integer(result[[1]])

}

#' \code{cfmset_extradots}
#'
#' Set the extradots attribute for a database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param xdots Integer
#' @export
cfmset_extradots <- function(status, dbkey, xdots) {
  result <- .C(
    "_cfmset_extradots",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(xdots$value)
  )

  status$value <- as.integer(result[[1]])

}

#' \code{cfmsfis}
#'
#' Set a fiscal range for reading or writing data.
#'
#' @param status Integer
#' @param freq Integer
#' @param syear Integer
#' @param sprd Integer
#' @param eyear Integer
#' @param eprd Integer
#' @param range Integer vector
#' @param numobs Integer
#' @param fmonth Integer
#' @param flabel Integer
#' @export
cfmsfis <-
  function(status,
           freq,
           syear,
           sprd,
           eyear,
           eprd,
           range,
           numobs,
           fmonth,
           flabel) {
    result <- .C(
      "_cfmsfis",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(syear$value),
      as.integer(sprd$value),
      as.integer(eyear$value),
      as.integer(eprd$value),
      as.integer(range$value),
      as.integer(numobs$value),
      as.integer(fmonth$value),
      as.integer(flabel$value),
      length(range$value)
    )

    status$value <- as.integer(result[[1]])
    syear$value <- as.integer(result[[3]])
    sprd$value <- as.integer(result[[4]])
    eyear$value <- as.integer(result[[5]])
    eprd$value <- as.integer(result[[6]])
    range$value <- as.integer(result[[7]])
    numobs$value <- as.integer(result[[8]])

  }

#' \code{cfmsinp}
#'
#' Read the next FAME Server command.
#'
#' @param status Integer
#' @param cmd Character
#' @export
cfmsinp <- function(status, cmd) {
  result <- .C("_cfmsinp",
               as.integer(status$value),
               as.character(cmd$value))

  status$value <- as.integer(result[[1]])
  cmd$value <- as.character(result[[2]])

}

#' \code{cfmsnm}
#'
#' Set a numeric missing value translation table.
#'
#' @param status Integer
#' @param nctran Numeric
#' @param ndtran Numeric
#' @param natran Numeric
#' @param nmistt Numeric vector
#' @export
cfmsnm <- function(status, nctran, ndtran, natran, nmistt) {
  result <- .C(
    "_cfmsnm",
    as.integer(status$value),
    as.single(nctran$value),
    as.single(ndtran$value),
    as.single(natran$value),
    as.single(nmistt$value),
    length(nmistt$value)
  )

  status$value <- as.integer(result[[1]])
  nmistt$value <- as.single(result[[5]])

}

#' \code{cfmsobs}
#'
#' Set an object's OBSERVED attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param observ Integer
#' @export
cfmsobs <- function(status, dbkey, objnam, observ) {
  result <- .C(
    "_cfmsobs",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(observ$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])

}

#' \code{cfmsopt}
#'
#' Setting options in the C HLI.
#'
#' @param status Integer
#' @param optnam Character
#' @param optval Character
#' @export
cfmsopt <- function(status, optnam, optval) {
  result <- .C(
    "_cfmsopt",
    as.integer(status$value),
    as.character(optnam$value),
    as.character(optval$value)
  )

  status$value <- as.integer(result[[1]])
  optnam$value <- as.character(result[[2]])
  optval$value <- as.character(result[[3]])

}

#' \code{cfmspm}
#'
#' Set a precision missing value translation table.
#'
#' @param status Integer
#' @param nctran Numeric
#' @param ndtran Numeric
#' @param natran Numeric
#' @param pmistt Numeric vector
#' @export
cfmspm <- function(status, nctran, ndtran, natran, pmistt) {
  result <- .C(
    "_cfmspm",
    as.integer(status$value),
    as.numeric(nctran$value),
    as.numeric(ndtran$value),
    as.numeric(natran$value),
    as.numeric(pmistt$value),
    length(pmistt$value)
  )

  status$value <- as.integer(result[[1]])
  pmistt$value <- as.numeric(result[[5]])

}

#' \code{cfmspos}
#'
#' Enable or disable the POST/RESTORE mechanism.
#'
#' @param status Integer
#' @param flag Integer
#' @export
cfmspos <- function(status, flag) {
  result <- .C("_cfmspos",
               as.integer(status$value),
               as.integer(flag$value))

  status$value <- as.integer(result[[1]])

}

#' \code{cfmsrng}
#'
#' Set a range for reading or writing data.
#'
#' @param status Integer
#' @param freq Integer
#' @param syear Integer
#' @param sprd Integer
#' @param eyear Integer
#' @param eprd Integer
#' @param range Integer vector
#' @param numobs Integer
#' @export
cfmsrng <-
  function(status,
           freq,
           syear,
           sprd,
           eyear,
           eprd,
           range,
           numobs) {
    result <- .C(
      "_cfmsrng",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(syear$value),
      as.integer(sprd$value),
      as.integer(eyear$value),
      as.integer(eprd$value),
      as.integer(range$value),
      as.integer(numobs$value),
      length(range$value)
    )

    status$value <- as.integer(result[[1]])
    syear$value <- as.integer(result[[3]])
    sprd$value <- as.integer(result[[4]])
    eyear$value <- as.integer(result[[5]])
    eprd$value <- as.integer(result[[6]])
    range$value <- as.integer(result[[7]])
    numobs$value <- as.integer(result[[8]])

  }

#' \code{cfmssln}
#'
#' Set an object's STRINGLENGTH attribute.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param length Integer
#' @export
cfmssln <- function(status, dbkey, objnam, length) {
  result <- .C(
    "_cfmssln",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(length$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])

}

#' \code{cfmtdat}
#'
#' Convert a daily date and time to an intraday date.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param hour Integer
#' @param minute Integer
#' @param second Integer
#' @param ddate Integer
#' @export
cfmtdat <-
  function(status,
           freq,
           date,
           hour,
           minute,
           second,
           ddate) {
    result <- .C(
      "_cfmtdat",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.integer(hour$value),
      as.integer(minute$value),
      as.integer(second$value),
      as.integer(ddate$value)
    )

    status$value <- as.integer(result[[1]])
    date$value <- as.integer(result[[3]])

  }

#' \code{cfmtody}
#'
#' Get today's date.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @export
cfmtody <- function(status, freq, date) {
  result <- .C(
    "_cfmtody",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value)
  )

  status$value <- as.integer(result[[1]])
  date$value <- as.integer(result[[3]])

}

#' \code{cfmufrq}
#'
#' Unpack a frequency.
#'
#' @param status Integer
#' @param freq Integer
#' @param base Integer
#' @param nunits Integer
#' @param year Integer
#' @param month Integer
#' @export
cfmufrq <- function(status, freq, base, nunits, year, month) {
  result <- .C(
    "_cfmufrq",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(base$value),
    as.integer(nunits$value),
    as.integer(year$value),
    as.integer(month$value)
  )

  status$value <- as.integer(result[[1]])
  base$value <- as.integer(result[[3]])
  nunits$value <- as.integer(result[[4]])
  year$value <- as.integer(result[[5]])
  month$value <- as.integer(result[[6]])

}

#' \code{cfmver}
#'
#' Get the C HLI version number.
#'
#' @param status Integer
#' @param ver Numeric
#' @examples
#' status <- Integer(-1L)
#' ver <- Numeric(-1)
#' cfmver(status,ver)
#' cat(sprintf("CHLI version %.5f",ver$value))
#' 
#' @export
cfmver <- function(status, ver) {
  result <- .C("_cfmver",
               as.integer(status$value),
               as.single(ver$value))

  status$value <- as.integer(result[[1]])
  ver$value <- as.single(result[[2]])

}

#' \code{cfmwhat}
#'
#' Get information about an object.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param class Integer
#' @param type Integer
#' @param freq Integer
#' @param basis Integer
#' @param observ Integer
#' @param fyear Integer
#' @param fprd Integer
#' @param lyear Integer
#' @param lprd Integer
#' @param cyear Integer
#' @param cmonth Integer
#' @param cday Integer
#' @param myear Integer
#' @param mmonth Integer
#' @param mday Integer
#' @param desc Character
#' @param doc Character
#' @export
cfmwhat <-
  function(status,
           dbkey,
           objnam,
           class,
           type,
           freq,
           basis,
           observ,
           fyear,
           fprd,
           lyear,
           lprd,
           cyear,
           cmonth,
           cday,
           myear,
           mmonth,
           mday,
           desc,
           doc) {
    result <- .C(
      "_cfmwhat",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(class$value),
      as.integer(type$value),
      as.integer(freq$value),
      as.integer(basis$value),
      as.integer(observ$value),
      as.integer(fyear$value),
      as.integer(fprd$value),
      as.integer(lyear$value),
      as.integer(lprd$value),
      as.integer(cyear$value),
      as.integer(cmonth$value),
      as.integer(cday$value),
      as.integer(myear$value),
      as.integer(mmonth$value),
      as.integer(mday$value),
      as.character(desc$value),
      as.character(doc$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    class$value <- as.integer(result[[4]])
    type$value <- as.integer(result[[5]])
    freq$value <- as.integer(result[[6]])
    basis$value <- as.integer(result[[7]])
    observ$value <- as.integer(result[[8]])
    fyear$value <- as.integer(result[[9]])
    fprd$value <- as.integer(result[[10]])
    lyear$value <- as.integer(result[[11]])
    lprd$value <- as.integer(result[[12]])
    cyear$value <- as.integer(result[[13]])
    cmonth$value <- as.integer(result[[14]])
    cday$value <- as.integer(result[[15]])
    myear$value <- as.integer(result[[16]])
    mmonth$value <- as.integer(result[[17]])
    mday$value <- as.integer(result[[18]])
    desc$value <- as.character(result[[19]])
    doc$value <- as.character(result[[20]])

  }

#' \code{cfmwkdy}
#'
#' Get the weekday of a date.
#'
#' @param status Integer
#' @param freq Integer
#' @param date Integer
#' @param wkdy Integer
#' @export
cfmwkdy <- function(status, freq, date, wkdy) {
  result <- .C(
    "_cfmwkdy",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(wkdy$value)
  )

  status$value <- as.integer(result[[1]])
  wkdy$value <- as.integer(result[[4]])

}

#' \code{cfmwrmt_double}
#'
#' Write a range of Numeric data to a remote database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param objtyp Integer
#' @param range Integer vector
#' @param valary Numeric vector
#' @param tmiss Integer
#' @param mistt Numeric vector
#' @export
cfmwrmt_double <-
  function(status,
           dbkey,
           objnam,
           objtyp,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmwrmt_double",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(objtyp$value),
      as.integer(range$value),
      as.numeric(valary$value),
      as.integer(tmiss$value),
      as.numeric(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.numeric(result[[6]])
    mistt$value <- as.numeric(result[[8]])

  }

#' \code{cfmwrmt_float}
#'
#' Write a range of Numeric data to a remote database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param objtyp Integer
#' @param range Integer vector
#' @param valary Numeric vector
#' @param tmiss Integer
#' @param mistt Numeric vector
#' @export
cfmwrmt_float <-
  function(status,
           dbkey,
           objnam,
           objtyp,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmwrmt_float",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(objtyp$value),
      as.integer(range$value),
      as.single(valary$value),
      as.integer(tmiss$value),
      as.single(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.single(result[[6]])
    mistt$value <- as.single(result[[8]])

  }

#' \code{cfmwrmt_int}
#'
#' Write a range of Integer data to a remote database.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param objtyp Integer
#' @param range Integer vector
#' @param valary Integer vector
#' @param tmiss Integer
#' @param mistt Integer vector
#' @export
cfmwrmt_int <-
  function(status,
           dbkey,
           objnam,
           objtyp,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmwrmt_int",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(objtyp$value),
      as.integer(range$value),
      as.integer(valary$value),
      as.integer(tmiss$value),
      as.integer(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.integer(result[[6]])
    mistt$value <- as.integer(result[[8]])

  }

#' \code{cfmwrng_double}
#'
#' Write a range of Numeric data.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Numeric vector
#' @param tmiss Integer
#' @param mistt Numeric vector
#' @export
cfmwrng_double <-
  function(status,
           dbkey,
           objnam,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmwrng_double",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.numeric(valary$value),
      as.integer(tmiss$value),
      as.numeric(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.numeric(result[[5]])
    mistt$value <- as.numeric(result[[7]])

  }

#' \code{cfmwrng_float}
#'
#' Write a range of Numeric data.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Numeric vector
#' @param tmiss Integer
#' @param mistt Numeric vector
#' @export
cfmwrng_float <-
  function(status,
           dbkey,
           objnam,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmwrng_float",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.single(valary$value),
      as.integer(tmiss$value),
      as.single(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.single(result[[5]])
    mistt$value <- as.single(result[[7]])

  }

#' \code{cfmwrng_int}
#'
#' Write a range of Integer data.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Integer vector
#' @param tmiss Integer
#' @param mistt Integer vector
#' @export
cfmwrng_int <-
  function(status,
           dbkey,
           objnam,
           range,
           valary,
           tmiss,
           mistt) {
    result <- .C(
      "_cfmwrng_int",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.integer(valary$value),
      as.integer(tmiss$value),
      as.integer(mistt$value),
      length(range$value),
      length(valary$value),
      length(mistt$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    valary$value <- as.integer(result[[5]])
    mistt$value <- as.integer(result[[7]])

  }

#' \code{cfmwstr}
#'
#' Write a single string value.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param strval Character
#' @param ismiss Integer
#' @param length Integer
#' @export
cfmwstr <-
  function(status,
           dbkey,
           objnam,
           range,
           strval,
           ismiss,
           length) {
    result <- .C(
      "_cfmwstr",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.character(strval$value),
      as.integer(ismiss$value),
      as.integer(length$value),
      length(range$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    strval$value <- as.character(result[[5]])

  }

#' \code{cfmwsts}
#'
#' Write a range of string values.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param strary Character vector
#' @param misary Integer vector
#' @param lenary Integer vector
#' @export
cfmwsts <-
  function(status,
           dbkey,
           objnam,
           range,
           strary,
           misary,
           lenary) {
    result <- .C(
      "_cfmwsts",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.character(strary$value),
      as.integer(misary$value),
      as.integer(lenary$value),
      length(range$value),
      length(strary$value),
      length(misary$value),
      length(lenary$value)
    )

    status$value <- as.integer(result[[1]])
    objnam$value <- as.character(result[[3]])
    strary$value <- as.character(result[[5]])
    misary$value <- as.integer(result[[6]])
    lenary$value <- as.integer(result[[7]])

  }

#' \code{cfmwtnl}
#'
#' Write an element of a namelist or a whole namelist.
#'
#' @param status Integer
#' @param dbkey Integer
#' @param objnam Character
#' @param index Integer
#' @param strval Character
#' @export
cfmwtnl <- function(status, dbkey, objnam, index, strval) {
  result <- .C(
    "_cfmwtnl",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(index$value),
    as.character(strval$value)
  )

  status$value <- as.integer(result[[1]])
  objnam$value <- as.character(result[[3]])
  strval$value <- as.character(result[[5]])

}

#' C-HLI function \code{fame_biweekday}
#'
#' @param freq Integer
#' @param date Integer
#' @param biweekday Integer
#' @export
fame_biweekday <- function(freq, date, biweekday) {
  status <- Integer(-1)

  result <- .C(
    "_fame_biweekday",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(biweekday$value)
  )

  biweekday$value <- as.integer(result[[4]])

  return(result[[1]])
}

#' C-HLI function \code{fame_create_formula}
#'
#' @param dbkey Integer
#' @param oname Character
#' @param value Character
#' @export
fame_create_formula <- function(dbkey, oname, value) {
  status <- Integer(-1)

  result <- .C(
    "_fame_create_formula",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(oname$value),
    as.character(value$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_create_global_formula}
#'
#' @param dbkey Integer
#' @param oname Character
#' @param value Character
#' @export
fame_create_global_formula <- function(dbkey, oname, value) {
  status <- Integer(-1)

  result <- .C(
    "_fame_create_global_formula",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(oname$value),
    as.character(value$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_current_time}
#'
#' @param freq Integer
#' @param date Integer
#' @export
fame_current_time <- function(freq, date) {
  status <- Integer(-1)

  result <- .C(
    "_fame_current_time",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value)
  )

  date$value <- as.integer(result[[3]])

  return(result[[1]])
}

#' C-HLI function \code{fame_date_missing_type}
#'
#' @param date Integer
#' @param missing_type Integer
#' @export
fame_date_missing_type <- function(date, missing_type) {
  status <- Integer(-1)

  result <- .C(
    "_fame_date_missing_type",
    as.integer(status$value),
    as.integer(date$value),
    as.integer(missing_type$value)
  )

  missing_type$value <- as.integer(result[[3]])

  return(result[[1]])
}

#' C-HLI function \code{fame_date_to_literal}
#'
#' @param freq Integer
#' @param date Integer
#' @param literal Character
#' @param end_month Integer
#' @param label_year Integer
#' @param inlen Integer
#' @param outlen Integer
#' @export
fame_date_to_literal <-
  function(freq,
           date,
           literal,
           end_month,
           label_year,
           inlen,
           outlen) {
    status <- Integer(-1)

    result <- .C(
      "_fame_date_to_literal",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.character(literal$value),
      as.integer(end_month$value),
      as.integer(label_year$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    literal$value <- as.character(result[[4]])
    outlen$value <- as.integer(result[[8]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_dateof}
#'
#' @param from_freq Integer
#' @param from_date Integer
#' @param select Integer
#' @param to_freq Integer
#' @param to_date Integer
#' @param relate Integer
#' @export
fame_dateof <-
  function(from_freq,
           from_date,
           select,
           to_freq,
           to_date,
           relate) {
    status <- Integer(-1)

    result <- .C(
      "_fame_dateof",
      as.integer(status$value),
      as.integer(from_freq$value),
      as.integer(from_date$value),
      as.integer(select$value),
      as.integer(to_freq$value),
      as.integer(to_date$value),
      as.integer(relate$value)
    )

    to_date$value <- as.integer(result[[6]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_day_to_index}
#'
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param month Integer
#' @param day Integer
#' @param relate Integer
#' @export
fame_day_to_index <- function(freq, date, year, month, day, relate) {
  status <- Integer(-1)

  result <- .C(
    "_fame_day_to_index",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(year$value),
    as.integer(month$value),
    as.integer(day$value),
    as.integer(relate$value)
  )

  date$value <- as.integer(result[[3]])

  return(result[[1]])
}

#' C-HLI function \code{fame_dimchar}
#'
#' @param dimchar Character
#' @param dimnum Integer
#' @export
fame_dimchar <- function(dimchar, dimnum) {
  status <- Integer(-1)

  result <- .C(
    "_fame_dimchar",
    as.integer(status$value),
    as.character(dimchar$value),
    as.integer(dimnum$value)
  )

  dimchar$value <- as.character(result[[2]])

  return(result[[1]])
}

#' C-HLI function \code{fame_dimnum}
#'
#' @param dimnum Integer
#' @param dimchar Character
#' @export
fame_dimnum <- function(dimnum, dimchar) {
  status <- Integer(-1)

  result <- .C(
    "_fame_dimnum",
    as.integer(status$value),
    as.integer(dimnum$value),
    as.character(dimchar$value)
  )

  dimnum$value <- as.integer(result[[2]])

  return(result[[1]])
}

#' C-HLI function \code{fame_expiration_date}
#'
#' @param date Integer
#' @export
fame_expiration_date <- function(date) {
  status <- Integer(-1)

  result <- .C("_fame_expiration_date",
               as.integer(status$value),
               as.integer(date$value))

  date$value <- as.integer(result[[2]])

  return(result[[1]])
}

#' C-HLI function \code{fame_format_date}
#'
#' @param freq Integer
#' @param date Integer
#' @param string Character
#' @param image Character
#' @param end_month Integer
#' @param label_year Integer
#' @param inlen Integer
#' @param outlen Integer
#' @export
fame_format_date <-
  function(freq,
           date,
           string,
           image,
           end_month,
           label_year,
           inlen,
           outlen) {
    status <- Integer(-1)

    result <- .C(
      "_fame_format_date",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.character(string$value),
      as.character(image$value),
      as.integer(end_month$value),
      as.integer(label_year$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    string$value <- as.character(result[[4]])
    outlen$value <- as.integer(result[[9]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_free_wildcard}
#'
#' @param wildkey Integer
#' @export
fame_free_wildcard <- function(wildkey) {
  status <- Integer(-1)

  result <- .C("_fame_free_wildcard",
               as.integer(status$value),
               as.integer(wildkey$value))


  return(result[[1]])
}

#' C-HLI function \code{fame_get_base_frequency}
#'
#' @param base_freq Integer
#' @param freq Integer
#' @export
fame_get_base_frequency <- function(base_freq, freq) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_base_frequency",
    as.integer(status$value),
    as.integer(base_freq$value),
    as.integer(freq$value)
  )

  base_freq$value <- as.integer(result[[2]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_boolean_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Integer
#' @export
fame_get_boolean_attribute <-
  function(dbkey, objnam, attnam, value) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_boolean_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.integer(value$value)
    )

    value$value <- as.integer(result[[5]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_get_booleans}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Integer vector
#' @export
fame_get_booleans <- function(dbkey, objnam, range, valary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_booleans",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.integer(valary$value),
    length(range$value),
    length(valary$value)
  )

  valary$value <- as.integer(result[[5]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_date_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Integer
#' @param freq Integer
#' @export
fame_get_date_attribute <-
  function(dbkey, objnam, attnam, value, freq) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_date_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.integer(value$value),
      as.integer(freq$value)
    )

    value$value <- as.integer(result[[5]])
    freq$value <- as.integer(result[[6]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_get_dates}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Integer vector
#' @export
fame_get_dates <- function(dbkey, objnam, range, valary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_dates",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.integer(valary$value),
    length(range$value),
    length(valary$value)
  )

  valary$value <- as.integer(result[[5]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_db_dates}
#'
#' @param dbkey Integer
#' @param cdate Integer
#' @param mdate Integer
#' @export
fame_get_db_dates <- function(dbkey, cdate, mdate) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_db_dates",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(cdate$value),
    as.integer(mdate$value)
  )

  cdate$value <- as.integer(result[[3]])
  mdate$value <- as.integer(result[[4]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_dbversion}
#'
#' @param dbkey Integer
#' @param dbversion Integer
#' @export
fame_get_dbversion <- function(dbkey, dbversion) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_dbversion",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.integer(dbversion$value)
  )

  dbversion$value <- as.integer(result[[3]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_namelist_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Character
#' @param inlen Integer
#' @param outlen Integer
#' @export
fame_get_namelist_attribute <-
  function(dbkey, objnam, attnam, value, inlen, outlen) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_namelist_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.character(value$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    value$value <- as.character(result[[5]])
    outlen$value <- as.integer(result[[7]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_get_next_wildcard}
#'
#' @param wildkey Integer
#' @param objname Character
#' @param obj_class Integer
#' @param type Integer
#' @param freq Integer
#' @param start Integer
#' @param end Integer
#' @param inlen Integer
#' @param outlen Integer
#' @export
fame_get_next_wildcard <-
  function(wildkey,
           objname,
           obj_class,
           type,
           freq,
           start,
           end,
           inlen,
           outlen) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_next_wildcard",
      as.integer(status$value),
      as.integer(wildkey$value),
      as.character(objname$value),
      as.integer(obj_class$value),
      as.integer(type$value),
      as.integer(freq$value),
      as.integer(start$value),
      as.integer(end$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    objname$value <- as.character(result[[3]])
    obj_class$value <- as.integer(result[[4]])
    type$value <- as.integer(result[[5]])
    freq$value <- as.integer(result[[6]])
    start$value <- as.integer(result[[7]])
    end$value <- as.integer(result[[8]])
    outlen$value <- as.integer(result[[10]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_get_numeric_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Numeric
#' @export
fame_get_numeric_attribute <-
  function(dbkey, objnam, attnam, value) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_numeric_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.single(value$value)
    )

    value$value <- as.single(result[[5]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_get_numerics}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Numeric vector
#' @export
fame_get_numerics <- function(dbkey, objnam, range, valary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_numerics",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.single(valary$value),
    length(range$value),
    length(valary$value)
  )

  valary$value <- as.single(result[[5]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_precision_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Numeric
#' @export
fame_get_precision_attribute <-
  function(dbkey, objnam, attnam, value) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_precision_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.numeric(value$value)
    )

    value$value <- as.numeric(result[[5]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_get_precisions}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Numeric vector
#' @export
fame_get_precisions <- function(dbkey, objnam, range, valary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_precisions",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.numeric(valary$value),
    length(range$value),
    length(valary$value)
  )

  valary$value <- as.numeric(result[[5]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_range_numobs}
#'
#' @param range Integer vector
#' @param numobs Integer
#' @export
fame_get_range_numobs <- function(range, numobs) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_range_numobs",
    as.integer(status$value),
    as.integer(range$value),
    as.integer(numobs$value),
    length(range$value)
  )

  numobs$value <- as.integer(result[[3]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_real_name}
#'
#' @param dbkey Integer
#' @param objname Character
#' @param basename Character
#' @param inlen Integer
#' @param outlen Integer
#' @export
fame_get_real_name <-
  function(dbkey, objname, basename, inlen, outlen) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_real_name",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objname$value),
      as.character(basename$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    basename$value <- as.character(result[[4]])
    outlen$value <- as.integer(result[[6]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_get_server_input}
#'
#' @param buffer Character
#' @param buffer_size Integer
#' @param input_size Integer
#' @export
fame_get_server_input <- function(buffer, buffer_size, input_size) {
  status <- Integer(-1)

  result <- .C(
    "_fame_get_server_input",
    as.integer(status$value),
    as.character(buffer$value),
    as.integer(buffer_size$value),
    as.integer(input_size$value)
  )

  buffer$value <- as.character(result[[2]])
  input_size$value <- as.integer(result[[4]])

  return(result[[1]])
}

#' C-HLI function \code{fame_get_string_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Character
#' @param inlen Integer
#' @param outlen Integer
#' @export
fame_get_string_attribute <-
  function(dbkey, objnam, attnam, value, inlen, outlen) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_string_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.character(value$value),
      as.integer(inlen$value),
      as.integer(outlen$value)
    )

    value$value <- as.character(result[[5]])
    outlen$value <- as.integer(result[[7]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_get_strings}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param strary Character vector
#' @param inlenary Integer vector
#' @param outlenary Integer vector
#' @export
fame_get_strings <-
  function(dbkey,
           objnam,
           range,
           strary,
           inlenary,
           outlenary) {
    status <- Integer(-1)

    result <- .C(
      "_fame_get_strings",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.character(strary$value),
      as.integer(inlenary$value),
      as.integer(outlenary$value),
      length(range$value),
      length(strary$value),
      length(inlenary$value),
      length(outlenary$value)
    )

    strary$value <- as.character(result[[5]])
    outlenary$value <- as.integer(result[[7]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_index_to_day}
#'
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param month Integer
#' @param day Integer
#' @export
fame_index_to_day <- function(freq, date, year, month, day) {
  status <- Integer(-1)

  result <- .C(
    "_fame_index_to_day",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(year$value),
    as.integer(month$value),
    as.integer(day$value)
  )

  year$value <- as.integer(result[[4]])
  month$value <- as.integer(result[[5]])
  day$value <- as.integer(result[[6]])

  return(result[[1]])
}

#' C-HLI function \code{fame_index_to_int}
#'
#' @param indexes64ary Integer vector
#' @param indexes32ary Integer vector
#' @param numobs Integer
#' @export
fame_index_to_int <- function(indexes64ary, indexes32ary, numobs) {
  status <- Integer(-1)

  result <- .C(
    "_fame_index_to_int",
    as.integer(status$value),
    as.integer(indexes64ary$value),
    as.integer(indexes32ary$value),
    as.integer(numobs$value),
    length(indexes64ary$value),
    length(indexes32ary$value)
  )

  indexes32ary$value <- as.integer(result[[3]])

  return(result[[1]])
}

#' C-HLI function \code{fame_index_to_time}
#'
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param month Integer
#' @param day Integer
#' @param hour Integer
#' @param minute Integer
#' @param second Integer
#' @param millisecond Integer
#' @export
fame_index_to_time <-
  function(freq,
           date,
           year,
           month,
           day,
           hour,
           minute,
           second,
           millisecond) {
    status <- Integer(-1)

    result <- .C(
      "_fame_index_to_time",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.integer(year$value),
      as.integer(month$value),
      as.integer(day$value),
      as.integer(hour$value),
      as.integer(minute$value),
      as.integer(second$value),
      as.integer(millisecond$value)
    )

    year$value <- as.integer(result[[4]])
    month$value <- as.integer(result[[5]])
    day$value <- as.integer(result[[6]])
    hour$value <- as.integer(result[[7]])
    minute$value <- as.integer(result[[8]])
    second$value <- as.integer(result[[9]])
    millisecond$value <- as.integer(result[[10]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_index_to_year_period}
#'
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param period Integer
#' @export
fame_index_to_year_period <- function(freq, date, year, period) {
  status <- Integer(-1)

  result <- .C(
    "_fame_index_to_year_period",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(year$value),
    as.integer(period$value)
  )

  year$value <- as.integer(result[[4]])
  period$value <- as.integer(result[[5]])

  return(result[[1]])
}

#' C-HLI function \code{fame_info}
#'
#' @param dbkey Integer
#' @param oname Character
#' @param oclass Integer
#' @param type Integer
#' @param freq Integer
#' @param findex Integer
#' @param lindex Integer
#' @param basis Integer
#' @param observ Integer
#' @param cdate Integer
#' @param mdate Integer
#' @param desc Character
#' @param indesclen Integer
#' @param outdesclen Integer
#' @param doc Character
#' @param indoclen Integer
#' @param outdoclen Integer
#' @export
fame_info <-
  function(dbkey,
           oname,
           oclass,
           type,
           freq,
           findex,
           lindex,
           basis,
           observ,
           cdate,
           mdate,
           desc,
           indesclen,
           outdesclen,
           doc,
           indoclen,
           outdoclen) {
    status <- Integer(-1)

    result <- .C(
      "_fame_info",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(oname$value),
      as.integer(oclass$value),
      as.integer(type$value),
      as.integer(freq$value),
      as.integer(findex$value),
      as.integer(lindex$value),
      as.integer(basis$value),
      as.integer(observ$value),
      as.integer(cdate$value),
      as.integer(mdate$value),
      as.character(desc$value),
      as.integer(indesclen$value),
      as.integer(outdesclen$value),
      as.character(doc$value),
      as.integer(indoclen$value),
      as.integer(outdoclen$value)
    )

    oclass$value <- as.integer(result[[4]])
    type$value <- as.integer(result[[5]])
    freq$value <- as.integer(result[[6]])
    findex$value <- as.integer(result[[7]])
    lindex$value <- as.integer(result[[8]])
    basis$value <- as.integer(result[[9]])
    observ$value <- as.integer(result[[10]])
    cdate$value <- as.integer(result[[11]])
    mdate$value <- as.integer(result[[12]])
    desc$value <- as.character(result[[13]])
    outdesclen$value <- as.integer(result[[15]])
    doc$value <- as.character(result[[16]])
    outdoclen$value <- as.integer(result[[18]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_init_range_from_end_numobs}
#'
#' @param range Integer vector
#' @param freq Integer
#' @param end Integer
#' @param numobs Integer
#' @export
fame_init_range_from_end_numobs <-
  function(range, freq, end, numobs) {
    status <- Integer(-1)

    result <- .C(
      "_fame_init_range_from_end_numobs",
      as.integer(status$value),
      as.integer(range$value),
      as.integer(freq$value),
      as.integer(end$value),
      as.integer(numobs$value),
      length(range$value)
    )

    range$value <- as.integer(result[[2]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_init_range_from_indexes}
#'
#' @param range Integer vector
#' @param freq Integer
#' @param start Integer
#' @param end Integer
#' @export
fame_init_range_from_indexes <- function(range, freq, start, end) {
  status <- Integer(-1)

  result <- .C(
    "_fame_init_range_from_indexes",
    as.integer(status$value),
    as.integer(range$value),
    as.integer(freq$value),
    as.integer(start$value),
    as.integer(end$value),
    length(range$value)
  )

  range$value <- as.integer(result[[2]])

  return(result[[1]])
}

#' C-HLI function \code{fame_init_range_from_start_numobs}
#'
#' @param range Integer vector
#' @param freq Integer
#' @param start Integer
#' @param numobs Integer
#' @export
fame_init_range_from_start_numobs <-
  function(range, freq, start, numobs) {
    status <- Integer(-1)

    result <- .C(
      "_fame_init_range_from_start_numobs",
      as.integer(status$value),
      as.integer(range$value),
      as.integer(freq$value),
      as.integer(start$value),
      as.integer(numobs$value),
      length(range$value)
    )

    range$value <- as.integer(result[[2]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_init_wildcard}
#'
#' @param dbkey Integer
#' @param wildkey Integer
#' @param wildname Character
#' @param wildonly Integer
#' @param wildstart Character
#' @export
fame_init_wildcard <-
  function(dbkey,
           wildkey,
           wildname,
           wildonly,
           wildstart) {
    status <- Integer(-1)

    result <- .C(
      "_fame_init_wildcard",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.integer(wildkey$value),
      as.character(wildname$value),
      as.integer(wildonly$value),
      as.character(wildstart$value)
    )

    wildkey$value <- as.integer(result[[3]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_int_to_index}
#'
#' @param indexes32 Integer
#' @param indexes64 Integer
#' @param numobs Integer
#' @export
fame_int_to_index <- function(indexes32, indexes64, numobs) {
  status <- Integer(-1)

  result <- .C(
    "_fame_int_to_index",
    as.integer(status$value),
    as.integer(indexes32$value),
    as.integer(indexes64$value),
    as.integer(numobs$value)
  )

  indexes64$value <- as.integer(result[[3]])

  return(result[[1]])
}

#' C-HLI function \code{fame_len_strings}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param lenary Integer vector
#' @export
fame_len_strings <- function(dbkey, objnam, range, lenary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_len_strings",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.integer(lenary$value),
    length(range$value),
    length(lenary$value)
  )

  lenary$value <- as.integer(result[[5]])

  return(result[[1]])
}

#' C-HLI function \code{fame_literal_to_date}
#'
#' @param freq Integer
#' @param date Integer
#' @param literal Character
#' @param end_month Integer
#' @param label_year Integer
#' @param century Integer
#' @export
fame_literal_to_date <-
  function(freq,
           date,
           literal,
           end_month,
           label_year,
           century) {
    status <- Integer(-1)

    result <- .C(
      "_fame_literal_to_date",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.character(literal$value),
      as.integer(end_month$value),
      as.integer(label_year$value),
      as.integer(century$value)
    )

    date$value <- as.integer(result[[3]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_modify_formula}
#'
#' @param dbkey Integer
#' @param oname Character
#' @param value Character
#' @export
fame_modify_formula <- function(dbkey, oname, value) {
  status <- Integer(-1)

  result <- .C(
    "_fame_modify_formula",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(oname$value),
    as.character(value$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_parse_frequency}
#'
#' @param freq Integer
#' @param frequency_spec Character
#' @export
fame_parse_frequency <- function(freq, frequency_spec) {
  status <- Integer(-1)

  result <- .C(
    "_fame_parse_frequency",
    as.integer(status$value),
    as.integer(freq$value),
    as.character(frequency_spec$value)
  )

  freq$value <- as.integer(result[[2]])

  return(result[[1]])
}

#' C-HLI function \code{fame_quick_info}
#'
#' @param dbkey Integer
#' @param oname Character
#' @param oclass Integer
#' @param type Integer
#' @param freq Integer
#' @param findex Integer
#' @param lindex Integer
#' @export
fame_quick_info <-
  function(dbkey,
           oname,
           oclass,
           type,
           freq,
           findex,
           lindex) {
    status <- Integer(-1)

    result <- .C(
      "_fame_quick_info",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(oname$value),
      as.integer(oclass$value),
      as.integer(type$value),
      as.integer(freq$value),
      as.integer(findex$value),
      as.integer(lindex$value)
    )

    oclass$value <- as.integer(result[[4]])
    type$value <- as.integer(result[[5]])
    freq$value <- as.integer(result[[6]])
    findex$value <- as.integer(result[[7]])
    lindex$value <- as.integer(result[[8]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_remexec}
#'
#' @param dbkey Integer
#' @param command Character
#' @param wdbkey Integer
#' @param objnam Character
#' @export
fame_remexec <- function(dbkey, command, wdbkey, objnam) {
  status <- Integer(-1)

  result <- .C(
    "_fame_remexec",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(command$value),
    as.integer(wdbkey$value),
    as.character(objnam$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_scan_date}
#'
#' @param freq Integer
#' @param date Integer
#' @param string Character
#' @param image Character
#' @param end_month Integer
#' @param label_year Integer
#' @param century Integer
#' @export
fame_scan_date <-
  function(freq,
           date,
           string,
           image,
           end_month,
           label_year,
           century) {
    status <- Integer(-1)

    result <- .C(
      "_fame_scan_date",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.character(string$value),
      as.character(image$value),
      as.integer(end_month$value),
      as.integer(label_year$value),
      as.integer(century$value)
    )

    date$value <- as.integer(result[[3]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_set_boolean_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Integer
#' @export
fame_set_boolean_attribute <-
  function(dbkey, objnam, attnam, value) {
    status <- Integer(-1)

    result <- .C(
      "_fame_set_boolean_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.integer(value$value)
    )


    return(result[[1]])
  }

#' C-HLI function \code{fame_set_date_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Integer
#' @param freq Integer
#' @export
fame_set_date_attribute <-
  function(dbkey, objnam, attnam, value, freq) {
    status <- Integer(-1)

    result <- .C(
      "_fame_set_date_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.integer(value$value),
      as.integer(freq$value)
    )


    return(result[[1]])
  }

#' C-HLI function \code{fame_set_namelist_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Character
#' @export
fame_set_namelist_attribute <-
  function(dbkey, objnam, attnam, value) {
    status <- Integer(-1)

    result <- .C(
      "_fame_set_namelist_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.character(value$value)
    )


    return(result[[1]])
  }

#' C-HLI function \code{fame_set_numeric_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Numeric
#' @export
fame_set_numeric_attribute <-
  function(dbkey, objnam, attnam, value) {
    status <- Integer(-1)

    result <- .C(
      "_fame_set_numeric_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.single(value$value)
    )


    return(result[[1]])
  }

#' C-HLI function \code{fame_set_precision_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Numeric
#' @export
fame_set_precision_attribute <-
  function(dbkey, objnam, attnam, value) {
    status <- Integer(-1)

    result <- .C(
      "_fame_set_precision_attribute",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.character(attnam$value),
      as.numeric(value$value)
    )


    return(result[[1]])
  }

#' C-HLI function \code{fame_set_string_attribute}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param attnam Character
#' @param value Character
#' @export
fame_set_string_attribute <- function(dbkey, objnam, attnam, value) {
  status <- Integer(-1)

  result <- .C(
    "_fame_set_string_attribute",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.character(attnam$value),
    as.character(value$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_time_to_index}
#'
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param month Integer
#' @param day Integer
#' @param hour Integer
#' @param minute Integer
#' @param second Integer
#' @param millisecond Integer
#' @param relate Integer
#' @export
fame_time_to_index <-
  function(freq,
           date,
           year,
           month,
           day,
           hour,
           minute,
           second,
           millisecond,
           relate) {
    status <- Integer(-1)

    result <- .C(
      "_fame_time_to_index",
      as.integer(status$value),
      as.integer(freq$value),
      as.integer(date$value),
      as.integer(year$value),
      as.integer(month$value),
      as.integer(day$value),
      as.integer(hour$value),
      as.integer(minute$value),
      as.integer(second$value),
      as.integer(millisecond$value),
      as.integer(relate$value)
    )

    date$value <- as.integer(result[[3]])

    return(result[[1]])
  }

#' C-HLI function \code{fame_type_to_string}
#'
#' @param type Integer
#' @param type_spec Character
#' @param inlen Integer
#' @param outlen Integer
#' @export
fame_type_to_string <- function(type, type_spec, inlen, outlen) {
  status <- Integer(-1)

  result <- .C(
    "_fame_type_to_string",
    as.integer(status$value),
    as.integer(type$value),
    as.character(type_spec$value),
    as.integer(inlen$value),
    as.integer(outlen$value)
  )

  type_spec$value <- as.character(result[[3]])
  outlen$value <- as.integer(result[[5]])

  return(result[[1]])
}

#' C-HLI function \code{fame_weekday}
#'
#' @param freq Integer
#' @param date Integer
#' @param weekday Integer
#' @export
fame_weekday <- function(freq, date, weekday) {
  status <- Integer(-1)

  result <- .C(
    "_fame_weekday",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(weekday$value)
  )

  weekday$value <- as.integer(result[[4]])

  return(result[[1]])
}

#' C-HLI function \code{fame_write_booleans}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Integer vector
#' @export
fame_write_booleans <- function(dbkey, objnam, range, valary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_write_booleans",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.integer(valary$value),
    length(range$value),
    length(valary$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_write_dates}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param value_type Integer
#' @param valary Integer vector
#' @export
fame_write_dates <-
  function(dbkey, objnam, range, value_type, valary) {
    status <- Integer(-1)

    result <- .C(
      "_fame_write_dates",
      as.integer(status$value),
      as.integer(dbkey$value),
      as.character(objnam$value),
      as.integer(range$value),
      as.integer(value_type$value),
      as.integer(valary$value),
      length(range$value),
      length(valary$value)
    )


    return(result[[1]])
  }

#' C-HLI function \code{fame_write_numerics}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Numeric vector
#' @export
fame_write_numerics <- function(dbkey, objnam, range, valary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_write_numerics",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.single(valary$value),
    length(range$value),
    length(valary$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_write_precisions}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param valary Numeric vector
#' @export
fame_write_precisions <- function(dbkey, objnam, range, valary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_write_precisions",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.numeric(valary$value),
    length(range$value),
    length(valary$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_write_strings}
#'
#' @param dbkey Integer
#' @param objnam Character
#' @param range Integer vector
#' @param strary Character vector
#' @export
fame_write_strings <- function(dbkey, objnam, range, strary) {
  status <- Integer(-1)

  result <- .C(
    "_fame_write_strings",
    as.integer(status$value),
    as.integer(dbkey$value),
    as.character(objnam$value),
    as.integer(range$value),
    as.character(strary$value),
    length(range$value),
    length(strary$value)
  )


  return(result[[1]])
}

#' C-HLI function \code{fame_year_period_to_index}
#'
#' @param freq Integer
#' @param date Integer
#' @param year Integer
#' @param period Integer
#' @export
fame_year_period_to_index <- function(freq, date, year, period) {
  status <- Integer(-1)

  result <- .C(
    "_fame_year_period_to_index",
    as.integer(status$value),
    as.integer(freq$value),
    as.integer(date$value),
    as.integer(year$value),
    as.integer(period$value)
  )

  date$value <- as.integer(result[[3]])

  return(result[[1]])
}
