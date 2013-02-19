\name{conditionLevel}
\alias{conditionLevel}
\title{ Levels of all environmental factors }
\description{
    Describe the levels of all environmental factors for each RIL/strain in the
    experiment.\cr
    This is a subfunction needed for \code{designScore}, but is not directly used.
}
\usage{
    conditionLevel( array.allocation, condition.allocation, 
                    condition.combination,nEnvFactors )
}
\arguments{
  \item{array.allocation}{
      a matrix with nArray rows and nRIL columns.
      Elements of 1/0 indicates this RIL (or strain) is/not selected 
      for this array.
  }
  \item{condition.allocation}{  
      a matrix with nCondition rows and nRIL columns.
      Elements of 1/0 indicates this RIL (or strain) is/not selected 
      for this condition.
  }
  \item{condition.combination}{ 
      a matrix indicating all possible levels for environmental factors, 
      with dimension of nConditions by nEnvFactors.
  }
  \item{nEnvFactors}{
      number of environmental factors, an integer bewteen 1 and 3.
      When \code{nEnvFactors} is 1 and nLevels is 1, there is one condition in 
      the experiment (i.e. no enviromental perturbation) and thus only genetic factor
      will be considered in the algorithm.
      When \code{nEnvFactors} is 1 and nLevels is larger than 1 or \code{nEnvFactors} is
      larger than 1, all main factor(s) and interacting facotr(s) will be included.
  }
}
\details{
    For single-channel experiment, \code{array.allocation} is \code{NULL}. Then the \code{conditionLevel} is 
    decided by \code{condition.allocation}.
    For dual-channel experiment, \code{array.allocation} decides which RILs are selected and
    then the \code{condition.allocation} indicates which condition this RIL will be put in for the
    experiment. 
}
\value{
  A matrix with dimension of nRILs by nEnvFactors, each element indicates the 
  level of a certain environmental factor to which the RIL (or strain) is exposed in the 
  experiment. 
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
  
\seealso{ \code{\link{designScore}}, \code{\link{conditionCombination}} }

\keyword{method}
