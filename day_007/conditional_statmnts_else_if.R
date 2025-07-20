if (is.na(airquality[1, "Ozone"])) {
  print("Ozone reading is missing")
} else if (airquality[1, "Ozone"] > 30) {
  print("Low Ozone level")
} else if (airquality[1, "Ozone"] < 100) {
  print("Moderate Ozone level")
} else {
  print("High Ozone level")
}
