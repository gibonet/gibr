
#' Prende come argomento un vettore di coorti nel formato "(1974,1979]" e lo restituisce in formato "1975-1979" (se right = TRUE). Se right = FALSE, prende "[1974,1979)" e restituisce "1974-1978"
#' 
#' @param coorti vettore (character o factor) tipo "(aaaa,aaaa]" (o "[aaaa,aaaa)") che indica gli estremi della coorte in esame
#' @param right logical (TRUE o FALSE), che indica se l'intervallo comprende l'estremo superiore (default = FALSE, quindi che l'intervallo comprende il limite inferiore)
#' 
#' @examples 
#' cambia_forma_coorti("[1974,1979)")
#' cambia_forma_coorti("(1974,1979]", right = TRUE)
#' @export
cambia_forma_coorti <- function(coorti, right = FALSE){
  anno1 <- as.integer(substr(coorti, start=2, stop=5)) + right
  anno2 <- as.integer(substr(coorti, start=7, stop=10)) + right - 1L
  
  paste(anno1, anno2, sep="-")
}
###############################################################################
## table(cambia_forma_coorti(dati$coorti))
