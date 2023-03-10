% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/find_limpet_dives.R
\name{find_limpet_dives}
\alias{find_limpet_dives}
\title{Find time cues for dives}
\usage{
find_limpet_dives(
  p,
  mindepth = 50,
  deep_dur = 30,
  sampling_rate = NULL,
  surface = 1,
  findall = FALSE
)
}
\arguments{
\item{p}{A depth or altitude time series (a sensor data list or  a vector) in meters.}

\item{mindepth}{The threshold in meters at which to recognize a dive or flight. Dives shallow or flights lower than mindepth will be ignored. Default is 50 m}

\item{deep_dur}{The amount of time (in seconds) the whale must spend at depths greater than mindepth, for it to be considered a dive. Default is 30 seconds.}

\item{sampling_rate}{The sampling rate of the sensor data in Hz (samples per second).}

\item{surface}{(optional) The threshold in meters at which the animal is presumed to have reached the surface. Default value is 1. A smaller value can be used if the dive/altitude data are very accurate and you need to detect shallow dives/flights.}

\item{findall}{(optional) When TRUE, forces the algorithm to include incomplete dives at the start and end of the record. Default is FALSE which only recognizes complete dives.}
}
\value{
T is a data frame with one row for each dive/flight found. The columns of T are: start (time in seconds of the start of each dive/flight), end (time in seconds of the start of each dive/flight), max (maximum depth/altitude reached in each dive/flight), tmax	(time in seconds at which the animal reaches the max depth/altitude).
}
\description{
This function is used to find the time cues for the start and end of either dives in a depth record or flights in an altitude record.
}
\examples{
BW <- beaked_whale
T <- find_limpet_dives(p = BW$P$data,
sampling_rate = BW$P$sampling_rate)
}
