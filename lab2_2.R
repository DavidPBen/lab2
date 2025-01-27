library(tseries)



# Cargar el dataset
data("nottem")

# Inspeccionar la estructura
print(class(nottem))
print(summary(nottem))

# Graficar la serie temporal
plot(nottem, main = "Temperaturas Mensuales en Nottingham (1920-1939)",
     xlab = "Año", ylab = "Temperatura", col = "blue")

decomposed_nottem <- decompose(nottem)
plot(decomposed_nottem)

acf(nottem)
pacf(nottem)

adf <- adf.test(nottem)
print(adf)

nottem_diff <- diff(nottem)
plot(nottem_diff, col = "red")
adf <- adf.test(nottem_diff)
print(adf)

boxplot(nottem, col= "blue")





