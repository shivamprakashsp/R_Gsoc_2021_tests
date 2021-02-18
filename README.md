# R_Gsoc_2021_tests

## directlabels improvements


### Easy Test:-
R file with code - [test1.r](https://github.com/shivamprakashsp/R_Gsoc_2021_tests/blob/main/Easy/test1.r)

####                                    ggplot vs directlabes
<img src="https://github.com/shivamprakashsp/R_Gsoc_2021_tests/blob/main/Easy/ggplot_vs_directlabels.png" width="600" height="400">

### Medium Test:-

#### Installation


Package's Github url 
https://github.com/shivamprakashsp/legend.position

```
install_github(repo ="shivamprakashsp/legend.position")
```


###### Code snippet from the package

```R
legend.position <- function(position)
{
        pos_x_y <- switch(position,
                       'bottom right' = c(x=0.95, y=0.1),
                       'right bottom' = c(x=0.95, y=0.1),
                       'bottom' = c(x=0.5, y=0.1),
                       'bottom left' = c(x=0.04, y=0.1),
                       'left bottom' = c(x=0, y=0.1),
                       'left' = c(x=0.04, y=0.5),
                       'top left' = c(x=0.04, y=0.9),
                       'left top' = c(x=0.04, y=0.9),
                       'top' = c(x=0.5, y=0.9),
                       'top right' = c(x=0.95, y=0.9),
                       'right top' = c(x=0.95, y=0.9),
                       'right' = c(x=0.95, y=0.5),
                       'center' = c(x=0.5, y=0.5)
        )
        return(theme(legend.position = pos_x_y))
```

#### Plot with the custom legend positioning method

<img src="https://github.com/shivamprakashsp/R_Gsoc_2021_tests/blob/main/Medium/legend_right_top.png" width="550" height="400">







