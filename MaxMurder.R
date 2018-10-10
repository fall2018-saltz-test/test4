
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
barNumMurder1 <- barNumMurder1 + geom_col()
barNumMurder1 <- barNumMurder1 + theme(axis.text.x = element_text(angle = 90))
barNumMurder1 <- barNumMurder1 + ggtitle(“Total Murders”)
