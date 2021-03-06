% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_paths.R
\name{get_tracerer_paths}
\alias{get_tracerer_paths}
\title{Get the full paths of files in the \code{inst/extdata} folder}
\usage{
get_tracerer_paths(filenames)
}
\arguments{
\item{filenames}{the files' names, without the path}
}
\value{
the filenames' full paths
}
\description{
Get the full paths of files in the \code{inst/extdata} folder
}
\examples{
  testit::assert(
    length(
      get_tracerer_paths(
        c(
          "beast2_example_output.log",
          "beast2_example_output.trees",
          "beast2_example_output.xml",
          "beast2_example_output.xml.state"
        )
      )
     ) == 4
   )
}
\seealso{
for one file, use \code{\link{get_tracerer_path}}
}
\author{
Richèl J.C. Bilderbeek
}
