
#installing and importing custom legend positioning method
install_github(repo ="shivamprakashsp/legend.position")
library(legend.position)
# import ggplot2
library(ggplot2)

##using the same dataset and making the same plot as done for the EASY_test with custom legend positioning.

library(datasets)
data(airquality)


head(airquality)
str(airquality)


airquality$Month<- as.factor(airquality$Month)
p<-ggplot(data=airquality,aes(x=Wind,y=Month))+geom_boxplot()
p

airquality_trimmed <- airquality[which(airquality$Month == 5 |
                                               airquality$Month == 6 |
                                               airquality$Month == 7), ]
airquality_trimmed$Month.f <- factor(airquality_trimmed$Month,
                                     labels = c("May", "June", "July"))
## Drawing the graph with ggplot with custom "legend.position" function and visualizing the result.

plot_ggplot<-ggplot(airquality_trimmed, aes(x = Ozone, color = Month.f)) +
        geom_density(position="identity", alpha=0.6)

##This custom legend function takes argument position which can be top,bottom,left,right,top-left,top-right,left-top etc
##This is useful because instead of just supporting 4 directions (theme(legend.position)) ,it supports 8 directions 

plot_ggplot + legend.position("left top")
