# Loading dataset
usedcars <- read.csv("usedcars.csv")
View(usedcars)

# Constructing 5 vectors
car_make <- usedcars$manufacturer_name
car_year <- usedcars$year_produced
car_mileage <- usedcars$mileage
car_color <- usedcars$color
car_transmission <- usedcars$transmission

# Showing types of all vectors
typeof(car_make)
typeof(car_year)
typeof(car_mileage)
typeof(car_color)
typeof(car_transmission)

# Constructing car_favorite 
car_favorite <- factor(car_transmission)
print(is.factor(car_favorite))
car_favorite <- factor(car_transmission, levels = c("automatic", "manual"))
print(car_favorite)

# Creating lists that contain all five vectors and rename vectors
car1 <- list(
  car_make = car_make[1],
  car_year = car_year[1],
  car_mileage = car_mileage[1],
  car_color = car_color[1],
  car_transmission = car_transmission[1])
print(car1)

# Accessing second and last vectors using the names in the vector
car1[c("car_year", "car_transmission")]
car1

# Creating DataFrame for new car_dataset for car1
car_dataset <- data.frame(car1, stringsAsFactors = FALSE)
