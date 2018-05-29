library(shiny)

fluidPage(
  tabsetPanel(
    tabPanel(
      "reports",
      downloadLink("word", label = "word"),
      downloadLink("pdf", label = "pdf"),
      verbatimTextOutput("result")
    ),
    tabPanel(
      "run code",
      column(
        6,
        textAreaInput("code", "code", width = "100%", rows = 10),
        actionButton("run", "run")
      ),
      column(
        6,
        verbatimTextOutput("result2")
      )
    )
  )
)
