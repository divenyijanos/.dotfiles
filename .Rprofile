options(digits = 4)
options(max.print = 500)

cd <- setwd
qs <- function(save = "yes") {q(save = save)}

lc <- function() { 
    packrat::set_opts(external.packages = "colorout")
    library(colorout)
    setOutputColors256(
        num = 11, negnum = 9, date = 12, stderror = 7, 
        infinite = 13, false = 4, true = 6, const = 8,
        verbose = FALSE
    )
    packrat::set_opts(external.packages = "")
    cat("colorout is loaded\n")
}

.First <- function() {
    cat("\nSuccessfully loaded ~/.Rprofile at", date(), "\n")
}


