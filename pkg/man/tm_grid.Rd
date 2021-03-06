% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tm_misc_elements.R
\name{tm_grid}
\alias{tm_grid}
\title{Coordinate grid lines}
\usage{
tm_grid(x = NA, y = NA, n.x = NA, n.y = NA, projection = NA,
  col = NA, lwd = 1, alpha = NA, labels.size = 0.6, labels.col = NA,
  labels.inside.frame = TRUE)
}
\arguments{
\item{x}{x coordinates for vertical grid lines. If \code{NA}, it is specified with a pretty scale and \code{n.x}.}

\item{y}{y coordinates for horizontal grid lines. If \code{NA}, it is specified with a pretty scale and \code{n.y}.}

\item{n.x}{prefered number of grid lines for the x axis.}

\item{n.y}{prefered number of grid lines for the y axis.}

\item{projection}{projection character. If specified, the grid lines are projected accordingly. See \code{\link{set_projection}} for projection details. Many world maps are projected, but still have latitude longitude (\code{"longlat"}) grid lines.}

\item{col}{color of the grid lines.}

\item{lwd}{line width of the grid lines}

\item{alpha}{alpha transparency of the grid lines. Number between 0 and 1. By default, the alpha transparency of \code{col} is taken.}

\item{labels.size}{font size of the tick labels}

\item{labels.col}{font color of the tick labels}

\item{labels.inside.frame}{Show labels inside the frame?}
}
\description{
Creates a \code{\link{tmap-element}} that draws coordinate grid lines. It serves as a layer that can be drawn anywhere between other layers. By default the coordinate system of the (master) shape object is used, which results in horizontal and vertical lines. Alternatively, grid lines can be reprojected, for instance to latitude longitude coordinates, and hence be curved.
}

