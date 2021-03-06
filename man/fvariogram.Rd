% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kriging_functions.R
\name{fvariogram}
\alias{fvariogram}
\title{Computes empirical trace-variograms and trace-cross-variograms}
\usage{
fvariogram(formula = NULL, g = NULL, Nlags = NULL, LagMax = NULL,
  LagTolerance = NULL, ArgStep = NULL, directions = "omni",
  angTolerance = 0, crossMode = "conventional", useResidual = FALSE,
  comments = TRUE)
}
\arguments{
\item{formula}{- Formula specifying which coordinates to use in variogram computation.}

\item{g}{- Object of class \code{fstat} as produced by \code{fstat} function}

\item{Nlags}{- Number of variogram lags (required)}

\item{LagMax}{- Maximum lag distance (also required)}

\item{LagTolerance}{- Optional. If not provided the code will set it to LagStep/2}

\item{ArgStep}{- Discretization step of the functional data. Used for numerical integration.
Note that the code assumes the same sampling for all functional data in contained within g.}

\item{directions}{- It can be: 'omni' when it will compute omni-directional variogram (default),
'all' when it computes variograms along each input dimension,
an \code{nPxd} matrix where \code{nP} = the number of coordinates, \code{d} = the number of directions.
The code will normalize all vectors!}

\item{angTolerance}{- Tolerance for computing directional variograms}

\item{crossMode}{- Either \code{conventional} or \code{pseudo}, for conventional or pseudo trace-cross-variogram computation,
set this value to "NA" if you want to skip trace-cross-variogram computation all together.}

\item{useResidual}{- This is applicable only when the drift term was already estimated with \code{estimateDrift} function.}

\item{comments}{- Whether or not to provide runtime comments!}
}
\details{
Returns an augmented \code{fstat} version of \code{g} by inserting a \code{gstatVariogram} slot.
         If there are NA's in functional data, then the code will not compute regular trace variograms. Instead, it will use an
         approximation proposed by Gromenko and Kokoszka.
}
\author{
Ogy Grujic (\email{ogyg@stanford.edu}) and Alessandra Menafoglio (\email{alessandra.menafoglio@poilimi.it}).
}
