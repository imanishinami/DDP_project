shinyUI(pageWithSidebar(
  headerPanel("Email: Spam or Not Spam"),
  sidebarPanel(
    textInput(inputId="i_charDollar", label = "Input charDollar (0 - 1): e.g. 0.055"),
    textInput(inputId="i_remove", label = "Input remove (0 - 1): e.g. 0.055"),
    textInput(inputId="i_hp", label = "Input hp (0 - 1): e.g. 0.405"),
    textInput(inputId="i_charExclamation", label = "Input charExclamation (0 - 1): e.g. 0.23"),
    textInput(inputId="i_edu", label = "Input edu (0 - 1): e.g. 0.2"),
    textInput(inputId="i_capitalAve", label = "Input capitalAve (0 - 5): e.g. 2.7")
    
  ),
  mainPanel(
    p('Output charDollar'),
    textOutput('i_charDollar'),
    p('Output remove'),
    textOutput('i_remove'),
    p('Output hp'),
    textOutput('i_hp'),
    p('Output charExclamation'),
    textOutput('i_charExclamation'),
    p('Output edu'),
    textOutput('i_edu'),
    p('Output capitalAve'),
    textOutput('i_capitalAve'),

    p('Output Result'),
    textOutput('text1')
  )
))