# wide to long
dta_push_long <- reshape(dta_push,
                         varying = c("UpperRight", "LowerRight", "UpperMiddle",
                                     "LowerLeft", "UpperLeft"),
                         v.names = "Pressure", direction = "long")
dta_push_long$time <- as.factor(dta_push_long$time) 
levels(dta_push_long$time) <- c("UpperRight", "LowerRight", "UpperMiddle",
                                "LowerLeft", "UpperLeft")
names(dta_push_long) <- c("Angle", "Location", "Pressure", "id")
