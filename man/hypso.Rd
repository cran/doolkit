% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/topography.R
\name{hypso}
\alias{hypso}
\title{hypso}
\usage{
hypso(mesh, origin = TRUE)
}
\arguments{
\item{mesh}{object of class mesh3d}

\item{origin}{logical, whether to set the z of the mesh's lowermost point
to zero.}
}
\value{
A list of values for hypsodonty index, height, length and width of
the mesh. The hypsodonty index is not expressed relative to 100 but to 1.
    Note: the tooth surface is expected to be oriented such as the X-axis
    is the bucco-lingual axis, the Y-axis is the mesio-distal axis, and the
    occlusal plane is parallel to the (XY) plane and faces upward.
}
\description{
Compute the maximum height, length, width and corresponding
hypsodonty index (ratio of the maximum height over the maximum length)
}
\examples{
hypso(dkmodel$cusp)
}
