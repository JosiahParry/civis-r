% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{read_civis}
\alias{read_civis}
\alias{read_civis.numeric}
\alias{read_civis.character}
\alias{read_civis.sql}
\title{Read a table or file from the Civis Platform as a data frame}
\usage{
read_civis(x, ...)

\method{read_civis}{numeric}(x, using = readRDS, verbose = FALSE, ...)

\method{read_civis}{character}(x, database = NULL, ...)

\method{read_civis}{sql}(x, database = NULL, using = utils::read.csv,
  job_name = NULL, hidden = TRUE, verbose = FALSE, ...)
}
\arguments{
\item{x}{\code{"schema.table"}, \code{sql("query")}, or a file id.}

\item{...}{arguments passed to \code{using}.}

\item{using}{function, Function to convert the file to a data frame or to unserialize.
the file (e.g. \code{read.csv} or \code{readRDS}).}

\item{verbose}{bool, Set to TRUE to print intermediate progress indicators.}

\item{database}{string, Name of database where data frame is to be uploaded.
If no database is specified, uses \code{options(civis.default_db)}.}

\item{job_name}{string, Name of the job (default: \code{"Civis Export Via R Client"}).}

\item{hidden}{bool, Whether the job is hidden.}
}
\description{
\code{read_civis} loads a table from Redshift as a data frame if
given a \code{"schema.table"} or \code{sql("query")} as the first argument, or
loads a file from Amazon S3 (the files endpoint) if a file id is given.

A default database can be set using \code{options(civis.default_db = "my_database")}.
If there is only one database available,
this database will automatically be used as the default.
}
\details{
For \code{read_civis.sql}, queries must be \code{READ ONLY}.
To execute arbitrary queries, use \code{\link{query_civis}}.

By default, \code{read_civis.numeric} assumes the file has been serialized using
\code{saveRDS}, as in \code{write_civis_file} and uses \code{using = readRDS} by default. For reading
an uncompressed text or csv from the files endpoint, set \code{using = read.csv} for example.
}
\section{Methods (by class)}{
\itemize{
\item \code{numeric}: Return a file as a data frame

\item \code{character}: Return all columns from a table as a data frame.

\item \code{sql}: Return a SQL query as a data frame.
}}

\examples{
\dontrun{
# Read all columns in a single table
df <- read_civis("schema.my_table", database = "my_database")

# Read data from a SQL select statement (READ ONLY)
query <- sql("SELECT * FROM table JOIN other_table USING id WHERE var1 < 23")
df <- read_civis(query, database = "my_database")

# Read an R object from the files endpoint.
id <- write_civis_file(df)
df <- read_civis(id)

# Read a text file or csv from the files endpoint.
id <- write_civis_file("my_csv.csv")
df <- read_civis(id, using = read.csv)

# Gracefully handle when read_civis.sql returns no rows
query <- sql("SELECT * FROM table WHERE 1 = 2")
mean_x <- tryCatch({
  df <- read_civis(query, database = "my_database")
  mean(df$x)
}, empty_result_error = function(e) {
   NA
})
}
}
\seealso{
Other io: \code{\link{download_civis}},
  \code{\link{query_civis_file}},
  \code{\link{query_civis}},
  \code{\link{write_civis_file}}, \code{\link{write_civis}}
}
