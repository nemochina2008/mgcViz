#' Printing plots of smooth effects
#' 
#' @param x an object of class \code{plotSmooth}.
#' @param ... currently unused.
#' @name print.plotSmooth
#' @rdname print.plotSmooth
#' @export 
print.plotSmooth <- function(x, ...) {
  print(x$ggObj)
  return( invisible(NULL) )
}  