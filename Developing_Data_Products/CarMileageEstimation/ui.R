shinyUI(pageWithSidebar(
  headerPanel("Car Mileage Estimator"),
  sidebarPanel(
          numericInput("weight", "Weight of the car in pounds:", 1600)  ,
        radioButtons("transType", "Transmission Type",
                     choices = list("Automatic" = "Automatic", "Manual" = "Manual"), 
                     selected = "Manual"),
        sliderInput('qsec', 'Number of seconds to cover quarter of mile'
                    ,value = 30, min = 5, max = 90, step = 1),
        submitButton('Submit')
        ),
  mainPanel(
           verbatimTextOutput("am"),
            verbatimTextOutput("wt"),
           verbatimTextOutput("qsec"),
           verbatimTextOutput("predictedValue"),
           br(),
           br(),
           strong("Note: "),
           p("This application is based on a prediction model built using data collected by Motor Trend magazine on 1970 model cars."),
           br(),
           p("The model has determined that the transmision type, weight of the car and the time in seconds it takes the car to cover first quarter of a mile can provide the right estimate for the Miles/Gallon. The model accuracy is estimated at 85%"),
           br(),
           p("Input paremeters:"),
           p("1. Weight of the car in pounds"),
           p("2. Transmission type - choose Automatic or Manual"),
           p("3. Time taken to cover quarter of a mile in seconds"),
           br(),
           strong("Outcome:"),
           p("Miles per Gallon")
           
           

  )
))
