
#' Prende come argomento un vettore di classi di et\`a nel formato "(14,19]" e lo restituisce in formato "15-19" (se right = TRUE). Se right = FALSE, prende "[15,20)" e restituisce "15-19"
#' 
#' @param classi_eta vettore (character o factor) tipo "(aa,aa]" (o "[aa,aa)") che indica gli estremi della classe di et\`a in esame
#' @param right logical (TRUE o FALSE), che indica se l'intervallo comprende l'estremo superiore (default = FALSE, quindi che l'intervallo comprende il limite inferiore)
#' 
#' @examples 
#' cambia_forma_eta("[15,20)")
#' cambia_forma_eta("(14,19]", right = TRUE)
#' @export
cambia_forma_eta <- function(classi_eta, right = FALSE){
  if(right){
    anno1 <- suppressWarnings(as.integer(substr(classi_eta, start=2, stop=3))) + 1
    anno2 <- suppressWarnings(as.integer(substr(classi_eta, start=5, stop=6)))
    
  }else{
    anno1 <- suppressWarnings(as.integer(substr(classi_eta, start=2, stop=3)))
    anno2 <- suppressWarnings(as.integer(substr(classi_eta, start=5, stop=6))) - 1
  }
  
  anno2[is.na(anno2) & !is.na(anno1)] <- "e +"
  classi_eta <- paste(anno1, anno2, sep="-")
  classi_eta[classi_eta == "NA-NA"] <- NA
  classi_eta
}
###############################################################################
## table(cambia_forma_coorti(dati$coorti))
