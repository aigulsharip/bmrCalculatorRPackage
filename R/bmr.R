#' Calculate Basal Metabolic Rate (BMR)
#'
#' This function calculates BMR using the Mifflin-St Jeor equation.
#'
#' @param weight Weight in kilograms.
#' @param height Height in centimeters.
#' @param age Age in years.
#' @param gender "male" or "female".
#' @return The BMR value in kcal/day.
#' @examples
#' bmr(70, 175, 25, "male")
#' @export
bmr <- function(weight, height, age, gender) {
  if (!is.numeric(weight) || !is.numeric(height) || !is.numeric(age)) {
    stop("Weight, height, and age must be numeric.")
  }
  if (!gender %in% c("male", "female")) {
    stop("Gender must be 'male' or 'female'.")
  }

  if (gender == "male") {
    return(10 * weight + 6.25 * height - 5 * age + 5)
  } else {
    return(10 * weight + 6.25 * height - 5 * age - 161)
  }
}



