#######################################
#' @description `.argMaster`
#' @param nam A character indicating a function name.
#' @return A list, with default options and graphical parameters.
#' @noRd
.argMaster <- function(nam){
  
  nam <- match.arg(nam, c("qq.gam", "check.gam"))
  
  if( nam == "zoom.gam" ) { nam <- qq.gam } # They use same arg list
  
  out <- switch(nam,
                "qq.gam" = list(
                  "a.qqpoi" = list(shape = '.'),           # qqplot points layer
                  "a.ablin" = list(colour = "red"),        # reference line layer
                  "a.cipoly" = list(colour = "gray80", 
                                    fill = "gray80"),      # ci poly layer
                  "a.replin" = list(alpha = 0.05)          # qqplot points of replicates layer
                ), 
                "check.gam" = list(
                  "a.qq" = list(),
                  "a.respoi" = list(size = 0.5), 
                  "a.hist" = list(),
                  "a.reshex" = list()
                ))
  
  return(out)
  
}


