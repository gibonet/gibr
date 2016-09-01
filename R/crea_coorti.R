
#' Trasforma un vettore numerico (possibilmente di numeri interi) in un factor (classi). 
#' 
#' Come \code{base::cut} con i parametri \code{include.lowest = TRUE} e \code{right = FALSE} (di default)
#' 
#' @param x un vettore numerico (da cui si desiderano delle classi)
#' @param breaks either a numeric vector of two or more unique cut points or a single number (greater than or equal to 2) giving the number of intervals into which x is to be cut.
#' @param include.lowest logical, indicating if an 'x[i]' equal to the lowest (or highest, for right = FALSE) 'breaks' value should be included.
#' @param right logical, indicating if the intervals should be closed on the right (and open on the left) or vice versa.
#' @param ... further arguments passed to or from other methods.
#' 
#' @seealso \code{cut}
#' @examples 
#' crea_coorti(x = seq(1985, 2000, by = 1), breaks = c(1985, 1990, 1995, 2000, Inf))
#' @export
crea_coorti <- function(x, breaks, include.lowest = TRUE, right = FALSE, ...){
  coorti <- cut(x, breaks = breaks, include.lowest = include.lowest, right=right, ...)
}



crea_classi <- function(x, width, start = 0, stop = max(x), include.lowest = FALSE, right = TRUE, ...){
  # "auto" breaks
  b <- seq(from = start, to = stop, by = width)
  b <- c(-Inf, b, Inf)
  
  cut(x, breaks = b, include.lowest = include.lowest, right = right, ...)
}