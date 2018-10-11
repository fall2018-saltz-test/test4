
readStates<- function(states)
{
    
    states <- states[-1,]
    
    num.row <- nrow(states)
    states <- states[-num.row,]
    
    states <- states[,-1:-4]
    states <- states[-53,]
    colnames(states)<-c("stateName","population","popOver18","percentOver18")   
    
    return(states)    

    
}
cleanCensus <- readStates(raw_data)
str(cleanCensus)
clean_data <- cleanCensus

txt <- lm(DIVISION, data = raw_data)
