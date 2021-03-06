% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/triversity.R
\name{get_diversity_from_distribution}
\alias{get_diversity_from_distribution}
\title{Compute the diversity of a probability distribution.}
\usage{
get_diversity_from_distribution(distribution, order = NULL, measure = NULL)
}
\arguments{
\item{distribution}{A vector of floats in [\code{0},\code{1}] and summing to \code{1} giving
the probability distribution whose diversity is measured.}

\item{order}{A vector of positive floats (possibly including \code{Inf}) giving the
orders of the diversity measures to be computed. If neither \code{order} nor \code{measure} is
specified, a predefined list of 8 diversity measures is computed.}

\item{measure}{A vector of strings giving the names of the diversity measures to compute.
Possible values are \code{richness}, \code{entropy}, \code{herfindahl},
and \code{bergerparker}.}
}
\value{
A vector of positive floats giving the diversity values of the input probability
distribution.
}
\description{
\code{get_diversity_from_distribution} computes diversity values associated to an input
probability \code{distribution}. The implemented diversity measures all belong to the
parametrized family of "True Diversity" measures. They can either be specified by their
diversity \code{order} in [\code{0},\code{Inf}[ or by their \code{measure} name when it
corresponds to classical instances such as the richness, the Shannon entropy, the
Herfindahl-Hirschman index, or the Berger-Parker index.
}
\examples{
distribution <- c (1/4, 1/2, 1/12, 2/12)

get_diversity_from_distribution (distribution)
get_diversity_from_distribution (distribution, order=c(0,Inf), measure='entropy')

}
