# bmrCalculatorRPackage

## 📌 Overview
`bmrCalculatorRPackage` is an R package that provides functions to calculate **Basal Metabolic Rate (BMR)** and **Total Daily Energy Expenditure (TDEE)** based on user inputs such as weight, height, age, gender, and activity level.

---

## 📥 Installation
To install the package directly from GitHub, use:
```r
# Install devtools if not already installed
install.packages("devtools")

# Install bmrCalculatorRPackage from GitHub
devtools::install_github("aigulsharip/bmrCalculatorRPackage")

# Load library
library(bmrCalculatorRPackage)
```

⚡ Functions
1️⃣ bmr() - Calculate Basal Metabolic Rate
![image](https://github.com/user-attachments/assets/5f686a4c-57e6-4e21-b39f-f7e04dc297dd)

Usage
```r
bmr(weight, height, age, gender)
```
Example
```r
bmr(70, 175, 25, "male")  # Output: 1755 kcal/day
bmr(60, 160, 30, "female")  # Output: 1339 kcal/day
```

2️⃣ tdee() - Calculate Total Daily Energy Expenditure
![image](https://github.com/user-attachments/assets/65c01522-bcdb-4f50-acd5-93274c5a3081)

Usage
```r
tdee(weight, height, age, gender, activity_level)
```
Example
```r
tdee(70, 175, 25, "male", "moderate")  # Output: ~2710 kcal/day
```
