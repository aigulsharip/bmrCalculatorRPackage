#' Calculate Total Daily Energy Expenditure (TDEE)
#'
#' This function calculates TDEE based on BMR and activity level.
#'
#' @param weight Weight in kg.
#' @param height Height in cm.
#' @param age Age in years.
#' @param gender "male" or "female".
#' @param activity_level Activity level: "sedentary", "light", "moderate", "active", or "very active".
#' @return The TDEE value in kcal/day.
#' @examples
#' tdee(70, 175, 25, "male", "moderate")
#' @export
tdee <- function(weight, height, age, gender, activity_level) {
  bmr_value <- bmr(weight, height, age, gender)

  activity_factors <- c(
    sedentary = 1.2,
    light = 1.375,
    moderate = 1.55,
    active = 1.725,
    very_active = 1.9
  )

  if (!activity_level %in% names(activity_factors)) {
    stop("Invalid activity level. Choose from: sedentary, light, moderate, active, very active.")
  }

  return(bmr_value * activity_factors[activity_level])
}

tdee(70, 175, 25, "male", "moderate")
