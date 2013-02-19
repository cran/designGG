\name{variableNames}
\alias{variableNames}
\title{ Generate variable names for all factors }
\description{
  Generate variable names for genetic, environmental factors and interacting
        terms.
}
\usage{
variableNames(nEnvFactors, envFactorNames=NULL)
}

\arguments{
   \item{nEnvFactors}{
      number of environmental factors, an integer bewteen 1 and 3.
      When \code{nEnvFactors} is 1 and the number of levels for the enviromental factor 
      (\code{nLevels})is 1, there is one condition in the experiment (i.e. no 
      enviromental perturbation) and thus only genetic factor will be considered in the algorithm.
      When \code{nEnvFactors} is 1 and nLevels is larger than 1 or \code{nEnvFactors} is
      larger than 1, all main factor(s) and interacting facotr(s) will be included.
      Examples:
      If there is a temperature perturbation, then \code{nEnvFactors} is 1;
      If there is both temperature and drug treatment perturbation, 
      then \code{nEnvFactors} is 2.
  }
  \item{envFactorNames}{
        a vector with names for all environmental factor(s). For example, for the
        experiment with two environmental factors of temperature and drug treatment:
        \code{envFactorNames <- c( "Temperature", "Dosage" ) } \cr
        Default = \code{NULL}, then the output will use \code{"F1"} and \code{"F2"} to indicate the
        environmental factors.
  }
  
}
\details{
  generates names for variables, a vector with the length of  (variableNumber+1).
}
\value{
   When \code{nEnvFactors} = 1 and \code{nLevels} = 1, there is no environmetal pertubation in the experimental.
   Then we re-define \code{nEnvFactors} to be 0 within the algorithm. Accordingly, \code{variableNumber} = 1, and
   \code{variableNames} is one genetic factor "Q".  \cr
   When \code{nEnvFactors} = 1, \code{variableNumber} = 3, and
   \code{variableNames} are one genetic factor "Q", one environmental factor "F",
    and one interacting factor "QxF". \cr   
  When \code{nEnvFactors} = 2, \code{variableNumber} = 7, and \code{variableNames} are one genetic factor "Q",
                  two environmental factors "F1" and "F2", 
                  three two-way interacting factors "QF1", "QF2", "F1F2", 
                  and one three way interacting factors "QxF1xF2".  \cr
  When \code{nEnvFactors} = 3,  \code{variableNumber} = 15, and
  \code{variableNames} are one genetic factor "Q",
                  three environmental factors "F1", "F2" and "F3",
                  six two-way interacting factors "QF1", "QF2", "QF3", "F1F2",
                   "F2F3" and "F1F3",
                  four three-way interacting factors "QxF1xF2", "QxF1xF3",
                   "QxF2xF3", "F1xF2xF3" 
                  and one four-way interacting factors "QxF1xF2xF3". 
}
\references{ 
Y. Li, R. Breitling and R.C. Jansen. Generalizing genetical
     genomics: the added value from environmental perturbation, Trends Genet
     (2008) 24:518-524. \cr
Y. Li, M. Swertz, G. Vera, J. Fu, R. Breitling, and R.C. Jansen. designGG:
An R-package and Web tool for the optimal design of genetical genomics
experiments. BMC Bioinformatics 10:188(2009)\cr
http://gbic.biol.rug.nl/designGG
}
\author{ 
  Yang Li <yang.li@rug.nl>, Gonzalo Vera <gonzalo.vera.rodriguez@gmail.com> \cr
  Rainer Breitling <r.breitling@rug.nl>, Ritsert Jansen <r.c.jansen@rug.nl> 
}

\seealso{ \code{\link{variableNumber} }  }
\keyword{method}
