library(shiny)
pkgs <- c("rmarkdown", "tinytex")
if ( any(miss_pkgs <- !pkgs %in% installed.packages()) ) {
  stop("must install ", paste0(pkgs[miss_pkgs], collapse = ", "), " first.")
}

function(input, output, session) {
  output$word <- downloadHandler(
    filename = function() "sample.docx",
    content = function(filename) {
      rmarkdown::render("test-word.Rmd", output_file = filename)
    }
  )

  output$pdf <- downloadHandler(
    filename = function() "sample.pdf",
    content = function(filename) {
      rmarkdown::render("test-pdf.Rmd", output_file = filename)
    }
  )
}