# Leibnitz formula for pi
leibnitz_pi <- function(n = 10) {
  stopifnot(is.numeric(n))
  stopifnot(n > 0)
  est <- 1
  for (i in seq(length = n)) {
    est <- est + (-1) ^ i / (2 * i + 1)
  }
  pi_est <- 4 * est
  rslt <- list(pi_est = pi_est, n = n)
  class(rslt) <- c("leibnitz_pi", "est_pi", class(rslt))
  return(rslt)
}
# Implement generic print method for leibnitz_pi
print.leibnitz_pi <- function(x, ...) {
  cat(x$pi_est, "(from the Leibnitz formula)\n")
}

print(leibnitz_pi(99))
# methods("print")[grep("leibnitz", methods("print"))]

# Implement a generic method for getting estimated π
estpi <- function(x, ...) {
  UseMethod("estpi", x)
}
estpi.leibnitz_pi <- function(x, ...) {
  x$pi_est
}
estpi(leibnitz_pi(99))

