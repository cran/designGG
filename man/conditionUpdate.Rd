\name{conditionUpdate}
\alias{conditionUpdate}
\title{ Update condition allocation }
\description{
    Update the allocation of samples onto different conditions. This is a subfunction needed for \code{updateDesign}, but is not directly used.
}
\usage{
    conditionUpdate( condition.allocation, nTuple,bTwoColorArray )
}
\arguments{
  \item{condition.allocation}{ 
      a matrix with nCondition rows and nRIL columns.
      elements of 1/0 indicate this RIL (or strain) is/not selected 
      for this condition. 
  }
   \item{nTuple}{ 
      average number of RILs (or strains) to be assigned onto each condition \cr
      \code{nTuple} should be a real number which is larger than 1.\cr
      if \code{nTuple} < 1, the algorithm will stop and show the message, \cr
      \code{warning: "The number slides is too less to perform the experiment."}
  }
  \item{bTwoColorArray}{
      binary variable indicating experiment type: \cr
      \code{bTwoColorArray <- TRUE} \#for dual channel experiment \cr
      \code{bTwoColorArray <- FALSE} \#for single channel experiment 
  }
}
\details{
    This function will be used both in single and dual channel experiment 
    design.
}
\value{
  An updated \code{condition.allocation} table.
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

\seealso{ \code{\link{arrayUpdate}}, \code{\link{designGG}}  }
\keyword{method}
