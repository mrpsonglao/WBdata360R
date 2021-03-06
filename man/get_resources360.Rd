% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_resources360.R
\name{get_resources360}
\alias{get_resources360}
\title{Get TC/Govdata360 resource information from API}
\usage{
get_resources360(site = "tc", resource_type = "nav")
}
\arguments{
\item{site}{string pertaining to the data360 site to download data from.
Possible choices: 'tc' for TCdata360, 'gov' for Govdata360}

\item{resource_type}{string pertaining to the metadata to be downloaded. Possible choices:
'related' == Find WBG content related to certain topics and countries.
            Note that this endpoint calls a number of external API so may take around 10s to return on the initial call,
           however after this the response will be cached.
'toolkits' == Find WBG toolkits related to certain topics and subtopics.
'nav' == List root categories in navigational hierarchy.}
}
\value{
Data frame (wide) containing requested resource information
}
\description{
Downloads the requested resource information by using the TCdata360 API at \url{https://tcdata360.worldbank.org/docs}
or Govdata360 API at \url{https://govdata360.worldbank.org/docs}.
The function generates a wide dataframe containing resource information.
}
\details{
Hint: Want to get other data? Helpful functions include:
\itemize{
  \item See \code{\link{search_360}} to get search TC/Govdata360 indicators, countries, categories, and dataset lists.
  \item See \code{\link{get_data360}} to get actual indicator/dataset/country-level data.
 \item See \code{\link{get_metadata360}} to get indicator/dataset/country-level metadata.
}
}
\examples{
## Since all functions download data through API, these are wrapped with
## the "donttest" function as advised by CRAN
#get all root-level categories in TCdata360
\donttest{df_nav <- get_resources360()}

#get all toolkits from Govdata360
\donttest{df_toolkits <- get_resources360(site='gov', resource_type = 'toolkits')}
}
