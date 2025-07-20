data(airquality) #loading package
ozone_level <- airquality[1, "Ozone"] # assigning variable to avoid repeating
if (is.na(ozone_level)) {
  print("Ozone reading is missing")
} else if (ozone_level < 30) {
  print("Low ozone level")
} else if (ozone_level > 100) {
  print("Moderate ozone level")
} else {
  print("High ozone level")
}