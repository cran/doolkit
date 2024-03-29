% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/topography.R
\name{dne}
\alias{dne}
\title{Dirichlet normal energy}
\usage{
dne(mesh, range = 0.999, total = FALSE)
}
\arguments{
\item{mesh}{object of class mesh3d}

\item{range}{an integer between 0 and 1 indicating the percentage of values
to consider for the computation. Following Pampush et al. (2016) default is
set to 0.999.}

\item{total}{logical, should the result of the function be the total DNE.}
}
\value{
If total = FALSE, a numeric vector of dne values for all the polygons of the
mesh. If total = TRUE, a single DNE value, calculated as the sum of the
products of polygon normal energies * polygon areas.
}
\description{
Compute the Dirichlet normal energy.
}
\details{
The current algorithm gives a different estimate of DNE when compared with the
values obtained using the molaR package. Albeit small, this difference likely comes from
different methods of border selection. The doolkit package uses the function dkborder,
which accurately selects every polygon sharing a vertex (or more) with the border.
}
\examples{
dne <- dne(dkmodel$complex)
summary(dkmodel$complex)

#total DNE value corresponds to the sum of products Dne * Area:
round(sum(dne*Rvcg::vcgArea(dkmodel$complex, perface = TRUE)$pertriangle), 3)
#can be directly computed using \code{dne}:
dne(dkmodel$complex, total = TRUE)

#render on a map:
dkmap(dkmodel$complex, dne, legend.type = "log", col = "dne")
}
\references{
\doi{10.1002/ajpa.21489}{Bunn et al. (2011)}

\doi{10.1007/s10914-016-9326-0}{Pampush et al. (2016)}
}
\seealso{
\code{\link[molaR]{DNE}}

\code{\link{dkborder}}
}
