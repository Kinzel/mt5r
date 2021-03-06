% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Source_MT5.R
\name{MT5.GetTimesSales}
\alias{MT5.GetTimesSales}
\title{Load Times & Sales table}
\usage{
MT5.GetTimesSales(sSymbol, iRows = 10, bIgnoreNAs = TRUE)
}
\arguments{
\item{sSymbol}{character; target symbol.}

\item{iRows}{int; how many rows. It's start from last. (default: \code{10})}

\item{bIgnoreNAs}{bool; ignore \code{NA} type in Times & Series of MT5 table. See references. (default: \code{TRUE})}
}
\value{
Returns \emph{Data.frame} \eqn{[nx4]}, with follow informations:
\itemize{
\item Datetime \code{{POSIXct}}: Datetime of trade executed.
\item Type \code{{int}}: \code{0} for Buy trade and \code{1} for Sell trade.
\item Price \code{{numeric}}: Price of trade executed.
\item Volume \code{{int}}: Volume of trade executed.
}
}
\description{
Function to load Times & Sales table from MT5 of target symbol.

Times & Sales table provides in-depth trading data, including records on time, direction, price and volume of executed trades.

Undefined direction transaction appears as \code{N/A} in MT5's Times & Sales table. Those transactions are automatically removed by default (\code{bIgnoreNAs = TRUE}). See References.
}
\references{
\url{https://www.metatrader5.com/en/terminal/help/trading/depth_of_market}
}
\author{
Guilherme Kinzel, \email{guikinzel@gmail.com}
}
