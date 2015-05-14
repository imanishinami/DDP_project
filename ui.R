shinyUI(pageWithSidebar(
  headerPanel("Email: Spam or Not Spam"),
  sidebarPanel(
    h3('Input:'),
    textInput(inputId="i_remove", label = "Word: remove -- e.g. 0.055"),
    textInput(inputId="i_hp", label = "Word: hp -- e.g. 0.405"),
    textInput(inputId="i_edu", label = "Word: edu -- e.g. 0.2"),
    textInput(inputId="i_charExclamation", label = "Charcter: Exclamation -- e.g. 0.23"),
    textInput(inputId="i_charDollar", label = "Character: Dollar -- e.g. 0.055"),
    textInput(inputId="i_capitalAve", label = "Avg no of capital letters -- e.g. 2.7")
    
  ),
  mainPanel(
    tabsetPanel(
      tabPanel("Instruction",
              withTags({
                         div( 
                              h3('Introduction:'),
                              p("This apps uses data from Spam E-mail Detabase collected at Hewlett-Packard Labs, that classifies 4601 e-mails as spam or non-spam. In addition to this class label there are 57 variables indicating the frequency of certain words and characters in the e-mail. This shiny apps allows you to enter the frequency of some variables to predict if the mail is either nonspam or spam."),
                              h3('Data:'),
                              p("The first 48 variables contain the frequency of the variable name (e.g., business) in the e-mail. If the variable name starts with num (e.g., num650) the it indicates the frequency of the corresponding number (e.g., 650). The variables 49-54 indicate the frequency of the characters such as Exclamation mark, Dollar symbol and etc. The variables 55-57 contain the average, longest and total run-length of capital letters. Variable 58 indicates the type of the mail and is either nonspam or spam, i.e. unsolicited commercial e-mail."),
                              h3('How to use:'),
                              p("Input the frequency of character / words on the side panel. Type the number: 0 - 5 in the textbox."),
                              p("For more details, please refer to:"),
                              a(href="https://github.com/imanishinami/DDP_project/blob/master/README.md","README.md on Github")

                            )
              })
      ),
      tabPanel("Result",
              h3('Your Input: '),
              p('Word remove'),
              textOutput('i_remove'),
              p('Word hp'),
              textOutput('i_hp'),
              p('Word edu'),
              textOutput('i_edu'),
              p('Char Exclamation'),
              textOutput('i_charExclamation'),
              p('Char Dollar'),
              textOutput('i_charDollar'),
              p('Avg no of Capital letter'),
              textOutput('i_capitalAve'),
              h3('Output Result: '), 
              textOutput('text1')
     )
    )
  )
))