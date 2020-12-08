options(digits = 4)
options(max.print = 500)
options(width = 200)
options(
    datatable.print.class = TRUE,
    datatable.print.topn = 10,
    datatable.print.nrows = 20,
    datatable.CJ.names = TRUE,
    datatable.print.trunc.cols = TRUE
)
options(
    radian.color_scheme = "monokai",
    radian.editing_mode = "vi"
)
Sys.setenv(TZ = "Europe/Budapest")

cd <- setwd
.myfuncs <- new.env()
.myfuncs$qs <- function(save = "yes") {
    q(save = save)
}

.myfuncs$useEmarsysDrat <- function() {
    dratURI  <- "http://venice.ett.local/dratrepo/"
    options(repos = c(getOption("repos"), emarsys = dratURI))
}


.First <- function() {
    message("Successfully loaded ~/.Rprofile at ", date())
}

setHook(
    packageEvent("languageserver", "onLoad"),
    function(...) {
        options(languageserver.default_linters = lintr::with_defaults(
            line_length_linter = lintr::line_length_linter(120),
            object_snake_case_linter = NULL, object_camel_case_linter = NULL
        ))
    }
)
