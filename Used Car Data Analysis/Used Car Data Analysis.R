#install.packages("gmodels")
library("gmodels")

# Loading and showing all numerical variables in the dataset
DealerShipUsedCars <- read.csv("DealerShipUsedCars.csv")
View(DealerShipUsedCars)
str(DealerShipUsedCars)
summary(DealerShipUsedCars)

# Showing price range of cars and the difference
summary(DealerShipUsedCars$Price)
range(DealerShipUsedCars$Price)
diff(range(DealerShipUsedCars$Price))

# Showing the number of cars with the same make
table(DealerShipUsedCars$Make)

# Using prop.table() to show the proportion of each car's make of the whole
make_table <- table(DealerShipUsedCars$Make)
make_table_prop <- prop.table(make_table) * 100
print(make_table_prop)

# Showing which car's color is the most present in the inventory
mode <- function(x, na.rm = FALSE) {
  if(na.rm){ #if na.rm is TRUE, remove NA values from input x
    x = x[!is.na(x)]
  }
  val <- unique(x)
  return(val[which.max(tabulate(match(x, val)))])
}
mode(DealerShipUsedCars$Color)

# Using CrossTable function to show how many cars from each Make have the color of (Red, Yellow, Black, Gray, White, Silver).
DealerShipUsedCars$conservative <- DealerShipUsedCars$Color %in% c("Red", "Yellow", "Black", "Gray", "White", "Silver")
CrossTable(x = DealerShipUsedCars$Make, y = DealerShipUsedCars$conservative)

# Creating scatterplot of relation between price and year of the cars
plot(x = DealerShipUsedCars$Year, y = DealerShipUsedCars$Price, main = "Used Car Price vs. Year", xlab = "Used Car Year", ylab = "Used Car Price")
