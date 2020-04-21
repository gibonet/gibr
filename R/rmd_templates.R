
#' Crea un esempio di codice 'yaml' per iniziare un documento ".Rmd"
#' 
#' Questa funzione non ha parametri. Genera solo un esempio di codice 'yaml'
#' da includere all'inizio di un documento '.Rmd', con alcune opzioni che usiamo
#' ogni tanto.
#' 
#' @return un vettore character che si può esportare in un file con \code{link{writeLines}}
#' 
#' @examples 
#' doc <- rmd_yaml()
#' 
#' doc
#' 
#' # Esporazione in un file
#' writeLines(doc, con = "documento.Rmd")
#' @export
rmd_yaml <- function(){
  titolo <- "title: \"TITOLO DEL DOCUMENTO\""
  autore <- "author: \"AUTORE\""
  data <- "date: \"data\""
  output <- c("output:", "  pdf_document:", "    number_sections: yes", "    toc: yes",
              "    toc_depth: 4", "  html_document:", "    number_sections: yes", 
              "    toc: yes", "  word_document:", "    toc: yes", 
              "documentclass: article",
              "geometry: bottom = 1in, top = 1in, tmargin = 0.5in, bmargin = 0.75in",
              "header-includes:",
              "- \\usepackage{xcolor}",
              "- \\usepackage{booktabs}",
              "- \\usepackage[skip=0pt]{caption}",
              "- \\usepackage[italian]{babel}",
              "- \\usepackage{amsmath}",
              "- \\usepackage{float}",
              "classoption: a4paper")
  
  doc <- c("---", titolo, autore, data, output, "---", "")
  
  doc
}


#' @rdname rmd_yaml
#' @export
rmd_yaml_beamer <- function(){
  titolo <- "title: \"TITOLO DELLA PRESENTAZIONE\""
  sottotitolo <- "subtitle: sottotitolo della presentazione"
  autore <- "author: \"AUTORE\""
  affiliation <- "institute: "
  data <- "date: \"data\""
  
  output <- c("output:", "  beamer_presentation:", "    fig_caption: no",
              "    toc: yes", "    includes:", 
              "      in_header: header_pagenrs.tex",
              "  ioslides_presentation: default", "  slidy_presentation: default",
              "classoption: aspectratio=169"
  )
  
  doc <- c("---", titolo, sottotitolo, autore, affiliation, data, output, "---", "")
  
  x <- system.file("header_pagenrs.tex", package = "gibr")
  
  # Copia il file header_pagenrs.tex nella directory corrente
  # (serve alla voce in_header:)
  file.copy(from = x, to = basename(x))
  
  doc <- c(doc, "```{r setup, include=FALSE}", 
           "knitr::opts_chunk$set(echo = FALSE)", "```", "")
  
  doc
}


