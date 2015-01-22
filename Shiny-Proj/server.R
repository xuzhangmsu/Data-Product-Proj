

shinyServer(function(input, output) {
        trialInput<-reactive(function(){
                obs<-input$obs
                meanvalue1<-input$meanvalue1
                deviavalue1<-input$deviavalue1
                trials<-rnorm(obs,meanvalue1,deviavalue1)
        
                })
        
        output$normaldis<-renderPlot({
                x<-trialInput()
                print({hist(x)})  
        })
        
        
        
        output$normalgraph<-renderPlot({
                x<-trialInput()
                
                y<-input$coef1*x+input$coef2*sin(x)
                print({plot(x,y,col="blue",cex=1.1,pch=21,frame=FALSE)},{abline(lm(y~x),lwd=2,col="red")})
        }) 
        
})


