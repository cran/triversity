% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/triversity.R
\name{get_distribution_from_path}
\alias{get_distribution_from_path}
\title{Compute the probability distribution associated to a random walk following a path
between the levels of a tripartite graph.}
\usage{
get_distribution_from_path(tripartite, path, initial_distribution = NULL,
  initial_node = NULL)
}
\arguments{
\item{tripartite}{A tripartite graph obtained by calling the \code{\link{get_tripartite}} function.}

\item{path}{A vector of integers in \{\code{1}, \code{2}, \code{3}\} giving the path of the random
walk between the different levels of the input \code{tripartite} graph. This path can be as long
as wanted. Two successive levels should always be adjacent, that is the random walk cannot go from
level \code{1} to level \code{3} (or conversely) without first going through level \code{2}.}

\item{initial_distribution}{A vector of floats in [\code{0},\code{1}] and summing to
\code{1} giving the probability
distribution to start with at the first level of the input \code{path}. It should hence
contain as many values as there are nodes in the corresponding level. If not specified, this
distribution is assumed uniform.}

\item{initial_node}{A string giving the name of a node in the first level of the input
\code{path}. This node is then considered to have probability one, thus being equivalent to
specifying an \code{initial_distribution} with only zeros except for one node. If not specified,
no such node is defined and the initial distribution is assumed uniform.}
}
\value{
A vector of floats in [\code{0},\code{1}] and summing to \code{1} giving the probability distribution of the
random walk when arriving at the last level, after having followed the input \code{path} within
the different levels of the graph.
}
\description{
\code{get_distribution_from_path} computes the probability distribution of a random walk within
the different levels of the input \code{tripartite} graph. It starts at a given level with an
initial probability distribution, then randomly follows the links of the graph between the
different levels according to the input \code{path}, then stops at the last specified level.
}
\examples{
data (tripartite_example)
tripartite <- get_tripartite (data=tripartite_example)

get_distribution_from_path (tripartite, path=c(2,1,2,3))
get_distribution_from_path (tripartite, path=c(2,1,2,3), initial_distribution=c(0.25,0,0.25,0.5))
get_distribution_from_path (tripartite, path=c(2,1,2,3), initial_node='i2')

}
