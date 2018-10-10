
#install.packages
library(ggplot2)

library(dplyr)
df<- final_data
#str(df)
df$NumMurder <- as.integer(df$Murder*df$population/100000)
#str(df)

#str(df1)
#barchart 
barNumMurder1 <- ggplot(df,aes(x=stateName,y=NumMurder))
