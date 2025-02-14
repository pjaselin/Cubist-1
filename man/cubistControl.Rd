% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cubist.R
\name{cubistControl}
\alias{cubistControl}
\title{Various parameters that control aspects of the Cubist fit.}
\usage{
cubistControl(
  unbiased = FALSE,
  auto = FALSE,
  rules = 100,
  neighbors = NA,
  extrapolation = 100,
  sample = 0,
  seed = sample.int(4096, size = 1) - 1L,
  cv = NA,
  label = "outcome"
)
}
\arguments{
\item{unbiased}{a logical: should unbiased rules be used?}

\item{auto}{a logical: should Cubist decide whether a composite
model is used. TRUE to automatically decide or FALSE to choose by
whether number of nearest neighbors is set.}

\item{rules}{an integer (or \code{NA}): define an explicit limit to
the number of rules used (\code{NA} lets Cubist decide).}

\item{neighbors}{an integer (or \code{NA}): set the number of nearest-
neighbors or instance-based correction (only applicable when
composite is set to TRUE or NA)}

\item{extrapolation}{a number between 0 and 100: since Cubist
uses linear models, predictions can be outside of the outside of
the range seen the training set. This parameter controls how
much rule predictions are adjusted to be consistent with the
training set.}

\item{sample}{a number between 0 and 99.9: this is the
percentage of the data set to be randomly selected for model
building (not for out-of-bag type evaluation).}

\item{seed}{an integer for the random seed (in the C code)}

\item{cv}{an integer for the number of cross-validation folds
(note this will return no model)}

\item{label}{a label for the outcome (when printing rules)}
}
\value{
A list containing the options.
}
\description{
Most of these values are discussed at length in
\url{http://rulequest.com/cubist-unix.html}
}
\examples{

cubistControl()

}
\references{
Quinlan. Learning with continuous classes.
Proceedings of the 5th Australian Joint Conference On Artificial
Intelligence (1992) pp. 343-348

Quinlan. Combining instance-based and model-based learning.
Proceedings of the Tenth International Conference on Machine
Learning (1993) pp. 236-243

Quinlan. \strong{C4.5: Programs For Machine Learning} (1993)
Morgan Kaufmann Publishers Inc. San Francisco, CA

\url{http://rulequest.com/cubist-info.html}
}
\seealso{
\code{\link[=cubist]{cubist()}}, \code{\link[=predict.cubist]{predict.cubist()}}, \code{\link[=summary.cubist]{summary.cubist()}},
\code{\link[=predict.cubist]{predict.cubist()}}, \code{\link[=dotplot.cubist]{dotplot.cubist()}}
}
\author{
Max Kuhn
}
\keyword{utilities}
