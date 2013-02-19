\name{initialDesign}
\alias{initialDesign}
\title{ Initialize an experiment design matrix 
 }
\description{
 Allocate RILs (or strains) into different conditional and pair RILs (or strains)
  into slides.

}
\usage{
  initialDesign( genotype, nRILs, nSlides, nConditions, nTuple, 
                 bTwoColorArray )
}

\arguments{
  \item{genotype}{ 
      genotype data: a nMarker-by-nRILs matrix with two allels being 0 and 1 (or A and B)
      or three allels being 0, 0.5 and 1 (or, A, H, and B), where 0.5 (or H) represents
      heterozygous allele. 
  }
  \item{nRILs}{ 
      total number of RILs ((or strains) available for the experiment. 
  }
  \item{nSlides}{ 
      total number of slides available for the experiment. 
  }
  \item{nConditions}{ 
      number of all possible combination of all environmental factors.  
  }
  \item{nTuple}{
      average number of RILs (or strains) to be assigned onto each condition \cr
      \code{nTuple} should be a real number which is larger than 1.\cr
      if \code{nTuple} < 1, the algorithm will stop and shw the message below, \cr
      \code{warning: "The number of slides is too small to perform the experiment."}
  }
    \item{bTwoColorArray}{
      binary variable indicating experiment type: \cr
      \code{bTwoColorArray <- TRUE} \#for dual channel experiment \cr
      \code{bTwoColorArray <- FALSE} \#for single channel experiment 
  }
}
\details{
    For two-color array experiments, randomly choose a RIL (or strain) and pair it with the 
     genetically most different RIL (or strain) on one array. \cr
    For one-color array experiments, array.allocation is \code{NULL} as there is no 
    need to pair samples.
}
\value{
  a list with 2 matrices:  \cr
  \code{condition.allocation}: allocate RILs (or strains) into different conditional
    (nCondition * nRILs)      \cr
  \code{array.allocation}: pair RILs (or strains) into sldies
    (nSlides * nRILs) 
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
\note{ This function calls \code{conditionAllocation} function to allocate selected RILs 
          (or strains) into different conditions.
}
\seealso{ \code{\link{designGG}} }
\examples{
library(designGG)
data(genotype)
nRILs <-100
nEnvFactors <- 2  
nConditions <-2
nLevels <- c( 2, 2 )
levels <- list ( c(16, 24), c(5, 10) )
nSlides <- 100
nTuple <- 25  
bTwoColorArray <- TRUE 
initialDesign( genotype, nRILs, nSlides, nConditions, nTuple, bTwoColorArray )          
}
\keyword{method}
