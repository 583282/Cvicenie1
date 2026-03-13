
library(palmerpenguins)
data <- penguins
data <- na.omit(data)
plot(x = data$body_mass_g, y = data$flipper_length_mm,
     main = "dependency of body mass on the flipper length",
     xlab = "body mass",
     ylab = "flipper length",
     col = as.factor(data$species),
     pch = c(15, 16, 17)[as.integer(as.factor(data$island))]
)

install.packages("ggplot2")
library(ggplot2)
ggplot(data = data, aes(x = body_mass_g, y = flipper_length_mm, color = species, shape = island)) + 
  geom_point(size = 2, alpha = 0.7) + 
  labs(title = "dependency of body mass on the flipper length",
       x = "body mass",
       y = "flipper length",
       color = "species",
       shape = "island")


