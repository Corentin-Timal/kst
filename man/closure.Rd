\name{closure}
\alias{closure.kstructure}
\alias{closure.kbase}
\alias{closure.kfamset}
\title{Closure of a Knowledge Structure}
\description{
  Computes the closure of knowledge structures.
}
\usage{
  \method{closure}{kstructure}(x, operation=c("union", "intersection"),...)
  \method{closure}{kbase}(x, operation=c("union", "intersection"),...)
  \method{closure}{kfamset}(x, operation=c("union", "intersection"),...)
}
\arguments{
  \item{x}{An \R object of class \code{\link{kstructure}},
           \code{\link{kbase}}, or \code{\link{kfamset}}.}
  \item{operation}{The set operation under which the closure is computed
	  ("union" or "intersection").}
  \item{\dots}{Other arguments to be passed to methods.}
}
\details{
  The \code{closure} method for objects of class \code{\link{kstructure}},
  \code{\link{kbase}}, or \code{\link{kfamset}} performs the closure of a 
  knowledge structure, base, or family of sets by computing
  the \code{"union"}, \code{"intersection"}, \code{"complement"}, or
  symmetric difference of any two knowledge states. \code{"union"} is also
  used as a basis for the \code{\link{kspace}} function.
}
\note{
  The implementation of union is more efficient than the one in \code{sets}.
}
\value{
  An \R object of the same class as \code{x} where each subset represents
  one knowledge state of the resulting knowledge structure.
}
\references{
  Doignon, J.-P., Falmagne, J.-C. (1999) \emph{Knowledge Spaces}. Heidelberg:
  Springer Verlag.
}
\seealso{
  \code{\link{kstructure}}, \code{\link{kspace}}, \code{\link{kbase}}, 
  \code{\link{kfamset}}, \code{\link[sets]{closure}}
}
\examples{
kst <- kstructure(set(set("a"), set("a","b"), set("a","c"), set("d","e"), 
   set("a","b","d","e"), set("a","c","d","e"), set("a","b","c","d","e")))
closure(kst, operation="union")
}
\keyword{math}
