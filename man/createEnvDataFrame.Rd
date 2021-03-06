% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createEnvDataDataFrame.R
\name{createEnvDataFrame}
\alias{createEnvDataFrame}
\title{Convert data frame to Movebank Env-Data request file}
\usage{
createEnvDataFrame(lats, lons, times, savefile = TRUE, fileout = NULL)
}
\arguments{
\item{savefile}{whether to save a csv file}

\item{fileout}{name of csv file to save}

\item{{lats, lons}}{vectors of latitude and longitude}

\item{{times}}{vectors of POSIX times}
}
\value{
Either nothing (if csv file saved) or the character string data frame with correct formatting.
}
\description{
Takes a data frame of latitudes, longitudes and times and generates the strictly formatted data frame needed to upload to Env-Data to obtain covariates for movebank.
}
\examples{
 lats <- seq(38.8, 39.0, length = 40)
 lons <- seq(-77.12, -76.91, length = 40) 
 times <- seq(ymd("2010-12-31"), ymd("2011-12-31"), length = 40)
 example <- createEnvDataFrame(lats, lons, times, savefile = FALSE)
 head(example)

}
\seealso{
createEnvDataGrid, createEnvDataRequest, uploadEnvDataRequest
}
