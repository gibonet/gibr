#' calcola e restituisce la classe di et\`a (ad esempio coorte (1974,1979], anno 1999 => eta_coorti="20-24")
#' 
#' @param coorti vettore (character o factor) tipo "(aaaa,aaaa]" che indica gli estremi della coorte in esame
#' @param anno anno di riferimento per dedurre la classe di et\`a di una coorte
#' @param right logical (TRUE o FALSE), che indica se l'intervallo comprende l'estremo superiore (default = FALSE, quindi che l'intervallo comprende il limite inferiore)
#' 
#' @examples 
#' eta_coorti(coorti = "(1981-1985]", anno = 1999)
#' 
#' @export
eta_coorti <- function(coorti, anno, right = FALSE){
  estremo1 <- as.integer(substr(coorti, start=2, stop=5)) + right
  estremo2 <- as.integer(substr(coorti, start=7, stop=10)) - 1L + right
  
  eta_low <- anno - estremo2
  eta_high <- anno - estremo1
  paste(eta_low, eta_high, sep="-")
}
