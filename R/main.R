#' Get the test app's directory
#'
#' @export
app_dir <- function() {
  system.file("test-app", "test.app.pandoc.latex")
}
