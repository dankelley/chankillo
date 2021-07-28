# Declinations from paper
solstices <- c(23.75, -23.75) # June Dec
Sin <- function(x) sin(x * pi / 180)
Cos <- function(x) cos(x * pi / 180)

# 1.dat holds the data.  I cannot read the y scale, but the first point I
# clicked wasa at 8941600, and it is reasonable to assume they have 1:1 scaling
# here.  Thus
d <- read.csv("1.dat", skip=7, header=TRUE)
x_axis_device <- c(0.145531780748912, 0.783126481392956)
x_axis_user <- c(804200, 804900)
mx <- lm(x_axis_user ~ x_axis_device)
scale <- coef(mx)[[2]]
y <- 8941600 + scale * (d$devicey - 0.404888590583806)
x <- d$x
plot(x, y, asp=1, pch=d$code, xlab="Easting [m]", ylab="Northing [m]")
grid()

Wobs <- c(x[d$code == 1], y[d$code == 1])
text(Wobs[1], Wobs[2], "W", pos=1)
Eobs <- c(x[d$code == 2], y[d$code == 2])
text(Eobs[1], Eobs[2], "E", pos=1)


L <- 900 # metres
# June solstice viewed from Western observation point
lines(Wobs[1] + c(0, L * Cos(solstices[1])), 
      Wobs[2] + c(0, L * Sin(solstices[1])), col=2) 
# Dec solstice viewed from Western observation point
lines(Wobs[1] + c(0, L * Cos(solstices[2])), 
      Wobs[2] + c(0, L * Sin(solstices[2])), col=4) 
# June solstice viewed from Eastern observation point
lines(Eobs[1] + c(0, L * Cos(180+solstices[1])), 
      Eobs[2] + c(0, L * Sin(180+solstices[1])), col=4) 
# Dec solstice viewed from Eastern observation point
lines(Eobs[1] + c(0, L * Cos(180+solstices[2])), 
      Eobs[2] + c(0, L * Sin(180+solstices[2])), col=2) 

