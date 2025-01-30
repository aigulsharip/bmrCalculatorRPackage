test_that("bmr function works correctly", {
  expect_equal(bmr(70, 175, 25, "male"), 1673.750)
  expect_equal(bmr(60, 160, 30, "female"), 1289.0)
  expect_error(bmr("seventy", 175, 25, "male"), "Weight, height, and age must be numeric.")
  expect_error(bmr(70, 175, 25, "other"), "Gender must be 'male' or 'female'.")
})
