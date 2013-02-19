\name{exampleConditionDesignTable}
\docType{data}
\alias{exampleConditionDesignTable}
\title{Example ConditionDesignTable data}
\description{
\code{exampleConditionDesignTable}: 
Example data of \code{exampleConditionDesignTable} for a hypothetical 
dual-channel microarray experiment in which there are 100 strains (e.g. recombinant 
inbred lines ) and 27 arrays available. Two environmental factors 
(temperature and cell type) are considered in this experiment. There are three 
levels for temperature (15, 24 and 29) and four levels for cell types (A, B, C, D).
This table tells how to allocate samples into 12 (=3*4) different conditions. 
On average there are 4.5 (27*2/12) samples per condition. 
\preformatted{
> data(exampleConditionDesignTable)
> exampleConditionDesignTable[1:5,]}
\tabular{lccccccc}{
            \tab Temperature  \tab Cell Type   \tab \tab \tab Selected Strains \tab \tab   \cr 
condition1  \tab 15 \tab A \tab Strain28 \tab Strain81 \tab Strain18 \tab Strain61 \tab \cr  
condition2  \tab 24 \tab A \tab Strain72 \tab Strain40 \tab Strain83 \tab Strain44 \tab Strain10 \cr 
condition3  \tab 29 \tab A \tab Strain22 \tab Strain89 \tab Strain3 \tab Strain30 \tab Strain58 \cr 
condition4  \tab 15 \tab B \tab Strain70 \tab Strain47 \tab Strain4 \tab Strain59 \tab \cr  
condition5  \tab 24 \tab B \tab Strain93 \tab Strain97 \tab Strain49 \tab Strain14 \tab \cr
}
}
\usage{
data(exampleConditionDesignTable)
}
\format{ 
\code{exampleConditionDesignTable}: 12 combination of conditions from three 
temepratures and four cell types.  
}

\author{ 
Yang Li <yang.li@rug.nl>, Gonzalo Vera <gonzalo.vera.rodriguez@gmail.com> \cr
  Rainer Breitling <r.breitling@rug.nl>, Ritsert Jansen <r.c.jansen@rug.nl> 
}

\examples{
  ##load the data
  data(exampleConditionDesignTable)
  
  ##view part of the the data
  exampleConditionDesignTable[1:5,]
}
\keyword{datasets}
