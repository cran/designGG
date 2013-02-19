\name{genotype}
\docType{data}
\alias{genotype}
\title{Example genotype data}
\description{
\code{genotype}: example data of \code{genotypes} for each marker (rownames) 
and 100  strains such as recombinant inbred lines (RIL) (columnnames), 
with numeric values 1 and 0 (or A and B). 
\preformatted{
data(genotype)
genotype[1:5,1:5]}
\tabular{lrrrrr}{
            \tab Strain1 \tab Strain2 \tab Strain3   \tab Strain4   \tab Strain5 \cr
C1M1        \tab 1    \tab 0    \tab 0      \tab 0      \tab 1    \cr
C1M2        \tab 1    \tab 0    \tab 0      \tab 0      \tab 1    \cr
C1M3        \tab 1    \tab 0    \tab 0      \tab 0      \tab 1    \cr
C1M4        \tab 1    \tab 0    \tab 0      \tab 1      \tab 1    \cr
C1M5        \tab 1    \tab 0    \tab 0      \tab 1      \tab 1    \cr
}
}
\usage{
data(genotype)
}
\format{ 
\code{genotype}: 120 markers by 100 samples (Strains). 
}

\author{ 
 Yang Li <yang.li@rug.nl>, Gonzalo Vera <gonzalo.vera.rodriguez@gmail.com> \cr
  Rainer Breitling <r.breitling@rug.nl>, Ritsert Jansen <r.c.jansen@rug.nl> 
}

\examples{
  ##load the data
  data(genotype)
  
  ##view part of the the data
  genotype[1:5,1:5]
}
\keyword{datasets}
