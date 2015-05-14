library(shiny)
library(kernlab)
library(lattice)


data("spam")
index <- 1:nrow(spam)

set.seed(313)

testindex <- sample(index, trunc(length(index)/3))
testset <- spam[testindex,]
trainingset <- spam[-testindex,]
library(e1071)
model <- svm(type ~ ., data = trainingset, 
method = "C-classification", kernel = "radial", cost = 10, gamma = 0.1)
pred <- predict(model, testset)


shinyServer(
  function(input, output, session) {
    
    d_charDollar <- reactive({  
         dataset <- as.numeric(input$i_charDollar)  
    })
    d_remove <- reactive({  
         dataset <- as.numeric(input$i_remove)  
    })
    d_hp <- reactive({  
         dataset <- as.numeric(input$i_hp)  
    })    
    d_charExclamation <- reactive({  
         dataset <- as.numeric(input$i_charExclamation)  
    })
    d_edu <- reactive({  
         dataset <- as.numeric(input$i_edu)  
    })
    d_capitalAve <- reactive({  
         dataset <- as.numeric(input$i_capitalAve)  
    })


    output$i_charDollar <- renderText({input$i_charDollar})
    output$i_remove <- renderText({input$i_remove})
    output$i_hp <- renderText({input$i_hp})
    output$i_charExclamation <- renderText({input$i_charExclamation})
    output$i_edu <- renderText({input$i_edu})
    output$i_capitalAve <- renderText({input$i_capitalAve})

    output$text1 <- renderText({
      d_charDollar_o <- d_charDollar()
      d_remove_o <- d_remove()
      d_hp_o <- d_hp()
      d_charExclamation_o <- d_charExclamation()
      d_edu_o <- d_edu()
      d_capitalAve_o <- d_capitalAve()
      
      n <- matrix(
        c(0,0,0,0,0,0,d_charDollar_o,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,d_remove_o,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,d_hp_o,0,0,0,0,0,d_charExclamation_o,d_edu_o,0,d_capitalAve_o,0,0,1),nrow=1,ncol=58)
      
      colnames(n) <- c("make","address","all","num3d","our","over","remove","internet","order","mail","receive","will","people","report","addresses","free", "business","email","you","credit","your","font","num000","money","hp","hpl","george","num650","lab","labs","telnet","num857","data", "num415","num85","technology","num1999","parts","pm","direct","cs","meeting","original","project","re","edu","table","conference","charSemicolon","charRoundbracket","charSquarebracket","charExclamation","charDollar","charHash","capitalAve","capitalLong","capitalTotal", "ProbID")

        sample <- as.data.frame(n)
        result <- predict(model,newdata=sample)
        d <- data.frame(Predictions = result)
        paste(d$Predictions)
    })
  }
)