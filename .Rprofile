options(digits = 4)
options(max.print = 500)
options(width = 200)

cd <- setwd
.myfuncs <- new.env()
.myfuncs$qs <- function(save = "yes") {q(save = save)}

# Load colorout if run in terminal interactively (handle packrat as well) ------

.myfuncs$setColorout <- function() { 
    setOutputColors256(
        num = 11, negnum = 9, date = 12, stderror = 7, 
        infinite = 13, false = 4, true = 6, const = 8,
        verbose = FALSE
    )
    message("Package colorout is loaded")
}

if (interactive() & is.na(Sys.getenv("RSTUDIO", unset = NA))) {
    if (file.exists('packrat')) {
        try(packrat::extlib('colorout'))
    } else {
        library('colorout')
    }
    .myfuncs$setColorout()
}

.myfuncs$useEmarsysCRAN <- function() {
    cranURI  <- 'http://venice.ett.local/emarsys-cran/'
    options(repos = c(getOption("repos"), emarsys = cranURI))
}


.First <- function() {
    message("Successfully loaded ~/.Rprofile at ", date())
}
