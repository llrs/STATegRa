% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/STATegRa_omicsPCA_methods.R
\name{PCA.selection}
\alias{PCA.selection}
\alias{PCA.selection,matrix,character-method}
\title{Select an optimal number of components using PCA}
\usage{
PCA.selection(Data, fac.sel, varthreshold=NULL, nvar=NULL, PCnum=NULL)
}
\arguments{
\item{Data}{Data matrix (with samples in columns and features in rows)}

\item{fac.sel}{Selection criteria ("\%accum", "single\%", "rel.abs", "fixed.num")}

\item{varthreshold}{Threshold for "\%accum" or "single\%" criteria}

\item{nvar}{Threshold for "rel.abs"}

\item{PCnum}{Fixed number of components for "fixed.num"}
}
\value{
List containing:
\describe{
     \item{PCAres}{List containing results of PCA, with fields "eigen", "var.exp", "scores" and "loadings"}
     \item{numComps}{Number of components selected}
}
}
\description{
Selects the optimal number of components from data using PCA. There are four different criteria available: accumulated variance explained, individual explained variance of each component, absolute value of variability or fixed number of components.
}
\examples{
data(STATegRa_S3)
ps <- PCA.selection(Data=Block2.PCA, fac.sel="single\%", varthreshold=0.03)
ps$numComps
}
\author{
Patricia Sebastian Leon
}

