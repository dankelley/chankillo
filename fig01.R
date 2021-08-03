d <- read.csv(file="chankillo_map_imageDigitizer.dat", skip=9, header=TRUE)
x <- d$x + 804e3
y <- d$y + 9641e3

# Declinations from paper
solstices <- c(23.75, -23.75) # June Dec
Sin <- function(x) sin(x * pi / 180)
Cos <- function(x) cos(x * pi / 180)
par(mar=c(3,3,1,1), mgp=c(2,0.7,0))
plot(x, y, asp=1, pch=d$pch, xlab="Easting [m]", ylab="Northing [m]")
grid()

Wobs <- c(x[d$pch == 2], y[d$pch == 2])
text(Wobs[1], Wobs[2], "W", pos=1)
Eobs <- c(x[d$pch == 25], y[d$pch == 25])
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

