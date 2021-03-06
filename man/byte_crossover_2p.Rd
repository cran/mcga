% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oplibrary.R
\name{byte_crossover_2p}
\alias{byte_crossover_2p}
\title{Performs two-point crossover operation on a pair of two selected parent candidate solutions}
\usage{
byte_crossover_2p(object, parents, ...)
}
\arguments{
\item{object}{A \code{GA::ga} object}

\item{parents}{Indices of the selected parents}

\item{...}{Additional arguments to be passed to the function}
}
\value{
List of two generated offspring
}
\description{
This function is not called directly but is given as a parameter in \code{GA::ga} function. 
In \code{GA::ga}, if the parameter \code{crossover=} is set to \code{byte_crossover_2p} than
the byte-coded two-point crossover operator is applied in the genetic search. In \code{mcga2} function, the hard-coded 
crossover parameter is set to byte_crossover by definition. \code{byte_crossover_2p} function simply takes two double vectors 
(parents) and combines the bytes of doubles using given cutpoint1 and cutpoint2.
}
\examples{
f <- function(x){ 
  return(-sum( (x-5)^2 ) )
}
myga <- GA::ga(type="real-valued", fitness = f, popSize = 100, maxiter = 200, 
              min = rep(-50,5), max = rep(50,5), crossover = byte_crossover_2p,
              mutation = byte_mutation)
print(myga@solution)
}
\author{
Mehmet Hakan Satman - mhsatman@istanbul.edu.tr
}
\references{
M.H.Satman (2013), Machine Coded Genetic Algorithms for Real Parameter Optimization Problems, Gazi University Journal of Science, Vol 26, No 1, pp. 85-95
}
\seealso{
mcga2
}

