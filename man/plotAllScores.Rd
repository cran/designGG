\name{plotAllScores} 
\alias{plotAllScores} 
\title{Plot scores profiles}

\description{
   Plot all scores and the temperature at each iteration during the simulated annealing 
   process.
} 
\usage{ plotAllScores(plot.obj,fileName=NULL) 
} 
\arguments{     
  \item{plot.obj}{ a list containing: scores, cooling, startTemp, temperature, 
                       temperature.step, nIterations and optimality. 
                       Details can be found below. 
  
	scores: A- or D- optimality score of all accepted designs during optimization
		   process.
	cooling: describes the cooling step in the Simulated Annealing, defined as (new.score $-$ now.score)/ now.score.		
	startTemp:starting temperature of the simulated annealing process.
	temperature:final temperature that the simulated annealing reaches.
	temperatureStep:temperature decreasing step in the simulated annealing (SA) process.
	nIterations:number of iterations in the simulated annealing method.
	optimality:type of optimality, i.e. "A" (A-optimality) or "D"
		  (D-optimality). A-optimality minimizes $Trace((X'X)^{-1})$,
		  which corresponds to minimum average variance of the
		  parameter estimates. D-optimality minimizes $det(X'X)^{-1}$,
		  which corresponds to minimum generalized variance of the
		  parameter estimates.
	}
 
 \item{fileName}{
         the final optimal design table(s) in \code{csv} format and a plot (in \code{png} 
         format) of the all scores during SA process (if \code{plotScores} = TRUE) will be 
         produced. The users can specify the table and plot name by setting 
         \code{fileName}.
         If \code{NULL} (default) it produces files starting with \code{"myDesignGG"}.
  }
}
 

\value{
  Draw a plot that visualizeds the scores (y-axis) at each iteration during 
  the simulated annealing process (x-axis is time of moving)
 
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
\note{ 
  
    The calculation of score is dependent on the choice of optimality.\cr
    Cooling is defined as (newScore $-$ nowScore)/nowScore. 

} 
\examples{
    data(examplePlotObj)
    plotAllScores(examplePlotObj) 
}
\keyword{method}
