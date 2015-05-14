shinyUI(pageWithSidebar(
  headerPanel("Email: Spam or Not Spam"),
  sidebarPanel(
    h3('Input the frequency of character / words. Type the number: 0 - 5 in the textbox.'),
    
    textInput(inputId="i_charDollar", label = "Character: Dollar -- e.g. 0.055"),
    textInput(inputId="i_remove", label = "Word: remove -- e.g. 0.055"),
    textInput(inputId="i_hp", label = "Word: hp -- e.g. 0.405"),
    textInput(inputId="i_charExclamation", label = "Charcter: Exclamation -- e.g. 0.23"),
    textInput(inputId="i_edu", label = "Word: edu -- e.g. 0.2"),
    textInput(inputId="i_capitalAve", label = "Avg of capital letters in email -- e.g. 2.7")
    
  ),
  mainPanel(
    h3('Your Input: '),
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

    h3('Output Result: '), 
    textOutput('text1')
  )
))