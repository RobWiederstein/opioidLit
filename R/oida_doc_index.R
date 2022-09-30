#' OIDA document metadata
#'
#' Documents housed digitally at OIDA contain metadata so that users can
#' find relevant documents. This dataset contains the first 100 results from
#' a search where the author was "glantz."
#'
#' @format
#'
#' A tibble with 100 rows and 37 variables columns:
#' \describe{
#'   \item{id}{id}
#'   \item{tid}{tid}
#'   \item{collection}{collection}
#'   \item{collectioncode}{collectioncode}
#'   \item{box}{box}
#'   \item{availability}{availability}
#'   \item{case}{case}
#'   \item{area}{area}
#'   \item{title}{title}
#'   \item{author}{author}
#'   \item{documentdate}{documentdate}
#'   \item{type}{type}
#'   \item{pages}{pages}
#'   \item{brand}{brand}
#'   \item{description}{description}
#'   \item{file}{file}
#'   \item{bates}{bates}
#'   \item{batesmaster}{batesmaster}
#'   \item{format}{format}
#'   \item{dateproduced}{dateproduced}
#'   \item{dateshipped}{dateshipped}
#'   \item{dateaddeducsf}{dateaddeducsf}
#'   \item{dateaddedindustry}{dateaddedindustry}
#'   \item{datemodifiedindustry}{datemodifiedindustry}
#'   \item{topic}{topic}
#'   \item{mentioned}{mentioned}
#'   \item{minnesotarequestnumber}{minnesotarequestnumber}
#'   \item{requestnumber}{requestnumber}
#'   \item{batesalternate}{batesalternate}
#'   \item{othernumber}{othernumber}
#'   \item{copied}{copied}
#'   \item{cited}{cited}
#'   \item{recipient}{recipient}
#'   \item{privilegecode}{privilegecode}
#'   \item{redacted}{redacted}
#'   \item{access}{access}
#'   \item{genre}{genre}
#'   ...
#' }
#'
#' @details
#'
#' The OIDA search results are included here as a tibble. Investigators of the
#' archive can practice on a representative dataset within the R programming
#' environment.
#'
#' @source
#'
#' Additional information is available on the OIDA
#' [website](https://www.industrydocuments.ucsf.edu/opioids/research-tools/api/)
#'
#' @export
#'
"oida_idx"
