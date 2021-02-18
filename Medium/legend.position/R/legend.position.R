#' @title Custom Positioning method for ggplot2
#'
#' @description This package simplifies legend positioning in ggplot. Position the legend using simple keywords like 'top','bottom' etc.
#'
#'
#' @param position ='right bottom','bottom','bottom left','left bottom','left','top left','left top','top' ,'top right','right top','right','center'

#'
#' @return theme(legend.position(x,y))
#'
#' @examples ggplot_object + legend.position('top-left')
#'
#' @export
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
}
