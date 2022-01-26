#Ggplot (ggplot2) library
#install.packages("ggplot2")

##Import Library
library(ggplot2)

ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+geom_point()+stat_smooth()


ggplot(midwest, aes(x=area, y=poptotal)) + geom_point()


g <- ggplot(midwest, aes(x=area, y=poptotal)) + geom_point() +
  geom_smooth(method="lm") # set se=FALSE to turnoff confidence bands
plot(g)

g1 <- g + coord_cartesian(xlim=c(0,0.1), ylim=c(0, 1000000)) # zooms in
plot(g1)
# Add Title and Labels
g1 + labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area", caption="Midwest
Demographics")
# or
g1 + ggtitle("Area Vs Population", subtitle="From midwest dataset") + xlab("Area") + ylab("Population")


ggplot(midwest, aes(x=area, y=poptotal)) +
  geom_point(col="steelblue", size=3) + # Set static color and size for points
  geom_smooth(method="lm", col="firebrick") + # change the color of line
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) +
  labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area",
       caption="Midwest Demographics")

gg <- ggplot(midwest, aes(x=area, y=poptotal)) +
  geom_point(aes(col=state), size=3) + # Set color to vary based on state categories.
  geom_smooth(method="lm", col="firebrick", size=2) +
  coord_cartesian(xlim=c(0, 0.1), ylim=c(0, 1000000)) +
  labs(title="Area Vs Population", subtitle="From midwest dataset", y="Population", x="Area",
       caption="Midwest Demographics")
plot(gg)

gg + scale_colour_brewer(palette = "Set1")