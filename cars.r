library(stats)
data(mtcars)
mtcars$cyl <- as.factor(mtcars$cyl)
mtcars$am <- as.factor(mtcars$am)
model <- lm(mpg ~ am + disp + hp + cyl + qsec + carb , mtcars)

final_model <- step(model)
summary(final_model)
