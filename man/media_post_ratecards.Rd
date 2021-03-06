% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generated_client.R
\name{media_post_ratecards}
\alias{media_post_ratecards}
\title{Create a Ratecard}
\usage{
media_post_ratecards(filename, start_on, end_on, dma_number)
}
\arguments{
\item{filename}{string required. Name of the ratecard file.}

\item{start_on}{string required. First day to which the ratecard applies.}

\item{end_on}{string required. Last day to which the ratecard applies.}

\item{dma_number}{integer required. Number of the DMA associated with the ratecard.}
}
\value{
A list containing the following elements:
\item{id}{integer, The ratecard ID.}
\item{filename}{string, Name of the ratecard file.}
\item{startOn}{string, First day to which the ratecard applies.}
\item{endOn}{string, Last day to which the ratecard applies.}
\item{dmaNumber}{integer, Number of the DMA associated with the ratecard.}
\item{archived}{string, The archival status of the requested object(s).}
}
\description{
Create a Ratecard
}
