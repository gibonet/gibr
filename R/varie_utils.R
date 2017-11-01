
search_s <- function(package = "base"){
  ls(grep(package, search()))
}



grep_list <- function(list){
  lapply(list, function(x) grep("-", x))
}


