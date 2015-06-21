library(UsingR)
library(DT)
shinyServer(
        function(input, output) {

                am <- reactive ({          
                        am <- data.frame(if (input$transType == "Automatic") ("Auto") else ("Manual"))
                        am
                })
                
                wt <- reactive ({          
                        wt <- input$weight/1000
                        wt
                })
                qsec <- reactive ({ 
                        qsec <- input$qsec
                        qsec
                })        
                
                predictedValue  <-  reactive ({
                        
                        if (exists("inData")) rm ("inData")
                        
                        inData <- as.data.frame(cbind( am ()
                                                    , wt ()
                                                    , qsec ()
                        ))
                         names(inData) <- c("am", "wt", "qsec")
                         modelA <- readRDS("modelA.Rds")
                         mpg <- predict(modelA, newdata=as.data.frame(inData)) 
                         round(mpg,2)
                })
                
                 output$am <- renderText({ paste("Transmission Type:", (am())[1,1] ) }) 
                 output$wt <- renderText({ paste("Weight of the car (lb):", as.numeric(wt())*1000 ) }) 
                 output$qsec <- renderText({ paste("No of seconds to cover quarter mile:", qsec() ) })
                
                 output$predictedValue <- renderText({ paste("Predicted Miles/Gallon:", predictedValue()) })
                
        }
)
