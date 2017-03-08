# This takes a data frame as an argument (e.g. test.frame),
# adds a visit counter variable that is represented by outvar
# and counts visits for each participant and puts the visit numbers in outvar
# it takes a string for outvar, like "visitnumber" and takes a string name to
# tell it the name of the variable to use to identify subjects, like "PIDN"

counter <- function(x.frame, outvar, idvar) {
  i <- 1
  x.frame[[outvar]] <- 1
  viscountr <- 2
  while(i < length(x.frame[[idvar]])) {
    i <- i + 1
    if(x.frame[[idvar]][i] == x.frame[[idvar]][i-1]) {
      x.frame[[outvar]][i] <- viscountr
    } else x.frame[[outvar]][i] <- 1
    if(x.frame[[idvar]][i] == x.frame[[idvar]][i-1]) {
      viscountr <- viscountr+1
    } else viscountr <-2
  }
  x.frame
}
