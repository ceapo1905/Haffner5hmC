# Defining the survival.plot function for plotting survival curves
survival.plot <- function(x, title, position = "topright", levels, ...){
        plot(x, cex = 2, main = title, cex.main = 1.75,
             xlab = "Follow-Up (Months)", ylab = "Survival Function", cex.lab = 1.5,
             col =c(1,2,4), mark = c(2,0,5), lty = c(2,1,3))
        legend(x = position, legend = levels, pch = c(2,0,5), lty = c(2,1,3),
               col = c(1,2,4), bty = "n", cex = 1.25)
}
# x = must be a survival object
# title = corresponds to the plot's main title
# p = corresponds to the P value from comparing the curves
# position = corresponds to the legend position
# levels = corresponds to the curves denomination for the legend
# ... = additional arguments to be passed