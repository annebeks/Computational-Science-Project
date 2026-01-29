# Assuming survival rate decays exponentially with time, 
# survival rate after more than t years since AIDS diagnosis,
# can be calculated as follows:

# Survival rate:
y = c(100,48, 26, 18)
# Time in years
t = c(0,2,4,6)
# Fit y = c*exp(-k*t)
fit = lm(log(y)~t, data=data.frame(y,t))
coeffs = coefficients(fit)
c = exp(coeffs[1])
k  = -coeffs[2]
t_smooth = seq(-2,12,0.1)

plot(t,y,xlim=c(0,10), ylab = "survival rate (%)", xlab = "time (years)", 
     ylim = c(0,100), main="Survival rate of AIDS patients that do not recieve ART with exponential decay fit")
lines(t_smooth, c*exp(-k*t_smooth), col = "red", lwd = 2)
cat("c = ", c, " k = ", k)
legend("topright", legend = c("survival rate = 91.82*exp(-0.29*time)"), col ="red", lwd = c(2))
# # # Survival rate for AIDS patients that take ART is higher, but was not used in the model.
# # # Instead, it was assumed that AIDS patients will receive ART, but wrongfully it is assumed they have 
# # # the same survival rate as AIDS patients that do not receive ART.
# # # This was a mistake, and these AIDS patients should have received the survival rate that corresponded with their treatment,
# # # and AIDS patients not taking ART should have been included as possibility as well.