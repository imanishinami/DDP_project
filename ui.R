shinyUI(pageWithSidebar(
  headerPanel("Email: Spam or Not Spam"),
  sidebarPanel(
    h3('Input the frequency of character / words. Type the number: 0 - 5 in the textbox.'),
    
    textInput(inputId="i_charDollar", label = "Character: Dollar -- e.g. 0.055"),
    textInput(inputId="i_remove", label = "Word: remove -- e.g. 0.055"),
    textInput(inputId="i_hp", label = "Word: hp -- e.g. 0.405"),
    textInput(inputId="i_charExclamation", label = "Charcter: Exclamation -- e.g. 0.23"),
    textInput(inputId="i_edu", label = "Word: edu -- e.g. 0.2"),
    textInput(inputId="i_capitalAve", label = "Avg no of capital letters -- e.g. 2.7")
    
  ),
  mainPanel(
    h3('Your Input: '),
    p('Char Dollar'),
    textOutput('i_charDollar'),
    p('Word remove'),
    textOutput('i_remove'),
    p('Word hp'),
    textOutput('i_hp'),
    p('Char Exclamation'),
    textOutput('i_charExclamation'),
    p('Word edu'),
    textOutput('i_edu'),
    p('Avg no of Capital letter'),
    textOutput('i_capitalAve'),

    h3('Output Result: '), 
    textOutput('text1')
  )
))