% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove_burn_in.R
\name{remove_burn_in}
\alias{remove_burn_in}
\title{Removed the burn-in from a trace}
\usage{
remove_burn_in(trace, burn_in_fraction)
}
\arguments{
\item{trace}{the values}

\item{burn_in_fraction}{the fraction that needs to be removed, must be [0,1>}
}
\value{
the values with the burn-in removed
}
\description{
Removed the burn-in from a trace
}
\examples{
  # Create a trace from one to and including ten
  v <- seq(1, 10)

  # Remove the first ten percent of its values,
  # in this case removes the first value, which is one
  w <- remove_burn_in(trace = v, burn_in_fraction = 0.1)

  # Check that the result goes from two to ten
  testit::assert(w == seq(2, 10))
}
\author{
Richèl J.C. Bilderbeek
}
