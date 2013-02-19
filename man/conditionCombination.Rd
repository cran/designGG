\name{conditionCombination}
\alias{conditionCombination}
\title{ Generate a matrix indicating all possible levels for environmental 
    factors
 }
\description{
    Generate a matrix indicating all possible levels for environmental 
    factors with dimension nConditions * nEnvFactors.
    This is a subfunction needed for \code{designScore}, but is not directly used.
}
\usage{
  conditionCombination( nEnvFactors, nLevels, Level, envFactorNames )
}
\arguments{
  \item{nEnvFactors}{
      number of environmental factors, an integer bewteen 1 and 3.
      When \code{nEnvFactors} is 1 and the number of levels for the enviromental factor 
      (\code{nLevels}) is 1, there is one condition in the experiment (i.e. no 
      enviromental perturbation) and thus only genetic factor will be considered in the algorithm.
      When \code{nEnvFactors} is 1 and nLevels is larger than 1 or \code{nEnvFactors} is
      larger than 1, all main factor(s) and interacting facotr(s) will be included.
      Examples:
      If there is a temperature perturbation, then \code{nEnvFactors} is 1;
      If there is both temperature and drug treatment perturbation, 
      then \code{nEnvFactors} is 2.
  }
  \item{nLevels}{ 
      number of levels for each factor, a vector with each 
      component being integer. The length should be equal to 
      \code{nEnvFactors}.
  }
  \item{Level}{
      a list which specifies the levels for each factor in the
      experiment. There are in total \code{nEnvFactors} elements in the list and each
      element correspsonds to certain envrironmental factor. The element is a
      vector describing all levels of the environmental factor.
      Default setting for the level of each factor is 1, 2, ...., nLevels[i]. (Here
      nLevels[i] is the \emph{i}th element of nLevels, which tells the total number of
      levels for \emph{i} environmental factor).
  }
  \item{envFactorNames}{
        a vector with names for all environmental factor(s). For example, for an
        experiment with two environmental factors of temperature and drug treatment:
        \code{envFactorNames <- c( "Temperature", "Dosage" ) }\cr
        Default = \code{NULL}, then the output will use \code{"F1"} and \code{"F2"} to indicate the
        environmental factors.
  }
}
\details{
    Currently this function works only when \code{nEnvFactors} is between 1 and 3.
}

\value{
  A matrix with dimension of nConditions * nEnvFactors.
  Each element in the matrix indicates the levels of corresponding environmental
   factor.

}
\references{
  Y. Li, R. Breitling and R.C. Jansen. Generalizing genetical 
     genomics: the added value from environmental perturbation, Trends Genet
     (2008) 24:518-524. \cr
  Y. Li, M. Swertz, G. Vera, J. Fu, R. Breitling, and R.C. Jansen. designGG: 
  An R-package and Web tool for the optimal design of genetical genomics 
  experiments. BMC Bioinformatics 10:188(2009) \cr
  http://gbic.biol.rug.nl/designGG  
}
\author{
  Yang Li <yang.li@rug.nl>, Gonzalo Vera <gonzalo.vera.rodriguez@gmail.com> \cr
  Rainer Breitling <r.breitling@rug.nl>, Ritsert Jansen <r.c.jansen@rug.nl> 
}
\seealso{ \code{\link{designScore}}}
\keyword{method}
