#'
#' Lists available layer
#'
#' @param o an object.
#' @rdname listLayers
#' @export listLayers
#' 
listLayers <- function(o){
  
  cl <- paste(class(o), collapse = '')
  
  out <- switch(cl, 
                "plotSmoothfs1Dgg" = c("l_fitLine"),
                "plotSmooth1Dgg" = c("l_ciLine", "l_ciPoly", "l_fitLine", "l_dens", "l_points", "l_rug"),
                "plotSmooth2Dgg" = c("l_fitContour", "l_fitRaster", "l_dens", "l_points", "l_rug"), 
                "plotSmoothMDgg" = c("l_fitContour", "l_fitRaster", "l_dens", "l_points", "l_rug"), 
                
                "plotSmoothCheck1Dgg" = c("l_densCheck", "l_gridCheck1D", "l_dens", "l_points", "l_rug"), 
                "plotSmoothCheck2Dgg" = c("l_gridCheck2D", "l_dens", "l_glyphs2D", "l_points", "l_rug"),
                
                message(paste("No layers for obj of this class", paste(class(o), collapse = ' '))))
  
  return(out)

} 