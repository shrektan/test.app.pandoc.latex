library(shiny)

basicPage(
  downloadLink("word", label = "word"),
  downloadLink("pdf", label = "pdf"),
  verbatimTextOutput("result")
)
