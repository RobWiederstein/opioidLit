#' Get OIDA document metadata
#'
#' This function helps you retrieve document metadata from the OIDA archives.
#'
#' @param file_names Eight character document identifier in the format of
#'   "AbCd1234" where the first four characters are letters and the last four
#'   are numbers. The letters are not case-sensitive.
#'
#' @details
#'
#' Documentation for the OIDA API can be found
#' [here](https://www.industrydocuments.ucsf.edu/wp-content/uploads/2022/02/IndustryDocumentsDataAPI_v5.pdf) The function retrieves only the metadata for a document within the archives. Documents are stored as pdfs and must be downloaded individually within the main site.
#'
#' @examples
#' \dontrun{#Strategic Customer Group 2003 Business Plan
#' df <- get_oida_metadata(file_names = "frgg0230")
#' }
#' \dontrun{# get multiple files
#' file_names <- c("kylw0221", "frgg0230", "slwl0231")
#' df <- get_oida_metadata(file_names = file_names)
#' }
#'
#' @export
#'
get_oida_metadata <- function(file_names){
    #check args
    stopifnot(all(is.character(file_names)))
    stopifnot(all(nchar(file_names) == 8))
    # function to generate links
    create_links <- function(file_names){
        base <- "https://solr.idl.ucsf.edu/solr/ltdl3/query?q="
        url <- paste0(base,
                      "id:", file_names,
                      "&wt=json")
        url
    }
    # function to retrieve data
    fetch_info <- function(links){
        res <- httr::GET(url = links)
        data = jsonlite::fromJSON(rawToChar(res$content))
        doc_md <- data$response$docs
        doc_md
    }
    # links
    links <- create_links(file_names = file_names)

    # info
    links |>
        purrr::map_df(fetch_info) |>
        tibble::as_tibble()
}
