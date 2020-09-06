# Helper functions from bookdown and rticles -----------------------------------
# copied from https://github.com/atlas-aai/ratlas/


find_resource <- function(template, file) {
  find_file(template, file.path("resources", file))
}

reschola_file <- function(...) {
  system.file(..., package = "mtaux", mustWork = TRUE)
}
