#' Format numbers with . as thousand separator and comma for decimal separator
#'
#' @param x A numeric vector
#' @param nsmall (as in the \code{base::format} function)
#' @return A character vector with the numbers formatted
#' @examples
#' x <- runif(10) * 5000
#' punto_migliaia(x)
#' 
#' @export
punto_migliaia <- function(x, nsmall=0){
  format(x, big.mark=".", decimal.mark=",", nsmall=nsmall)
}


# #' @usage lhs \%nin\% rhs
# #' 
# #' @param lhs Un valore da mettere a sinistra dell'operatore.
# #' @param rhs Il valore a destra dell'operatore.
# #' @examples
# #' 1:10 %in% c(1,3,5,9)
# #' 1:10 %nin% c(1,3,5,9)
# `%nin%` <- Negate(`%in%`)


#' Operatore \%nin\% (l'opposto di \%in\%)
#'
#'
#' @param x vettore da mettere a sinistra.
#' @param y vettore da mettere a destra (si valuta se gli elementi di questo vettore non fanno parte del vettore x).
#' 
#' @examples
#' 1:10 %in% c(1,3,5,9)
#' 1:10 %nin% c(1,3,5,9)
#' @export
`%nin%` <- function(x, y) !x %in% y


#' Funzione che cambia in maiuscolo la prima lettera di una stringa di testo
#'
#' @param x a character vector
#'
#' @examples
#' first_m("pippo")
#' 
#' @export
first_m <- function(x){
  x_first <- substr(x, 1, 1)
  x_last <- substr(x, 2, nchar(x))
  res <- paste(toupper(x_first), x_last, sep="")
  res
}


#' Funzione equvalente a round, tranne per l'arrotondamento di .5 all'intero più grande (round invece, ad esempio, arrotonda 2.5 a 2)
#' Trovata su stackoverflow
#' http://stackoverflow.com/questions/12688717/round-up-from-5-in-r
#'
#' @param x un vettore numerico
#' @param n il numero di decimali per cui si vuole arrotondare
#' 
round2 <- function(x, n) {
  posneg <- sign(x)
  z <- abs(x)*10^n
  z <- z + 0.5
  z <- trunc(z)
  z <- z/10^n
  z*posneg
}
