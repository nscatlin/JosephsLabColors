library(devtools)
install_github("https://github.com/nscatlin/JosephsLabColors.git")
library(JosephsLabColors)
names(josephs_palettes)


# Let's see some plots with the Josephs Lab color palette

library("ggplot2")
ggplot(mtcars, aes(factor(cyl), fill=factor(vs))) +  geom_bar() +
  scale_fill_manual(values = josephs_palette("josephs_true"))


ggplot(mtcars, aes(factor(cyl), fill=factor(vs))) +  geom_bar() +
  scale_fill_manual(values = josephs_palette("josephs_colorblind"))



cylGear<-table(mtcars$cyl,mtcars$gear)
View(cylGear)

xVal<-c("Type 3", "Type 4","Type 5")
# Create the bar chart
barplot(cylGear, main = "Distribution of Gears vs Cyclinders", names.arg = xVal, xlab = "Gear Types", ylab = "Frequency", col = josephs_palette("josephs_true"))
# Add the legend to the chart
legend("topright", rownames(cylGear), cex = 1.3, fill = josephs_palette("josephs_true"))
