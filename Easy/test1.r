# import and load airquality dataset
library(datasets)
data(airquality)
# import ggplot2
library(ggplot2)

##Here I will work towards creating a density plot of Ozone levels in Month of MAY,JUNE AND JULY

##Step -1 -> Some data preprocessing to get the months and Ozone levels mentioned above.
airquality_trimmed <- airquality[which(airquality$Month == 5 |
                                               airquality$Month == 6 |
                                               airquality$Month == 7), ]
airquality_trimmed$Month.f <- factor(airquality_trimmed$Month,
                                     labels = c("May", "June", "July"))
## Drawing the graph with ggplot and visualizing the result .

plot_ggplot<-ggplot(airquality_trimmed, aes(x = Ozone, color = Month.f)) +
        geom_density(position="identity", alpha=0.6)        

plot_ggplot

## observation- The graph looks fine but the legend is not simple to read and bit confusing.

## Drawing the same graph with direct labels 
## installing the packages required and importing
install.packages("directlabels")
library(lattice)
library(directlabels)
##drawing the graph
plot_directlabels<-direct.label(qplot(Ozone,data=airquality_trimmed,colour=Month.f,geom="density"))
plot_directlabels
##observation - The graph looks asthetically more pleasing due to clearer legends which are easy to read.


## Drawing the above graphs side by side for better comparision
library(gridExtra)
library(grid)

grid.arrange(plot_ggplot,plot_directlabels,ncol=2) ##Both graphs arranged side by side

