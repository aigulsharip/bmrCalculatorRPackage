#This script for pipeline fr R package for calculating Basel Metabolic Rate
#Create the package structure
# Step 1: Create the Package Structure

install.packages("usethis")
usethis::create_package("bmrCalculator")

#Step 2: Define the BMR Calculation Function
#bmr function in R/bmr.R file

#Step 3: Document the Function
install.packages("devtools")
devtools::document()


#Step 4: Add Unit Tests
install.packages("testthat")
usethis::use_testthat()

#Create a test file inside tests/testthat/test-bmr.R

#Run tests
devtools::test()


#Step 5: Install and Use the Package
devtools::install()

#Usage of package
library(bmrCalculator)
bmr(70, 175, 25, "male")

# Step 6: Add Total Daily Energy Expenditure (TDEE) Calculation
# Total Daily Energy Expenditure (TDEE) based on activity levels.
#tdee function in R/tdee.R file


#Step 7: Publish the Package via CRAN submission
devtools::check()
devtools::build()

usethis::use_git_config(user.name = "aigulsharip", user.email = "aigul.sharip@nu.edu.kz")
usethis::use_git()



