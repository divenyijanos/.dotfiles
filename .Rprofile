options(digits = 4)
options(max.print = 500)
options(width = 200)
options(datatable.print.class = TRUE, datatable.print.topn = 10, datatable.print.nrows = 20)
Sys.setenv(TZ = 'Europe/Budapest')

cd <- setwd
.myfuncs <- new.env()
.myfuncs$qs <- function(save = "yes") {q(save = save)}

# Load colorout if run in terminal interactively (handle packrat as well) ------

.myfuncs$setColorout <- function() {
    setOutputColors256(
        normal = 2, number = 3, negnum = 9, date = 7,
        true = 4, false = 1, string = 2,
        stderror = 10, infinite = 6, const = 5,
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
    cranURI  <- "http://venice.ett.local/emarsys-cran/"
    options(repos = c(getOption("repos"), emarsys = cranURI))
}

.myfuncs$useEmarsysDrat <- function() {
    dratURI  <- "http://venice.ett.local/dratrepo/"
    options(repos = c(getOption("repos"), emarsys = dratURI))
}


.First <- function() {
    message("Successfully loaded ~/.Rprofile at ", date())
}
