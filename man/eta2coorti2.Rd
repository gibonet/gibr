% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eta2coorti.R
\name{eta2coorti2}
\alias{eta2coorti2}
\title{Trasforma una classe di età in una coorte}
\usage{
eta2coorti2(classe_eta, anno)
}
\arguments{
\item{classe_eta}{vettore (character o factor) con la classe d'età ("15-19", "20-24", ...)}

\item{anno}{anno di riferimento, che serve per dedurre l'anno di nascita dall'età in anni}
}
\description{
Trasforma una classe di età in una coorte
}
\examples{
eta2coorti2("15-19", anno = 2000)

}
