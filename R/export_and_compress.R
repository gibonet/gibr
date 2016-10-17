
#' Esporta un oggetto (di solito un data frame) in un file di testo.
#' 
#' Con ";" come separatore di colonne.
#' 
#' @param .data oggetto da esportare (data frame)
#' @param name nome del file in cui esportare (default NULL, crea un nome automaticamente sulla base della data)
#' @param fileEncoding encoding del file (default "CP1252", per windows...). Altro valore utilizzato spesso: "UTF-8".
#' @param ... altri argomenti che si possono passare (vedi \code{utils::write.table})
#' 
#' @export
export <- function(.data, name = NULL, fileEncoding = "CP1252", ...){
  if(is.null(name)) name <- make.names(paste0(date(), ".csv"))
  utils::write.table(.data, file = name, row.names = FALSE, sep = ";", fileEncoding = fileEncoding, ...)
}

