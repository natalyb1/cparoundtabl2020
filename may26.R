# ------------------- CPA 2020 -------------------------------------

# --------------- Comparing sample planning strategies: Moving beyond
# ----------------traditional power analysis in research
# Nataly Beribisky
# Dr. Robert Cribbie 


#------------ Traditional a priori power analysis ----------------
# Two group independent samples t-test
# MMES: d = 0.30
# power: 1-β = 0.95
# Type I error rate: α = 0.01
install.packages("pwr")
library(pwr)


pwr.t.test(d = .30, sig.level = .01, power = .950, 
           type = "two.sample")


#------------ Precision-based power analysis ----------------
# Two group independent samples t-test
# Assume type I error rate of .05
# Desired confidence interval width: (full width = 4 points on given measure)
# pooled standard deviation: 20 (past research)

# This is a function - do not change!
prec_t_test_2grp <- function(full_width, pooled_sd) {
  n <- 2/(full_width/(4*pooled_sd))^2
  Note <- "n is participants per group"
  warning("alpha level assumed to be .05")
  structure(list(n = n, full_width = full_width, pooled_sd = pooled_sd,
                 NOTE = Note))
 
}
# end of function

prec_t_test_2grp(full_width = 4, pooled_sd = 20)








