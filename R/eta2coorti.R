
#' Trasforma una classe di età in una coorte
#' 
#' @param classe_eta vettore (character o factor) con la classe d'età ("[15,20)" o "(15,20]")
#' @param anno anno di riferimento, che serve per dedurre l'anno di nascita dall'età in anni
#' @param right logical (TRUE o FALSE). Indica se la classe di età comprende l'estremo superior (right = TRUE) oppure no (right = FALSE, opzione di defauls)
#' 
#' @examples 
#' eta2coorti("[15,20)", anno = 2000)
#' eta2coorti("[15,20)", anno = 2000, right = TRUE)
#' 
#' @export
eta2coorti <- function(classe_eta, anno, right = FALSE){
  eta_low <- as.integer(substr(classe_eta, start=2, stop=3)) + right
  eta_high <- as.integer(substr(classe_eta, start=5, stop=6)) - 1L + right
  
  coorte_lim_inf <- anno - eta_high
  coorte_lim_sup <- anno - eta_low
  
  paste(coorte_lim_inf, coorte_lim_sup, sep = "-")
}


#' Trasforma una classe di età in una coorte
#' 
#' @param classe_eta vettore (character o factor) con la classe d'età ("15-19", "20-24", ...)
#' @param anno anno di riferimento, che serve per dedurre l'anno di nascita dall'età in anni
#' 
#' @examples 
#' eta2coorti2("15-19", anno = 2000)
#' 
#' @export
eta2coorti2 <- function(classe_eta, anno){
  eta_low <- as.integer(substr(classe_eta, start = 1, stop = 2))
  eta_high <- as.integer(substr(classe_eta, start = 4, stop = 5))
  
  coorte_lim_inf <- anno - eta_high
  coorte_lim_sup <- anno - eta_low
  
  paste(coorte_lim_inf, coorte_lim_sup, sep = "-")
}