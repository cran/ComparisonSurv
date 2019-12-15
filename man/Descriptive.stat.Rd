\name{Descriptive.stat}
\alias{Descriptive.stat}
\title{Summarize Descriptive Statistics Commonly Used in Survival Data}
\description{
A function used to produce result summaries of the results of various descriptive statistics.
}
\usage{
Descriptive.stat(time, status, group, tau=NULL, alpha=0.05)
}
\arguments{
\item{time}{The follow up time for right censored data.}
\item{status}{The status indicator, normally 1=event, 0=alive or right censored.}
\item{group}{The group indicator for comparison, and the elements of this vector must take either 0 or 1. Normally, 0= control group, 1= treatment group.}
\item{tau}{The truncation time point for the RMST calculation, which needs to be smaller than or equal to the minimum of the largest observed time in each of the two groups. When tau=NULL, the default value (the minimum of the largest event time in each of the two groups) is used.}
\item{alpha}{The significance level, the default is 0.05.}
}
\value{
A list containing the following components:
\item{result.summary}{The summary statistics in each group, including sample.size, the number of event (event.num), cencoring.rate, max.event.time, and the percentile of 0.25 survival (time.25) and 0.75 survival (time.75).}
\item{result.mean}{The results of mean survival time in each group.}
\item{result.median}{The results of median survival time in each group.}
\item{tau}{	The truncation time point for the restricted mean survival time (RMST) calculation, which needs to be smaller than or equal to the minimum of the largest observed time in each of the two groups. The default value tau=NULL means the minimum of the largest event time in each of the two groups is used.}
\item{result.RMST}{The results of RMST in each group. See references for details.}
}
\examples{
#get 'PHdata' from package
data(PHdata)
data1<-PHdata
#
#get result of descriptive statistics
Descriptive.stat(data1$time, data1$status, data1$group)
}
