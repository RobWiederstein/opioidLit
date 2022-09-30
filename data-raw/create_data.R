#search OIDA archives
url <- "https://solr.idl.ucsf.edu/solr/ltdl3/query?q=author:glantz&wt=json"
res <- httr::GET(url = url)
data <- jsonlite::fromJSON(rawToChar(res$content))
oida_idx <- data$response$docs
usethis::use_data(oida_idx, overwrite = TRUE)
