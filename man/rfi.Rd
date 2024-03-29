% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/topography.R
\name{rfi}
\alias{rfi}
\title{relief index}
\usage{
rfi(mesh, method = "Ungar", hull = "concave")
}
\arguments{
\item{mesh}{object of class mesh3d}

\item{method}{a character string indicating which method is to be used for the computation of
relief index}

\item{hull}{the method used to compute the hull of the 2d projection, either 'convex' or 'concave'.
The default method is 'convex'. See \code{\link{area2d}}}
}
\value{
A single relief index value.
}
\description{
Compute the relief index of a  3d triangle mesh.
}
\details{
As of version 1.42.2, the concave hull fails intermittently on Mac systems, so the function
defaults to convex hulls (on other systems, it defaults to concave hulls).
}
\examples{
rfi <- rfi(dkmodel$cusp, method = "Ungar", hull = "convex")
lrfi <- rfi(dkmodel$cusp, method = "Boyer", hull = "convex")
gamma <- rfi(dkmodel$cusp, method = "Guy")
}
\references{
\doi{10.1016/j.jhevol.2008.08.002}{Boyer (2008)}
\doi{10.1371/journal.pone.0066142}{Guy et al. (2013)}
\href{https://palaeo-electronica.org/2000_1/gorilla/issue1_00.htm}{Ungar and Williamson (2000)}
}
\seealso{
\code{\link{area2d}}

\code{\link[molaR]{RFI}}
}
