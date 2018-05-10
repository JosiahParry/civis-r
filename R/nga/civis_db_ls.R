# List databases in civis
civis_db_ls <- function() {
  httr::RETRY("GET", url = paste0("https://api.civisanalytics.com/databases"),
              authenticate(api_key(), "")) %>%
    httr::content(type = "text") %>%
    jsonlite::fromJSON() %>%
    rename(db_id = id) %>%
    as_tibble()
}


# Create pipeable function that provides a data frame of databases and their schemas
civis_db_schemas <- function(dbs) {
  dbs %>%
    mutate(schema_url = paste(base_url(), "databases", db_id, "schemas", sep = "/")) %>%
    mutate(schemas = map(schema_url, get_civis_api)) %>%
    select(-schema_url)

}


# Create a function that will perform get civis requests
get_civis_api <- function(url) {
  httr::RETRY("GET", url = url,
              authenticate(api_key(), "")) %>%
    httr::content(type = "text") %>%
    jsonlite::fromJSON() %>% as_tibble()

}




