library(shiny)

shinyUI(fluidPage(
        headerPanel("Basic Regression App"),
        sidebarLayout(
                sidebarPanel(
                helpText("This is an App on the sampling of normal distributions and the linear regression on a kind of functions"),        
                br(),
               helpText("Step 1: Sampling Normal Distribution"),
                sliderInput("obs","Number of observations:",
                            min=1,max=600,value=10,step=1),
                sliderInput("meanvalue1", "Mean of the distribution:",
                          min=-300,max=300,value=1,step=0.05),
                sliderInput("deviavalue1","Deviation of the distribution:",
                           min=0,max=300,value=1,step=0.05),
               
               
               
                submitButton('Submit'),
                br(),
               
               helpText("Step 2: Linear Regression"),
               helpText("We generate a sequence of numbers by the two functions: x is a list of
                        random numbers generated from Step1, and the predict numer is another sequence of y generated
                        by y= coef1*x+coef2*sin(x), where 'coef1' and 'coef2' are the coefficients."),
               
               sliderInput("coef1","The first coefficient:",
                           min=-100,max=100,value=10,step=0.5),
               sliderInput("coef2","The second coefficient:",
                           min=-100,max=100,value=10,step=0.5),
               submitButton('Submit'),
                        
                        br(),
                        br(),
                        img(src = "bigorb.png", height = 72, width = 72),
                        "shiny is a product of ", 
                        span("RStudio", style = "color:blue")
                ),
        mainPanel(
                 h3('The histogram of sampling distribution:'),
                 plotOutput("normaldis"),
                
                h3('The regression graph'),
                plotOutput("normalgraph")
                )
        )
        )
        
)
